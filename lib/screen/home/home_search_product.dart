import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeSearchProduct extends StatelessWidget {
  const HomeSearchProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: '제품 검색 클릭');
            },
            child: Container(
              color: Colors.transparent,
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Text('제품 검색', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          width: 1.0,
          color: Colors.black.withOpacity(0.3),
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
        ),
        IconButton(
          onPressed: () {
            Fluttertoast.showToast(msg: '카메라 실행');
          },
          icon: SvgPicture.asset('assets/icons/camera.svg'),
        ),
      ],
    );
  }
}
