import 'package:box_hero/screen/home/home_add.dart';
import 'package:box_hero/screen/home/home_alram.dart';
import 'package:box_hero/screen/home/home_calendar.dart';
import 'package:box_hero/screen/home/home_in_and_out.dart';
import 'package:box_hero/screen/home/home_invite.dart';
import 'package:box_hero/screen/home/home_past.dart';
import 'package:box_hero/screen/home/home_reg.dart';
import 'package:box_hero/screen/home/home_scan.dart';
import 'package:box_hero/screen/home/home_search_product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('홈', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.swap_horizontal_circle_outlined, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(8.0),
          child: Container(color: Colors.grey[200], height: 1.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
                      child: AspectRatio(
                        aspectRatio: 3 / 1,
                        child: PageView(
                          controller: _pageController,
                          children: [
                            renderContainer(HomeCalendar(isNow: true), Colors.blue),
                            renderContainer(HomeCalendar(isNow: false), Colors.blue),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(2, (index) {
                        return AnimatedBuilder(
                          animation: _pageController,
                          builder: (context, child) {
                            // _pageController.page 값이 null인 경우 안전하게 처리 -> 첫페이지로 이동
                            bool isSelected = _pageController.hasClients && (_pageController.page?.round() ?? 0) == index;

                            return Container(
                              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
                              width: isSelected ? 12.0 : 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isSelected ? Colors.white : Colors.grey,
                              ),
                            );
                          },
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              renderContainer(const HomeSearchProduct(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomeReg(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomeInAndOut(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomeAlram(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomeScan(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomeInvite(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomePast(), Colors.white),
              const SizedBox(height: 20),
              renderContainer(const HomeAdd(), Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget renderContainer(Widget child, Color color) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      width: double.infinity,
      height: null,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: child,
      ),
    );
  }
}
