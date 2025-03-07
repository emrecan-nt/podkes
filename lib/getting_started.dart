import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podkes/ui_helper.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      body: Padding(
        padding: UiHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(120),
                topRight: Radius.circular(120),
              ),
              
                child: Image.asset(
                  'assets/images/good-faces.png',
                  width: UiHelper.getImageSize(context).width,
                  height: UiHelper.getImageSize(context).height,
                  fit: BoxFit.fill,
                ),
              ),
            
            SizedBox(height: 40.h),
            Text("Podkes", style: UiHelper.getPodkesTextStyle()),

             SizedBox(height: 12.h),
             Text(
              "A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIndicator(false),
                 SizedBox(width: 5.w),
                buildIndicator(true),
                SizedBox(width: 5.w),
                buildIndicator(false),
              ],
            ),
             SizedBox(height: 50.h),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(16),
              ),
              child: const Icon(Icons.arrow_forward, color: Color(0xFF525298)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return Container(
      width: isActive ? 14.w : 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF515197) : Color(0xFF7B8084),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
