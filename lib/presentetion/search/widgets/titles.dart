import 'package:flutter/material.dart';

class search_page_Title extends StatelessWidget {
  final String title;
  const search_page_Title({super.key, required this.title, });

  @override
  Widget build(BuildContext context) {
    return  Text(title,
        style: const TextStyle(fontSize: 22,
        fontWeight: FontWeight.bold),
        );
  }
}
