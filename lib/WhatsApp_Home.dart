// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsupclone/pages/Call_Screen.dart';
import 'package:whatsupclone/pages/Chat_Screen.dart';
import 'package:whatsupclone/pages/Status_Screen.dart';
import 'package:whatsupclone/pages/camera_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text("WhatsApp"),
        ),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
        actions: const <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              // ignore: deprecated_member_use
              backgroundColor: Theme.of(context).accentColor,
              child: const Icon(Icons.message),
              // ignore: avoid_print
              onPressed: () => print("Open Chats"),
            )
          : null,
    );
  }
}
