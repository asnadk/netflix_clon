import 'package:flutter/material.dart';
import 'package:netflix_clone/presentetion/downloads/widget/bottom_navigation.dart';
import 'package:netflix_clone/presentetion/downloads/widget/screen_downloads.dart';
import 'package:netflix_clone/presentetion/fast_laugh/screen_Fast_Laugh.dart';
import 'package:netflix_clone/presentetion/home/home.dart';
import 'package:netflix_clone/presentetion/newAnd%20hote/new_and_hote.dart';
import 'package:netflix_clone/presentetion/search/screenSearch.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final pages= [
  HomeScreen(),
  const NewAndHotScreen(),
  const screeenFastLaugh(),
  screeenSearch(),
  const DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    body: SafeArea(
      child: ValueListenableBuilder(
        valueListenable: indexChangerNotifire, builder: (context, int index, _) {
          return pages[index];
        },),
    ),
    bottomNavigationBar: const bottomNavigationWidget(),

    );
  }
}