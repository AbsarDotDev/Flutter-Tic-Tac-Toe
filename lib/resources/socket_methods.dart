import 'package:tictactoe/resources/socket_client.dart';

class SocketMethods {
  final socketClient = SocketClient.instance.socket!;

  void createRoom(String nickname) {
    if (nickname.isNotEmpty) {
      socketClient.emit('createRoom', {
        'nickname': nickname,
      });
    }
  }
}
