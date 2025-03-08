import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes/now_playing.dart';
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
                    style: GoogleFonts.inter(
                      color: Color(0xFFF4F7FC),
                      fontSize: 24.h,
                      
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
                  GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NowPlaying()),
                      );
                    },
                    child: Container(
                      width: 160.w,
                      height: 160.h,
                      decoration: UiHelper.getPreviewContainerDecoration(
                        Color(0xFFB548C6),
                      ),
                      padding: EdgeInsets.only(top: 39),
                      child: Image.asset(
                        "assets/images/preview1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(width: 12.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: UiHelper.getPreviewContainerDecoration(
                      Color(0xFF32A7E2),
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
                      style: UiHelper.getPreviewTitleTextStyle(),
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
                      style: UiHelper.getPreviewTitleTextStyle(),
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
                        style: UiHelper.getPreviewAuthorTextStyle(),
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
                        style: UiHelper.getPreviewAuthorTextStyle(),
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
                    decoration: UiHelper.getPreviewContainerDecoration(
                      Color(0xFFEC663B),
                    ),
                    padding: EdgeInsets.only(top: 35),
                    child: Image.asset(
                      "assets/images/preview3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    width: 160.w,
                    height: 160.h,
                    decoration: UiHelper.getPreviewContainerDecoration(
                      Color(0xFFFFBF47),
                    ),
                    padding: EdgeInsets.only(top: 30),
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
                      style: UiHelper.getPreviewTitleTextStyle(),
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
                      style: UiHelper.getPreviewTitleTextStyle(),
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
                        style: UiHelper.getPreviewAuthorTextStyle(),
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
                        style: UiHelper.getPreviewAuthorTextStyle(),
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
