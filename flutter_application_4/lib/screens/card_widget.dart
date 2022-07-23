import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final List<dynamic>movies;
  const CardWidget({Key? key, required this.movies}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const base = "https://image.tmdb.org/t/p/w500";
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.red,
      child: Swiper(
        itemCount: 10,
        itemWidth: size.width *0.6,
        itemHeight: size.height *0.6,
        layout: SwiperLayout.STACK,
        itemBuilder: ( _, int index) {
          final movie = movies[index];
          final imageUrl = base + movie['poster_path'];
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/jack-black.jpg'), 
              image: NetworkImage(imageUrl)),
          );
        },
      ),
    );
  }
}