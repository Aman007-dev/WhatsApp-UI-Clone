// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsupclone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummydata.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          const Divider(
            height: 10.0,
          ),
          ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummydata[i].avtarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(dummydata[i].name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    dummydata[i].time,
                    style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  )
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  dummydata[i].message,
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ))
        ],
      ),
    );
  }
}
