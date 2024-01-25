import 'package:box_hero/screen/home/home_common/row_render_containr.dart';
import 'package:flutter/material.dart';

class HomeReg extends StatelessWidget {
  const HomeReg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('제품 등록', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
        RowRenderContainer(assetsSvg: 'barcode.svg', title: '제품 등록하기', msg: '제품 등록하기'),
        RowRenderContainer(assetsSvg: 'excel.svg', title: '엑셀 파일로 등록하기', msg: '엑셀 파일로 등록하기'),
      ],
    );
  }
}
