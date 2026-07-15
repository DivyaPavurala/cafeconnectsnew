import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Chats",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(18),
        children: const [

          ChatTile(
            name: "Aarav Sharma",
            message: "Looking forward to our coffee!",
            time: "2 min",
          ),

          ChatTile(
            name: "Priya Reddy",
            message: "See you tomorrow ☕",
            time: "10 min",
          ),

          ChatTile(
            name: "Rahul Verma",
            message: "Let's meet at 5 PM.",
            time: "Yesterday",
          ),

        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {

  final String name;
  final String message;
  final String time;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(

        leading: CircleAvatar(
          backgroundColor: AppColors.mustard,
          child: Text(
            name[0],
            style: const TextStyle(color: Colors.white),
          ),
        ),

        title: Text(name),

        subtitle: Text(message),

        trailing: Text(time),

      ),
    );
  }
}