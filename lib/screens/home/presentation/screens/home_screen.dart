import 'package:flutter/material.dart';

import 'package:cafeconnects/core/constants/app_colors.dart';
import 'package:cafeconnects/core/constants/app_text_styles.dart';
import 'package:cafeconnects/screens/matches/matches_screen.dart';
import 'package:cafeconnects/screens/chat/chat_screen.dart';
import 'package:cafeconnects/screens/events/events_screen.dart';
import 'package:cafeconnects/screens/profile/my_profile_screen.dart';

import 'package:cafeconnects/core/widgets/bottom_nav.dart';
import 'package:cafeconnects/core/widgets/cafe_card.dart';
import 'package:cafeconnects/core/widgets/primary_button.dart';
import 'package:cafeconnects/core/widgets/search_box.dart';
import 'package:cafeconnects/core/widgets/tag_chip.dart';
import 'package:cafeconnects/screens/matching/matching_screen.dart';
import 'package:cafeconnects/models/cafe_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int currentIndex = 0;

final List<String> interests = [
"All",
"Politics",
"Books",
"Cinema",
"Fitness",
"Travel",
];

final List<CafeModel> cafes = [

CafeModel(
name: "Roast 24 Cafe",
distance: "0.8 km away",
rating: 4.8,
),

CafeModel(
name: "Coffee House",
distance: "1.4 km away",
rating: 4.6,
),

CafeModel(
name: "Third Wave Coffee",
distance: "2.2 km away",
rating: 4.7,
),

];

@override
Widget build(BuildContext context) {

return Scaffold(

backgroundColor: AppColors.paper,

  bottomNavigationBar: BottomNav(
    currentIndex: currentIndex,
    onTap: _onBottomNavTap,
  ),

body: SafeArea(

child: SingleChildScrollView(

physics: const BouncingScrollPhysics(),

padding: const EdgeInsets.all(22),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Row(

children: [

Expanded(

child: Column(

crossAxisAlignment:
CrossAxisAlignment.start,

children: [

Text(
"GOOD EVENING",
style: AppTextStyles.eyebrow,
),

const SizedBox(height: 8),

const Text(
"What's on today?",
style: TextStyle(
fontFamily: "Fraunces",
fontSize: 28,
fontWeight: FontWeight.w600,
),
),

],

),

),

Container(

width: 56,

height: 56,

decoration: const BoxDecoration(

color: AppColors.mustard,

shape: BoxShape.circle,

),

child: const Center(

child: Text(

"A",

style: TextStyle(

fontFamily: "Fraunces",

color: Colors.white,

fontSize: 24,

fontWeight: FontWeight.bold,

),

),

),

),

],

),

const SizedBox(height: 24),

Container(

padding: const EdgeInsets.all(18),

decoration: BoxDecoration(

color: AppColors.espresso,

borderRadius: BorderRadius.circular(18),

),

child: Column(

crossAxisAlignment:
CrossAxisAlignment.start,

children: [

const Text(

"QUICK CONNECT",

style: TextStyle(

fontFamily: "IBMPlexMono",

color: AppColors.mustard,

letterSpacing: 2,

fontSize: 10,

),

),

const SizedBox(height: 10),

const Text(

"Request a 1:1 Coffee Connect",

style: TextStyle(

color: AppColors.paper,

fontSize: 20,

fontWeight: FontWeight.bold,

fontFamily: "Fraunces",

),

),

const SizedBox(height: 16),

  SizedBox(
    width: double.infinity,
    height: 56,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const MatchingScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mustard,
        foregroundColor: AppColors.espresso,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 6),
          Text(
            "Request Coffee Connect    ",
          ),
        ],
      ),
    ),
  ),

],

),

),

const SizedBox(height: 24),

  SearchBox(),

const SizedBox(height: 20),

Text(

"Upcoming Events",

style: AppTextStyles.heading3,

),

const SizedBox(height: 14),

SizedBox(

height: 42,

child: ListView.separated(

scrollDirection: Axis.horizontal,

itemCount: interests.length,

separatorBuilder: (_,__) =>
const SizedBox(width: 10),

itemBuilder: (_,index){

return TagChip(

text: interests[index],

selected: index==0,

);

},

),

),


  // Politics Meetup
  const SizedBox(height: 26),
  Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(18),
      border: Border.all(color: AppColors.border),
    ),
    child: Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: const Color(0xffF6E6D5),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Center(
            child: Text(
              "🏛️",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),

        const SizedBox(width: 16),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Politics Round Table",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 4),
              Text(
                "Fri 25 Jul • Banjara Hills",
                style: TextStyle(color: AppColors.inkSoft),
              ),
            ],
          ),
        ),

        const Icon(Icons.arrow_forward_ios, size: 18),
      ],
    ),
  ),
  const SizedBox(height: 24),
  SizedBox(
    height: 340,
    child: ListView(
      physics: const BouncingScrollPhysics(),
      children: [

        // Morning Yoga
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xffDCE7DF),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Center(
                  child: Text(
                    "🧘",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Morning Yoga + Café Brunch",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Sun 20 Jul • Hitech City",
                      style: TextStyle(color: AppColors.inkSoft),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ),

        const SizedBox(height: 18),

        // Policy Discussion
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xffECEDF8),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Center(
                  child: Text(
                    "🗳️",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Policy Discussion",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Wed 16 Jul • Jubilee Hills",
                      style: TextStyle(color: AppColors.inkSoft),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ),

        const SizedBox(height: 18),


        const SizedBox(height: 18),

        // Real Estate Networking
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xffE7F1E7),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Center(
                  child: Text(
                    "🏡",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Real Estate Networking",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Sat 26 Jul • Financial District",
                      style: TextStyle(color: AppColors.inkSoft),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ),

      ],
    ),
  ),


const SizedBox(height: 40),
],
),
),
),
);
}

void _onBottomNavTap(int index) {
  setState(() {
    currentIndex = index;
  });

  switch (index) {
    case 0:
    // Home
      break;

    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const MatchesScreen(),
        ),
      );
      break;

    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const ChatScreen(),
        ),
      );
      break;

    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const EventsScreen(),
        ),
      );
      break;

    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const MyProfileScreen(),
        ),
      );
      break;
  }
}
Widget _smallEvent({
  required IconData icon,
  required String title,
  required String subtitle,
  required String tag,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 14),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: const Color(0xffEFE6DA),
      ),
    ),
    child: Row(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color: const Color(0xff8FAFA3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),

        const SizedBox(width: 16),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 8),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffEEF2FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(
                    color: Color(0xff6666AA),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}
