import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

ValueNotifier<int> indexChangerNotifire=ValueNotifier(0);

class bottomNavigationWidget extends StatelessWidget {
  const bottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangerNotifire, builder: (context, int newIndex,_) {
        return BottomNavigationBar(
          onTap: (index) {
            indexChangerNotifire.value=index;
          },
      currentIndex: newIndex,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: backgroundColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      items:const [
BottomNavigationBarItem(
  icon: Icon(Icons.home),
  label: "home"
  ),

  BottomNavigationBarItem(
  icon: Icon(Icons.collections),
  label: "new &hot"
  ),

  BottomNavigationBarItem(
  icon: Icon(Icons.emoji_emotions),
  label: "fast laughs"
  ),

  BottomNavigationBarItem(
  icon: Icon(Icons.search),
  label: "search"
  ),

  BottomNavigationBarItem(
  icon: Icon(Icons.download),
  label: "downloads"
  )
      ] 
      );
  
        
      },);
  }
}