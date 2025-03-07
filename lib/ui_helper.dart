import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return TextStyle(
      color: Color(0xFFF9F9FA),
      fontSize: 13,
      fontFamily: 'Inter',
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
}
