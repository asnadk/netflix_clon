
import 'package:flutter/cupertino.dart';
import 'package:netflix_clone/core/sized_box.dart';

// ignore: must_be_immutable
class maincard extends StatelessWidget {
   String imageUrl;
   maincard({
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding:  EdgeInsets.all(5.0),
         child: Container(
               width: 150,
               height: 200,
               decoration:  BoxDecoration(
               borderRadius:kborder,
               image:  DecorationImage(image: NetworkImage( imageUrl),
               )
               )
             ),
       );
  }
}