import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/search/widgets/search_idile.dart';


class screeenSearch extends StatelessWidget {
     screeenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
  body: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CupertinoSearchTextField(
          backgroundColor: Colors.grey.withOpacity(0.4),
          prefixIcon: const Icon(Icons.search,color: Colors.grey,),
          suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
         style: const TextStyle(color: Colors.white), 
        ),
        kheight,
         Expanded(child: SearchIdleWidget()),
        // const Expanded(child:  search_result()),
      ],
    ),
  ),
    );
  }
}





