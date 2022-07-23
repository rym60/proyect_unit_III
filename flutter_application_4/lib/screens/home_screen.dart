import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/card_widget.dart';
import 'package:flutter_application_4/screens/series_provider.dart';
import 'package:flutter_application_4/screens/tv_provider.dart';
import 'package:flutter_application_4/screens/widgets/background.dart';
import 'package:provider/provider.dart';

import 'movies_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);
    final seriesProvider = Provider.of<SeriesProvider>(context, listen: true);
    final tvProvider = Provider.of<TvProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {

          }, 
          icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Stack(
        children: [
          background(),
          SingleChildScrollView (
          child: Column(
            children: [
              CardWidget(movies: moviesProvider.dataMovies),
              CardWidget(movies: seriesProvider.dataSeries),
              CardWidget(movies: tvProvider.dataTv),
            ],
          ),
        ),
        ]
      ),
    );
  }
}