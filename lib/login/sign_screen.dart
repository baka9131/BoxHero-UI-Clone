import 'package:box_hero/login/terms_of_service_agreement.dart';
import 'package:flutter/material.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final TextEditingController _emailController = TextEditingController();
  bool _isEmailValid = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // 텍스트가 입력 될때마다 실시간으로 addListener 실행 된다.
    _emailController.addListener(_onEmailChanged);
  }

  void _onEmailChanged() {
    final email = _emailController.text;

    // 정규표현식을 사용하여 이메일 형식을 검사 (내가 정규식 표현은 잘 몰라서 검색해서 찾음)
    bool isValid = RegExp(r'^[^@]+@[^@]+\.com$').hasMatch(email);
    if (isValid != _isEmailValid) {
      setState(() {
        _isEmailValid = isValid;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
              color: Colors.black,
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('이메일로 시작하기', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 10),
                  Text('사용하시는 이메일을 입력해주세요', style: TextStyle(color: Colors.grey[500] ?? Colors.grey)),
                  const SizedBox(height: 50),
                  TextField(
                    controller: _emailController,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: '이메일 주소 입력',
                      hintStyle: TextStyle(
                        color: Colors.grey[300] ?? Colors.grey,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isEmailValid ? Colors.blue : Colors.grey,
                          ),
                          onPressed: () async {
                            if (_isEmailValid) {
                              setState(() {
                                _isLoading = true;
                              });
                              await Future.delayed(const Duration(seconds: 1));
                              if (mounted) {
                                setState(() {
                                  _isLoading = false;
                                });
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TermsOfServiceAgreement()));
                              }
                            }
                          },
                          child: const Text(
                            '다음',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        _isLoading
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 100,
                    child: const Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 20),
                        Material(
                          color: Colors.white,
                          child: Text('이메일 확인 중...'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
