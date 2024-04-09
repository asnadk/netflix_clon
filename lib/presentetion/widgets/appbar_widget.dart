import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sized_box.dart';

class appBar_widget extends StatelessWidget {
   const appBar_widget({super.key, required this.title});
final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
         children: [
        Text(title,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
      const Spacer(),
      const Icon(Icons.cast,color: Colors.white,size: 30,),
      width,
      Container(
        width: 30,
        height: 30,
        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png",fit: BoxFit.cover,),
      ),
      width,
         ],
      ),
    );
  }
}