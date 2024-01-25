import 'package:flutter/material.dart';

class HomeAdd extends StatelessWidget {
  const HomeAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add, color: Colors.grey),
          SizedBox(width: 10),
          Text('추가 하기'),
        ],
      ),
    );
  }
}
