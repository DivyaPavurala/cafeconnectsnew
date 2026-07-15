import 'package:flutter/material.dart';
import 'package:cafeconnects/screens/booking/booking_screen.dart';
class LiveChatScreen extends StatelessWidget {
  const LiveChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bg = Color(0xFFF8F1E7);
    const brown = Color(0xFF3A2418);
    const orange = Color(0xFFE09A3E);

    Widget iceBreaker(String text) => Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            border: Border.all(color: orange, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Text(text,
              style: const TextStyle(
                  color: Color(0xFF8A5A17),
                  fontWeight: FontWeight.w600,
                  fontSize: 14)),
        );

    Widget bubble(String text, bool me) => Align(
          alignment: me ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(bottom: 14),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            constraints: const BoxConstraints(maxWidth: 260),
            decoration: BoxDecoration(
              color: me ? brown : Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              text,
              style: TextStyle(
                  color: me ? Colors.white : Colors.black87, fontSize: 16),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Row(children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xFFD0AA72),
            child: Text("R"),
          ),
          SizedBox(width: 12),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Rhea M.",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text("18:42 left",
                style: TextStyle(color: Colors.red, fontSize: 12))
          ])
        ]),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("TAP AN ICE-BREAKER TO SEND",
                    style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.brown,
                        fontSize: 11)),
              ),
              const SizedBox(height: 12),
              iceBreaker("☕ If you could only drink one coffee order forever, what would it be?"),
              iceBreaker("📚 What's a book you've re-read more than once?"),
              iceBreaker("🚀 What's a startup idea you'd chase if money wasn't a factor?"),
              const Divider(height: 30),
              Expanded(
                child: ListView(
                  children: [
                    bubble("Hi! Loved that you're into early-stage startups too 👋", false),
                    bubble("Same! What are you building right now?", true),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  onPressed: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const BookingScreen(),
                        ),
                      );

                  },
                  child: const Text("Book a café slot",
                      style:
                          TextStyle(fontSize: 18, color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
