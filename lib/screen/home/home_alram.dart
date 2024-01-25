import 'package:box_hero/screen/home/home_common/row_render_containr.dart';
import 'package:flutter/material.dart';

class HomeAlram extends StatelessWidget {
  const HomeAlram({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('재고 부족 알림', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
        RowRenderContainer(assetsSvg: 'check.svg', title: '재고 부족한 제품 확인하기', msg: '재고 부족한 제품 확인하기'),
      ],
    );
  }
}
