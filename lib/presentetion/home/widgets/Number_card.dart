import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/sized_box.dart';


class Number_Card extends StatelessWidget {
  final int Index;
   Number_Card({super.key, required this.Index});
List top=indiatuday;
  @override
  Widget build(BuildContext context) {
    return Padding(
         padding:  const EdgeInsets.all(5.0),
         child: Stack(
           children: [
             Row(
               children: [
                const SizedBox(
                  width: 40,
                  height: 130,
                ),
                 Container(
                       width: 150,
                       height: 200,
                       decoration:  BoxDecoration(
                       borderRadius:kborder,
                       image:   DecorationImage(image:
                         NetworkImage(indiatuday[Index]),
                         fit: BoxFit.cover
                       )
                       )
                     ),
               ],
             ),
             Positioned(
              left: 12,
              bottom: 5,
              child: BorderedText(
                // strokeColor: Colors.white,
                strokeWidth: 10.0,
                strokeColor: kwhait,
                child: Text("${Index +1}",
                style: const TextStyle(
                  fontSize: 100,fontWeight: FontWeight.bold,color: kblack,
                decoration: TextDecoration.none,
                decorationColor: kwhait),
                )))
           ],
         ),
       );
  }
}



List<String>indiatuday=[
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHhM6iCSyTe77KIBgRWaKVXvUUmams6VK3ImFfQ9k4fg&s",
"https://flixpatrol.com/runtime/cache/files/posters/b/w350/bayqlmimuvtdorabln2vzbpsawy.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHGPpYJBeb7Dfn1uPgRM-N6sr5-qMyCwvfGbw19d_nsGoI3xjCdwn-SeeRBMhs1Nf9zMA&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXAdX8TRCrjKd5sxkj7iq9LOhrHHan_W6ayoI7sg7R-Q&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRevSufN9ExlqmxtvDgdA41iOMPcu2zsK5A0JvxUs7U5g&s",
"https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABXoEuZY1b5TDPdIR9Hn7bJQ-AVqGSLgZML6d1YlgtyjS_UlcJGPkWadghY1bizXO1BUpl3-Lts7-zrCYF98NX3quYDX_kHOqKoI2eovLcKXI6I9RM7aiSB2IvOXFvL1GyJsK4g.jpg?r=243",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa_OniYA7Pw7uY64MuzWeX92w-wzxtxuhAB7_dqDk8AA&s",
"https://upload.wikimedia.org/wikipedia/en/c/c2/Kaaval_2021_poster.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJkyqIGwtA9fBLdpR03sPzI2mWOeJdGYzR_HQ0UT8ILg&s",
"https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/The_Goat_Life_poster.jpg/220px-The_Goat_Life_poster.jpg",
"https://upload.wikimedia.org/wikipedia/en/1/13/Bullet_Train_%28poster%29.jpeg",
];