import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/newAnd%20hote/widgets/Coming_soon.dart';
import 'package:netflix_clone/presentetion/newAnd%20hote/widgets/Everyone.dart';


class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kblack,
            title: const Text(
              'New & Hot',
              style: TextStyle(
                  color: kwhait, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            actions: const [
              Icon(
                Icons.cast,
                color: kwhait,
                size: 30,
              ),
              width,
              Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"),fit: BoxFit.cover,width: 30,height: 30,
              )
              // Icon(
              //   Icons.account_box_outlined,
              //   color: kwhait,
              //   size: 30,
              // ),
            ],
            bottom: TabBar(
              labelColor: kblack,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dividerColor: kblack,
              unselectedLabelColor: kwhait,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelPadding: const EdgeInsets.all(14),
              indicator: BoxDecoration(
                color: kwhait,
                borderRadius: kborder,
              ),
              tabs: const [
                Text(
                  '🍟 Coming Soon',
                ),
                Text(
                  '👀 Everyone\'s watching',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _buildComingSoon(),
              _buildEeryonesWatching(),
            ],
          )),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  Widget _buildEeryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const EveryonesWatchingWidget(),
    );
  }
}

