import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/widgets/chatBox.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ChatBox();

  }
}


