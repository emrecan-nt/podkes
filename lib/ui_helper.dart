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

  static TextStyle getPodkesTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 36,
      fontWeight: FontWeight.w700,
      height: 0.44,
      letterSpacing: 0.30,
    );
  }

  static Size getImageSize(
    BuildContext context, {
    double portraitWidth = 240,
    double portraitHeight = 317,
    double landscapeWidth = 130,
    double landscapeHeight = 300,
  }) {
    Orientation orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Size(portraitWidth.w, portraitHeight.h);
    } else {
      return Size(landscapeWidth.w, landscapeHeight.h);
    }
  }

  static TextStyle getSliderTextStyle() {
    return GoogleFonts.inter(
      color: Color(0xFFF9F9FA),
      fontSize: 13,
      fontWeight: FontWeight.w600,
      height: 2.15.h,
      letterSpacing: 0.30,
    );
  }

  static ShapeDecoration getContainerShapeDecoration() {
    return ShapeDecoration(
      color: Color(0xFF2F3142),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
    );
  }

  static ShapeDecoration getPreviewContainerDecoration(Color color) {
    return ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    );
  }

  static TextStyle getTrendingTextStyle() {
    return GoogleFonts.inter(
      color: Color(0xFFF4F7FC),
      fontSize: 24.h,
      fontWeight: FontWeight.w700,
      height: 1.17.h,
    );
  }

  static TextStyle getPreviewTitleTextStyle() {
    return GoogleFonts.inter(
      color: Color(0xFFF4F7FC),
      fontSize: 13.h,

      fontWeight: FontWeight.w700,
      height: 1.23.h,
      letterSpacing: 0.30,
    );
  }

  static TextStyle getPreviewAuthorTextStyle() {
    return GoogleFonts.inter(
      color: Color(0xFFCCCCCC),
      fontSize: 10,

      fontWeight: FontWeight.w500,
      height: 1.60,
      letterSpacing: 0.30,
    );
  }

  static TextStyle getTimeStyle() {
    return GoogleFonts.inter(
      color: Color(0xFFF4F7FC),
      fontSize: 14,

      fontWeight: FontWeight.w500,
      height: 1.14,
      letterSpacing: 0.30,
    );
  }
}
