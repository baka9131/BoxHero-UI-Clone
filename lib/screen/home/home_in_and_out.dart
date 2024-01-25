import 'package:box_hero/screen/home/home_common/row_render_containr.dart';
import 'package:flutter/material.dart';

class HomeInAndOut extends StatelessWidget {
  const HomeInAndOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('입고 / 출고', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
        RowRenderContainer(assetsSvg: 'in.svg', title: '입고하기', msg: '입고하기'),
        RowRenderContainer(assetsSvg: 'out.svg', title: '출고하기', msg: '출고하기'),
        RowRenderContainer(assetsSvg: 'set.svg', title: '조정하기', msg: '조정하기'),
      ],
    );
  }
}
