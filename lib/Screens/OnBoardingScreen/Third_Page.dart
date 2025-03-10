import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports_app/Shared/Colors.dart';
import 'package:sports_app/Shared/Fonts.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: AppColors.secondaryColor,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(image: AssetImage('assets/pro.png')),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Text(
                    // 'Enjoy!',
                    'We hope you enjoy using our app!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.saira(
                      fontSize: AppFonts.fontsize24,
                      fontWeight: AppFonts.fontWeight700,
                      color: AppColors.textcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } //
}
