import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.paper,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Events",
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

          EventCard(
            title: "Coffee Networking",
            date: "20 Jul",
            location: "Third Wave Coffee",
          ),

          SizedBox(height: 16),

          EventCard(
            title: "Startup Meetup",
            date: "22 Jul",
            location: "Roast 24",
          ),

          SizedBox(height: 16),

          EventCard(
            title: "Book Lovers",
            date: "25 Jul",
            location: "Starbucks",
          ),

        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {

  final String title;
  final String date;
  final String location;

  const EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      child: ListTile(

        leading: const Icon(Icons.event),

        title: Text(title),

        subtitle: Text(location),

        trailing: Text(date),

      ),
    );
  }
}