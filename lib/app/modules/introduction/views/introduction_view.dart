import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_furniture_shopping/app/constants/color.dart';
import 'package:ui_furniture_shopping/app/routes/app_pages.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(5.w, 28.h, 5.w, 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MAKE YOUR',
                style: GoogleFonts.gelasio(
                  color: grey,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Text(
                'HOME BEAUTIFUL',
                style: GoogleFonts.gelasio(
                  color: black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
                child: Text(
                  'The best simple place where you discover most wonderful furnitures\nand make your home beautiful',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunitoSans(
                    color: grey,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      color: black2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Get.toNamed(Routes.AUTH_LOGIN),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.gelasio(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
