import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/search/widgets/titles.dart';

const imageurl="https://th.bing.com/th/id/OIP.HFIUZeMWESfwXNjotPfxOgAAAA?w=136&h=180&c=7&r=0&o=5&pid=1.7";

class search_result extends StatelessWidget {
  const search_result({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const search_page_Title(title: 'Movies & TV'),
        kheight,
        Expanded(child:GridView.count(crossAxisCount: 3,
        shrinkWrap: true,
        mainAxisSpacing:5 ,
        crossAxisSpacing: 5,
        childAspectRatio: 1/1.5,
        children: List.generate(20, (index) {
          return const mainCard();
        } ),
        ) ),
      ],
    );
  }
}

class  mainCard extends StatelessWidget {
  const mainCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  BoxDecoration(
        image: const DecorationImage(image: 
        NetworkImage(imageurl),fit: BoxFit.cover
        ),
        borderRadius:BorderRadius.circular(7)
       ),
    );
  }
}