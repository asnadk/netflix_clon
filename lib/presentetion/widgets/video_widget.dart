import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 200,
          child: Image(
            image: NetworkImage(
              "https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABX5FTygZ-n1j3bA0OuJDOOo4EXUIC02hUnXN5iKwZkBErq2myyke7rER7fekIPuLLeB1du1qNVddtF9wgDLvzBHHvpsW854zFzqyEW6nFD5KtUc6d2dXag6lT85Ns4SUEF_TYw.jpg?r=284",
            ),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: kblack.withOpacity(0.5),
            child: IconButton(
              icon: const Icon(Icons.volume_off),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}


// List<String>hotlist=[
// "https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABX5FTygZ-n1j3bA0OuJDOOo4EXUIC02hUnXN5iKwZkBErq2myyke7rER7fekIPuLLeB1du1qNVddtF9wgDLvzBHHvpsW854zFzqyEW6nFD5KtUc6d2dXag6lT85Ns4SUEF_TYw.jpg?r=284",
// 'https://img.etimg.com/thumb/width-420,height-315,imgsize-42252,resizemode-75,msid-105023992/news/international/us/dead-by-daylight-stranger-things-chapter-returns-after-behaviour-interactive-renews-collaboration-with-netflix-here-are-all-the-details.jpg',
// "https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/08/sex-education-season-2.jpg",
// 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqnaX8YJEau3lcjfUvYM1ctr78UCOcZRzJ1q0PAJ_1eg&s',
// "https://upload.wikimedia.org/wikipedia/en/d/d8/Game_of_Thrones_title_card.jpg",
// '',
// "",
// '',
// "",
// '',
// "",
// '',
// ];