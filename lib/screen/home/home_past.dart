import 'package:box_hero/screen/home/home_common/row_render_containr.dart';
import 'package:flutter/material.dart';

class HomePast extends StatelessWidget {
  const HomePast({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('과거 수량 조회', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
        RowRenderContainer(assetsSvg: 'past.svg', title: '제품 과거 수량 조회하기', msg: '제품 과거 수량 조회하기'),
      ],
    );
  }
}
