import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/home/Listpage.dart';
import 'package:netflix_clone/presentetion/home/widgets/Number_card.dart';
import 'package:netflix_clone/presentetion/search/widgets/titles.dart';
import 'package:netflix_clone/presentetion/widgets/main_card_widget.dart';

  TextButton _playbutton() {
    return TextButton.icon(onPressed: () {}, 
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhait)),
                        icon:  const Icon(Icons.play_arrow,color: kblack,size: 25,), 
                        label: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("PLAY",style: TextStyle(color: Colors.black),),
                        ));
  }



class Custom_Button_widget extends StatelessWidget {
  const Custom_Button_widget({
    super.key, required this.icon,
    required this.title,
    
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
        color: kwhait,
        size: 30,),
        Text(title,

        style: const TextStyle(fontSize: 18,),)
      ],
    );
  }
}





ValueNotifier<bool>scrollNotifier = ValueNotifier(true);
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
List last= south_images;
List tences=tence;
List Past= Pastyear;
List trend= Trending;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context,index, _){
        return NotificationListener<UserScrollNotification>(
        onNotification: (notification){
          final ScrollDirection direction = notification.direction;
          print(direction);
          if(direction == ScrollDirection.reverse){
            scrollNotifier.value = false;
          }else if (direction == ScrollDirection.forward){
            scrollNotifier.value = true;
          }
          return true;
        },
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://image.tmdb.org/t/p/original/reEMJA1uzscCbkpeRJeTT2bjqUp.jpg"))),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Custom_Button_widget(
                              title: 'My List',
                              icon: Icons.add,
                            ),
                            _playbutton(),
                            const Custom_Button_widget(icon: Icons.info, title: 'Info')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                main_widget_card(title: 'Released In The Past Year', 
        imagelist: Past,
        ),
        main_widget_card(title: "Trending Now", 
        imagelist: trend,
        ),
      
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
             const search_page_Title(title:"Top 10 Tv shows In India Today"),
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: 
                  List.generate(10, (index) {
                    return  Number_Card(Index: index);
                  })
              ),
            ),
          ]
      ),
      main_widget_card(
        imagelist: tences,
         title: "Tense Dramas"),

         main_widget_card(
          imagelist: last,
         title: "Sounth Cinema", 
        ),

              ],
            ),
          scrollNotifier.value == true?  AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
              width: double.infinity,
              height: 90,
              color: Colors.black.withOpacity(0.3),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network('https://pngimg.com/uploads/netflix/netflix_PNG22.png',
                      width: 50, height: 50,),
                      const Spacer(),
                      const Icon(Icons.cast,
                      color: Colors.white,
                      size: 30,),
                      width,
                      Container(
                        width: 30,
                       height: 30,
                       child: Image.network('https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png',fit: BoxFit.cover,),
                      
                      ),
                      width
                    
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text("TV Shows" ,style: titletext),
                      Text('Movies',style: titletext),
                      Text('Catogries',style: titletext)
                    ],
                  )
                ]),
            ):
            kheight,
          ],
        ),

      );
      },
      )
    );
  }
}
