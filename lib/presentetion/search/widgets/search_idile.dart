// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:netflix_clone/core/colors/colors.dart';
// import 'package:netflix_clone/core/sized_box.dart';
// import 'package:netflix_clone/presentetion/search/widgets/titles.dart';


// const imageurl="https://images.indianexpress.com/2023/02/spadikam-1200.jpg";

// class searchIdileWidget extends StatelessWidget {
//    searchIdileWidget({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//     const search_page_Title(title: "Top Searchs",),
//         kheight,
//         Expanded(
//           child: ListView.separated(
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//             return const TopSearchItemTile();
//           },
//            separatorBuilder: (context, index) => const SizedBox(height: 20,),
//             itemCount: 10),
//         )
//       ],
//     );
//   }
// }


// class TopSearchItemTile extends StatelessWidget {
//   const TopSearchItemTile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidt=MediaQuery.of(context).size.width;
//     return  Row(
//       children: [
//         Container(
//           width: screenWidt *0.30,
//           height: 65,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(imageurl),fit: BoxFit.cover)
//           ),
//           ),
//           width,
//           const Expanded(child:
//             Text("Movie name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
//             ),
//             // const CircleAvatar(
//             //   backgroundColor: kblack,
//             //   radius: 25,
//             //   child:
//               //  CircleAvatar(
//               //   backgroundColor: kblack,
//               //   radius: 23,
//               //   child: 
//                 Icon(CupertinoIcons.play_circle_fill,color: kwhait,size: 33,),
//               // ),
//             // )
//       ],
//     );
//   } 
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/sized_box.dart';
import 'package:netflix_clone/presentetion/search/widgets/titles.dart';

class SearchIdleWidget extends StatefulWidget {
  const SearchIdleWidget({super.key});

  @override
  SearchIdleWidgetState createState() => SearchIdleWidgetState();
}

class SearchIdleWidgetState extends State<SearchIdleWidget> {
  List<String> movieNames = [];
  List<String> movieImageUrls = [];

  @override
  void initState() {
    super.initState();
    fetchMovieData();
  }

  Future<void> fetchMovieData() async {
    try {
      final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?api_key=8da54ac86429d4c0b1982869b4569264'),
      );

      if (response.statusCode == 200) {
        final List<dynamic> movies = json.decode(response.body)['results'];
        final List<String> names =
            movies.map<String>((movie) => movie['title']).toList();
        final List<String> imageUrls = movies
            .map<String>((movie) =>
                'https://image.tmdb.org/t/p/w500/${movie['poster_path']}')
            .toList();
        setState(() {
          movieNames = names;
          movieImageUrls = imageUrls;
        });
      } else {
        throw Exception('Failed to load movie data');
      }
    } catch (error) {
      Text('Error fetching movie data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const search_page_Title(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => TopSearchItemTile(
              movieName:
                  movieNames.isNotEmpty ? movieNames[index] : 'Loading...',
              imageUrl: movieImageUrls.isNotEmpty ? movieImageUrls[index] : '',
            ),
            separatorBuilder: (context, index) => kheight20,
            itemCount: 19,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String movieName;
  final String imageUrl;

  const TopSearchItemTile({
    super.key,
    required this.movieName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        width,
        Expanded(
          child: Text(
            movieName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Icon(
          Icons.play_circle_outline,
          color: kwhait,
          size: 35,
        ),
      ],
    );
  }
}