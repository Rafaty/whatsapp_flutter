
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/screens/callsScreen.dart';
import 'package:whatsapp_flutter/screens/cameraScreen.dart';
import 'package:whatsapp_flutter/screens/chatScreen.dart';
import 'package:whatsapp_flutter/screens/statusScreen.dart';

import 'package:whatsapp_flutter/widgets/itemTab.dart';

class MainScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  MainScreen({this.cameras});
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              ItemTab('CHATS', 2),
              ItemTab('STATUS', 0),
              ItemTab('CALLS', 1),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(widget.cameras),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
