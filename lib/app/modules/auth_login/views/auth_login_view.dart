import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_furniture_shopping/app/constants/color.dart';
import 'package:ui_furniture_shopping/app/routes/app_pages.dart';

import '../controllers/auth_login_controller.dart';

class AuthLoginView extends GetView<AuthLoginController> {
  const AuthLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 30.w,
                          color: black,
                          height: 0.1.h,
                        ),
                        SizedBox(
                          height: 12.h,
                          width: 12.h,
                          child: Image.asset(
                            'assets/images/register.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 30.w,
                          color: black,
                          height: 0.1.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'HELLO !',
                      style: GoogleFonts.merriweather(
                        color: grey,
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'WELCOME BACK',
                      style: GoogleFonts.merriweather(
                        color: black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                width: 90.w,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: grey,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.nunitoSans(
                              color: grey,
                              fontSize: 12.sp,
                            ),
                          ),
                          TextFormField(),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Password',
                            style: GoogleFonts.nunitoSans(
                              color: grey,
                              fontSize: 12.sp,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.visibility,
                                  color: grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Forgot Password',
                        style: GoogleFonts.nunitoSans(
                          color: black2,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        width: 35.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: black2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () => Get.toNamed(Routes.HOME),
                            child: Center(
                              child: Text(
                                'Log in',
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
                      SizedBox(
                        height: 2.h,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'SIGN UP',
                          style: GoogleFonts.nunitoSans(
                            color: black2,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
