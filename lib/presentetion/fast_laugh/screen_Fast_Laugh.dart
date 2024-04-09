import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentetion/fast_laugh/widgets/video_list_item.dart';

class screeenFastLaugh extends StatelessWidget {
  const screeenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body:SafeArea(child:PageView(
    scrollDirection: Axis.vertical,
     children: List.generate(14, (index) {
      return  VideoListItemPage(index: index,);
     }),
  ))
    );
  }
}