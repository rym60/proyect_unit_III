import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/details_screen.dart';
import 'package:flutter_application_4/screens/home_screen.dart';
import 'package:flutter_application_4/screens/movies_provider.dart';
import 'package:flutter_application_4/screens/series_provider.dart';
import 'package:flutter_application_4/screens/tv_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppSate());

class AppSate extends StatelessWidget {
  const AppSate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false,),
      ChangeNotifierProvider(create: (_) => SeriesProvider(), lazy: false,),
      ChangeNotifierProvider(create: (_) => TvProvider(), lazy: false,),
    ],
    child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'material app',
      routes: {
        'home': ( _ ) => const HomeScreen(),
        'details': ( _ ) => const DetailsScreen(),
      },
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.black
        )
      ),
    );
  }
}
