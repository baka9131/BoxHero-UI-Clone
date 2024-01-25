import 'package:box_hero/screen/home/home_common/row_render_containr.dart';
import 'package:flutter/material.dart';

class HomeInvite extends StatelessWidget {
  const HomeInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('멤버 추가', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
        RowRenderContainer(assetsSvg: 'invite.svg', title: '우리팀에 멤버 추가하기', msg: '우리팀에 멤버 추가하기'),
      ],
    );
  }
}