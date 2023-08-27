import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/screens/main_menu_screen.dart';
import 'package:tictactoe/utils/colors.dart';
import 'package:tictactoe/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        Routes.createRoomScreen: (context) => const CreateRoomScreen(),
        Routes.joinRoomScreen: (context) => const JoinRoomScreen(),
        Routes.mainMenuScreen: (context) => const MainMenuScreen()
      },
      initialRoute: Routes.mainMenuScreen,
    );
  }
}
