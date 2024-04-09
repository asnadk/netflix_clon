import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/widgets/Costum_button.dart';
import 'package:netflix_clone/presentetion/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheight,
          Text(
            'Friends',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight,
          Text(
            'This hit sitcom follows the merry misadventures of six 20-something pals as they navigate the pitfalls of work,life and love in 1990s Manhattan.',
            style: TextStyle(color: Colors.grey),
          ),
          kheight80,
          VideoWidget(),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButtonWidget(
                icon: Icons.send,
                title: 'Share',
                textSize: 12,
              ),
              width,
              CustomButtonWidget(
                icon: Icons.add,
                title: 'My List',
                textSize: 12,
              ),
              width,
              CustomButtonWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                textSize: 12,
              ),
              width,
            ],
          )
        ],
      ),
    );
  }
}