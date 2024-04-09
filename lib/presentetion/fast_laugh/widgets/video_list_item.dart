// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:netflix_clone/core/colors/colors.dart';


// // ignore: camel_case_types
// class video_list_itempage extends StatelessWidget {
  
//   final int index;
//   const video_list_itempage({super.key,required this.index});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           // color: Colors.accents[index % Colors.accents.length],
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Image(image: NetworkImage(imageslist[index]),fit: BoxFit.cover,),
//      ),
//         ),

       
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.black.withOpacity(0.5),
//                   child: IconButton(onPressed: () {
//                   }, 
//                   icon: const Icon(Icons.volume_off),iconSize: 30,color: kwhait,),
//                 ),
//                 const Padding(
//                   padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                   child:  Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                       child: CircleAvatar(
//                         radius: 30,
//                         backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.5GxUYcP4hxjUck84_HmpeQHaM_?w=115&h=180&c=7&r=0&o=5&pid=1.7",),),
//                     ),
//                     video_actionsWidget(icon: Icons.emoji_emotions, title: "lol"),
//                     video_actionsWidget(icon: Icons.add, title: "Add"),
//                     video_actionsWidget(icon: Icons.share, title: "share"),
//                     video_actionsWidget(icon: Icons.play_arrow, title: "play"),
                  
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class video_actionsWidget extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   const video_actionsWidget({super.key, required this.icon, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(icon,color: Colors.white,size: 35,),
//         Text(title,style: const TextStyle(
//           color: kwhait,fontSize: 14,
//         ),)
//       ],
//     );
//   }
// }

// List <String>imageslist=[
//    "https://images.news18.com/ibnlive/uploads/2024/01/untitled-design-2024-01-18t015319.316-2024-01-577b733c8abd0be8c21fc6376f57f633.jpg?impolicy=website&width=640&height=480",
//    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpYEtjVneTP0FLozqH5M8OprLlfHfSMYulrKSZBCKx3w&s",
//    "https://cdn.moviefone.com/admin-uploads/posters/thedevilconspiracy-movie-poster_1671120441.jpg?d=360x540&q=60",
//    "https://filmfare.wwmindia.com/videophotogallery/2023/sep/upcoming-hollywood-movies-3169348190816934975941693552741.jpg",
//    "https://assets.gadgets360cdn.com/pricee/assets/product/202311/Kingdom-of-the-Planet-of-the-Apes_1700138775.jpg",
//    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ767tjFiakYqvMcnfP2tBLmDyWS1PQtIilCu_yaAti7A&s",
//    "https://upload.wikimedia.org/wikipedia/en/1/13/Bullet_Train_%28poster%29.jpeg",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe7Lo7o6no0SNKuyto02IrsN5FxdboRHgdYODbbbLE6g&s",
//    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0KXommf21ubeLTa-UdZR_Werd0gAIPYF_rCnMMrI6cQ&s",
//    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiljnqhc8_F6B1d436rkkxuu0g17SpbCQlg8pkXSTmSA&s",
//     "https://m.media-amazon.com/images/I/81ftP3ywIiL._AC_UF1000,1000_QL80_.jpg",
//    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJkyqIGwtA9fBLdpR03sPzI2mWOeJdGYzR_HQ0UT8ILg&s",
//    "https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/The_Goat_Life_poster.jpg/220px-The_Goat_Life_poster.jpg",
//     "https://upload.wikimedia.org/wikipedia/en/1/13/Bullet_Train_%28poster%29.jpeg",
//   ];


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/infrastructure/api_key.dart';

class VideoListItemPage extends StatelessWidget {
  final int index;

  const VideoListItemPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder<String>(
              future: fetchMovieImage(index),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Display a loading indicator while fetching data
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  // Display an error message if fetching data fails
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else {
                  // Display the movie image if fetching data succeeds
                  return Image.network(
                    snapshot.data!,
                    fit: BoxFit.cover,
                  );
                }
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                      VideoActionsWidget(icon: Icons.emoji_emotions, title: "lol"),
                      VideoActionsWidget(icon: Icons.add, title: "Add"),
                      VideoActionsWidget(icon: Icons.share, title: "share"),
                      VideoActionsWidget(icon: Icons.play_arrow, title: "play"),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Future<String> fetchMovieImage(int index) async {
    const apiKey = apikey;
    final response = await http.get(
      Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> results = data['results'];
      if (index < results.length) {
        final posterPath = results[index]['poster_path'];
        if (posterPath != null && posterPath.isNotEmpty) {
          final imageUrl = 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/$posterPath';
          return imageUrl;
        } else {
          throw Exception('Poster path is null or empty');
        }
      } else {
        throw Exception('Movie not found at index $index');
      }
    } else {
      throw Exception('Failed to load movie images: ${response.statusCode}');
    }
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionsWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}