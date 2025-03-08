import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UiHelper {
  UiHelper._();
  static EdgeInsets getDefaultPadding() {
    // Padding ekran yönü dikey ise 12.h ,yatay ise 8.w olarak ayarlanır
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }

 static TextStyle getPodkesTextStyle(BuildContext context) {
  bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
  return TextStyle(
    color: Colors.white,
    fontSize: isLandscape ? 18.sp : 36.sp,
    fontWeight: FontWeight.w700,
    height: isLandscape ? 0.22.h : 0.44.h,
    letterSpacing: isLandscape ? 0.15 : 0.30,
  );
}


  static Size getImageSize(
    BuildContext context, {
    required double portraitWidth,
    required double portraitHeight,
    required double landscapeWidth,
    required double landscapeHeight,
  }) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Size(portraitWidth.w, portraitHeight.h);
    } else {
      return Size(landscapeWidth.w, landscapeHeight.h);
    }
  }


  static TextStyle getSliderTextStyle(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return GoogleFonts.inter(
      color: const Color(0xFFF9F9FA),
      fontSize: isLandscape ? 6.5.sp : 13.sp,
      fontWeight: FontWeight.w600,
      height: isLandscape ? 1.075.h : 2.15.h,
      letterSpacing: isLandscape ? 0.15 : 0.30,
    );
  }

  static ShapeDecoration getContainerShapeDecoration() {
    return ShapeDecoration(
      color: const Color(0xFF2F3142),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
    );
  }

  static ShapeDecoration getPreviewContainerDecoration(Color color) {
    return ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
  }

  static TextStyle getTrendingTextStyle(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return GoogleFonts.inter(
      color: const Color(0xFFF4F7FC),
      fontSize: isLandscape ? 12.sp : 24.sp,
      fontWeight: FontWeight.w700,
      height: isLandscape ? 0.585.h : 1.17.h,
    );
  }

  static TextStyle getPreviewTitleTextStyle(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return GoogleFonts.inter(
      color: const Color(0xFFF4F7FC),
      fontSize: isLandscape ? 6.5.sp : 13.sp,
      fontWeight: FontWeight.w700,
      height: isLandscape ? 0.615.h : 1.23.h,
      letterSpacing: isLandscape ? 0.15 : 0.30,
    );
  }

  static TextStyle getPreviewAuthorTextStyle(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return GoogleFonts.inter(
      color: const Color(0xFFCCCCCC),
      fontSize: isLandscape ? 5.sp : 10.sp,
      fontWeight: FontWeight.w500,
      height: isLandscape ? 0.80.h : 1.60.h,
      letterSpacing: isLandscape ? 0.15 : 0.30,
    );
  }

  static TextStyle getTimeStyle(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    return GoogleFonts.inter(
      color: const Color(0xFFF4F7FC),
      fontSize: isLandscape ? 7.sp : 14.sp,
      fontWeight: FontWeight.w500,
      height: isLandscape ? 0.57.h : 1.14.h,
      letterSpacing: isLandscape ? 0.15 : 0.30,
    );
  }
}
