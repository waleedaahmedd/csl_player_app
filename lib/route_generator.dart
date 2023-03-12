import 'package:csl_player_app/screens/home_screen.dart';
import 'package:csl_player_app/screens/referee_home_screen.dart';
import 'package:csl_player_app/screens/referee_match_screen.dart';
import 'package:csl_player_app/screens/signup_screen.dart';
import 'package:csl_player_app/screens/splash_screen.dart';
import 'package:csl_player_app/screens/tornament_detail_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/register':
         return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case '/home':
          return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/referee_home':
        return MaterialPageRoute(builder: (_) => const RefereeHomeScreen());
      case '/tournament_detail':
        return MaterialPageRoute(builder: (_) => const TournamentDetailScreen());
      case '/referee_match':
        return MaterialPageRoute(builder: (_) => const RefereeMatchScreen());
      case '/wineries_list':
      //    return MaterialPageRoute(builder: (_) => const WineriesListScreen());
      case '/tasting_details':
      /*return MaterialPageRoute(
            builder: (_) => const TastingDetailsScreen(),
            settings: const RouteSettings(name: '/tasting_details'));*/
      case '/wines_details':
      /*return MaterialPageRoute(
            builder: (_) => WinesDetailScreen(
                  reviewButton: args,
                ));*/

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Something wrong in routes'),
        ),
      );
    });
  }
}
