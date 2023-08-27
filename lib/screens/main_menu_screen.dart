import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/utils/routes.dart';
import 'package:tictactoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, Routes.createRoomScreen);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, Routes.joinRoomScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Responsive(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onTap: () => createRoom(context),
                text: 'Create Room',
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () => joinRoom(context),
                text: 'Join Room',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
