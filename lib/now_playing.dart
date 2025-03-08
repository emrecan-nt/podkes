import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes/ui_helper.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1D2B),
        centerTitle: true,
        title: Text(
          'Now Playing',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 16.sp,

            fontWeight: FontWeight.w500,
            height: 1,
            letterSpacing: 0.30,
          ),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/ChevronLeftOutline.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: kToolbarHeight + 16.0.h,
        titleSpacing: 8.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(39.w, 64.h, 0, 0),
              child: Container(
                width: 297.w,
                height: 280.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFB548C6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                padding: EdgeInsets.only(top: 68.h),
                child: Image.asset(
                  "assets/images/preview1.png",
                  width:
                      UiHelper.getImageSize(
                        context,
                        portraitWidth: 297,
                        portraitHeight: 212,
                        landscapeWidth: 200,
                        landscapeHeight: 120,
                      ).width,
                  height:
                      UiHelper.getImageSize(
                        context,
                        portraitWidth: 297,
                        portraitHeight: 212,
                        landscapeWidth: 200,
                        landscapeHeight: 120,
                      ).height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(41.w, 24.h, 0, 0),
              child: SizedBox(
                width: 295.w,
                height: 45.h,
                child: Text(
                  'The missing 96 percent of the universe',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize:
                        MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 10.sp
                            : 20.sp,
                    fontWeight: FontWeight.w700,
                    height:
                        MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 0.60.h
                            : 1.20.h,
                    letterSpacing:
                        MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 0.15.h
                            : 0.30.h,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(41.w, 20.h, 0, 20.h),
              child: Text(
                'Claire Malone',
                style: GoogleFonts.inter(
                  color: Color(0xFFCCCCCC),
                  fontSize: 14.sp,

                  fontWeight: FontWeight.w500,
                  height: 1.14,
                  letterSpacing: 0.30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 42.w),
              child: SizedBox(
                width: 290.w,
                child: Image.asset("assets/images/fooo.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 39.w),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '24:32',
                          textAlign: TextAlign.left,
                          style: UiHelper.getTimeStyle(context),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '34:00',
                          textAlign: TextAlign.right,
                          style: UiHelper.getTimeStyle(context),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 14.w,
                  height: 14.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  child: Image.asset("assets/images/back.png"),
                ),
                SizedBox(width: 28.w),
                Container(
                  width: 56.w,
                  height: 56.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2F3142),
                    shape: OvalBorder(),
                  ),
                  child: Image.asset("assets/images/Play.png"),
                ),
                SizedBox(width: 28.w),
                Container(
                  width: 14.w,
                  height: 14.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  child: Image.asset("assets/images/Skip.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
