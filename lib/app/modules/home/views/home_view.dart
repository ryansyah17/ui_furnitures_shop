import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_furniture_shopping/app/constants/color.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 6,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                _appbar(context),
                SizedBox(
                  height: 2.h,
                ),
                _tabbar(context),
                SizedBox(
                  height: 2.h,
                ),
                _bodyTabbar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _appbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: grey,
            size: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Make home',
              style: GoogleFonts.gelasio(
                color: grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'BEATIFUL',
              style: GoogleFonts.gelasio(
                color: black2,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: grey,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _tabbar(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      indicatorColor: black,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 2,
      unselectedLabelColor: Colors.grey,
      labelColor: black,
      labelStyle: GoogleFonts.nunitoSans(
        fontSize: 9.sp,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle:
          GoogleFonts.nunitoSans(fontSize: 9.sp, fontWeight: FontWeight.bold),
      tabs: [
        Tab(
          icon: Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/popular.png'),
              ),
            ),
          ),
          text: 'Popular',
        ),
        Tab(
          icon: Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/chair.png'),
              ),
            ),
          ),
          text: "Chair",
        ),
        Tab(
          icon: Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/table.png'),
              ),
            ),
          ),
          text: "Table",
        ),
        Tab(
          icon: Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/sofa.png'),
              ),
            ),
          ),
          text: "Sofa",
        ),
        Tab(
          icon: Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/bed.png'),
              ),
            ),
          ),
          text: "Bed",
        ),
        Tab(
          icon: Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/cabinet.png'),
              ),
            ),
          ),
          text: "CupBoard",
        ),
      ],
    );
  }

  Widget _bodyTabbar(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          _popularView(context),
          Center(child: Text('Chair')),
          Center(child: Text('Table')),
          Center(child: Text('Sofa')),
          Center(child: Text('Bed')),
          Center(child: Text('CupBoard')),
        ],
      ),
    );
  }

  Widget _popularView(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: black,
                    image: DecorationImage(
                        image: AssetImage('assets/images/lamp.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        color: grey2,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          print('Item $index added to cart');
                        },
                        icon: Image.asset(
                          'assets/images/bag.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '${index + 1}',
                style: GoogleFonts.nunitoSans(),
              ),
              Text(
                'Rp${index + 1}.000.000',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
