import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/screens/main_menu_screen.dart';
import 'package:tictactoe/utils/route_names.dart';

class Routes {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.mainMenu:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainMenuScreen(),
        );
      case RouteName.createRoom:
        return MaterialPageRoute(
          builder: (BuildContext context) => const CreateRoomScreen(),
        );
      case RouteName.joinRoom:
        return MaterialPageRoute(
          builder: (BuildContext context) => const JoinRoomScreen(),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Container(
              child: Text("No Route Found"),
            ),
          );
        });
    }
  }
}
