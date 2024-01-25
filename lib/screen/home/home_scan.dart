import 'package:box_hero/screen/home/home_common/row_render_containr.dart';
import 'package:flutter/material.dart';

class HomeScan extends StatelessWidget {
  const HomeScan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('재고 조사', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
        RowRenderContainer(assetsSvg: 'scan.svg', title: '스캔으로 재고 조사하기', msg: '스캔으로 재고 조사하기'),
      ],
    );
  }
}