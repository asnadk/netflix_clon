
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/presentetion/search/widgets/titles.dart';
import 'package:netflix_clone/presentetion/widgets/main_card.dart';

// ignore: must_be_immutable
class main_widget_card extends StatelessWidget {
  String title;
  List imagelist;
   main_widget_card({
    required this.imagelist,
  required this.title,
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding:  EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
             search_page_Title(title:title,),
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: 
                  List.generate(10, (index) {
                    return maincard(imageUrl: imagelist[index].toString());
                  })
              ),
            ),
          ]
      )
    );
  }
}
