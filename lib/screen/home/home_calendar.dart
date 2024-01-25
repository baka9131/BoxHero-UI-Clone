import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeCalendar extends StatelessWidget {
  HomeCalendar({super.key, required this.isNow});
  bool isNow;

  @override
  Widget build(BuildContext context) {
    String formattedDate;

    DateTime now = DateTime.now();
    if (isNow) {
      formattedDate = '${now.month}월 ${_addZero(now.day)}일';
    } else {
      formattedDate = '${now.month}월 ${_addZero(now.day - 1)}일';
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(isNow ? '오늘' : '어제', style: const TextStyle(color: Colors.white)),
            const SizedBox(width: 10),
            Text(formattedDate, style: const TextStyle(color: Colors.white38)),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _renderContainer(0, '총 재고 수', true),
            _renderContainer(0, '입고', true),
            _renderContainer(0, '출고', false),
          ],
        ),
      ],
    );
  }

  // 한자리 숫자에는 왼쪽에 0 패딩을 넣어 줍니다.
  String _addZero(int number) {
    return number.toString().padLeft(2, '0');
  }

  Widget _renderContainer(int total, String content, bool isEnd) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$total', style: const TextStyle(color: Colors.white, fontSize: 20.0)),
              const SizedBox(height: 5),
              Text(content, style: const TextStyle(color: Colors.white38, fontSize: 10.0)),
            ],
          ),
          const SizedBox(width: 50),
          if (isEnd) ...[
            Container(
              height: 50,
              width: 1.0,
              color: Colors.white.withOpacity(0.3),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
          ]
        ],
      ),
    );
  }
}
