import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/widgets/Costum_button.dart';
import 'package:netflix_clone/presentetion/widgets/video_widget.dart';


class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        children: [
          const SizedBox(
            width: 50,
            height: 520,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'FEB',
                  style: TextStyle(fontSize: 16, color: KGrey),
                ),
                Text(
                  '11',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VideoWidget(),
                kheight20,
                Row(
                  children: [
                    Image.asset(
                      'assets/images/bg-tall-girl.png',
                      width: 150,
                      color: kwhait,
                    ),
                    const Spacer(),
                    const CustomButtonWidget(
                        icon: Icons.notifications_none,
                        textSize: 12,
                        title: 'Remind Me'),
                    width,
                    const CustomButtonWidget(
                        textSize: 12, icon: Icons.info_outline, title: 'Info'),
                    width,
                  ],
                ),
                kheight,
                const Text(
                  'Coming on Friday',
                  style: TextStyle(fontSize: 17),
                ),
                kheight,
                Text(
                  'Tall Girl 2',
                  style: GoogleFonts.hammersmithOne(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kheight,
                const Text(
                  'Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence - and her relationship - into a tailspain.',
                  style: TextStyle(color: KGrey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}