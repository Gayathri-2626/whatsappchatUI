import 'package:flutter/material.dart';
import 'package:whatsapp_chat/chat_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('WhatsApp'),
        centerTitle: false,
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(5.0),
          ),
          Icon(Icons.search),
          SizedBox(width: 15,),
          Icon(Icons.more_vert)
        ],
        bottom: TabBar(
          indicatorColor: Colors.teal,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
                fontSize: 15
          ),
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt,),),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab(text: "CALLS",),
    ],
      ),
    ),
          body: TabBarView(
            children: <Widget>[
              Container(),
              ChatScreen(),
              Container(),
              Container(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.message,
            color: Colors.white,),
          ),
        ),
    );
  }
}
