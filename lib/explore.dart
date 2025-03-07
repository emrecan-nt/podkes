import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podkes/ui_helper.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1D2B),
        title: Text(
          "Podkes",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/images/drawer.png'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/Notification.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: UiHelper.getDefaultPadding(),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'search',
                  suffixIcon: IconButton(
                    icon: Image.asset('assets/images/Search.png'),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFF252836),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 59.w,
                      height: 36.h,
                      decoration: UiHelper.getContainerShapeDecoration(),
                      child: Text(
                        'All',
                        textAlign: TextAlign.center,
                        style: UiHelper.getSliderTextStyle(),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      width: 85.w,
                      height: 36.h,
                      decoration: UiHelper.getContainerShapeDecoration(),
                      child: Text(
                        'Life',
                        textAlign: TextAlign.center,
                        style: UiHelper.getSliderTextStyle(),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      width: 103.w,
                      height: 36.h,
                      decoration: UiHelper.getContainerShapeDecoration(),
                      child: Text(
                        'Comedy',
                        textAlign: TextAlign.center,
                        style: UiHelper.getSliderTextStyle(),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Container(
                      width: 103.w,
                      height: 36.h,
                      decoration: UiHelper.getContainerShapeDecoration(),
                      child: Text(
                        'Tech',
                        textAlign: TextAlign.center,
                        style: UiHelper.getSliderTextStyle(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: SizedBox(
                  width: 107.w,
                  height: 30.h,
        
                  child: Text(
                    'Trending',
                    style: TextStyle(
                      color: Color(0xFFF4F7FC),
                      fontSize: 24.h,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.17.h,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFB548C6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 39),
                    child: Image.asset(
                      "assets/images/preview1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
        
                  SizedBox(width: 12.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF32A7E2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset("assets/images/backgraund.png"),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Image.asset(
                            "assets/images/preview2.png",
        
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 158.w,
                    height: 34.h,
                    child: Text(
                      'The missing 96 percent of the universe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.23.h,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
        
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 158.w,
                    height: 34.h,
                    child: Text(
                      'How Dolly Parton led me to an epiphany',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.23.h,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 74,
                      height: 17,
                      child: Text(
                        'Claire Malone',
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: SizedBox(
                      width: 74,
                      height: 17,
                      child: Text(
                        'Abumenyang',
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEC663B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 39),
                    child: Image.asset(
                      "assets/images/preview3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFBF47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 39),
                    child: Image.asset(
                      "assets/images/preview4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 158.w,
                    height: 34.h,
                    child: Text(
                      'The missing 96 percent of the universe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.23.h,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
        
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 158.w,
                    height: 34.h,
                    child: Text(
                      'Ngobam with Denny Caknan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.h,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.23.h,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 74,
                      height: 17,
                      child: Text(
                        'Tir McDohl',
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: SizedBox(
                      width: 74,
                      height: 17,
                      child: Text(
                        'Denny Kulon',
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF252836),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Home.png'),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Library.png'),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/User.png'),
              label: 'Profile',
            ),
          ],
        ),
        
      ),
    );
  }
}
