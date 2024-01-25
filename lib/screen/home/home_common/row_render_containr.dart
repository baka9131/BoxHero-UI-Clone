import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RowRenderContainer extends StatelessWidget {
  final String assetsSvg;
  final String title;
  final String msg;

  const RowRenderContainer({super.key, required this.assetsSvg, required this.title, required this.msg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(msg: msg);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/$assetsSvg', width: 30),
              const SizedBox(width: 10),
              Text(title),
              const Spacer(),
              const Icon(Icons.keyboard_arrow_right_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
