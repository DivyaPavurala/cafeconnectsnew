body: SafeArea(
child: LayoutBuilder(
builder: (context, constraints) {
return SingleChildScrollView(
physics: const BouncingScrollPhysics(),
child: ConstrainedBox(
constraints: BoxConstraints(
minHeight: constraints.maxHeight,
),
child: IntrinsicHeight(
child: Padding(
padding: const EdgeInsets.all(24),
child: Column(
children: [

const SizedBox(height: 30),

const Icon(
Icons.favorite,
size: 80,
color: Colors.brown,
),

const SizedBox(height: 20),

const Text(
"You're Coffee Connected!",
style: TextStyle(
fontFamily: "Fraunces",
fontSize: 24,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

Text(
"We found someone who shares your interests.",
textAlign: TextAlign.center,
style: TextStyle(
color: AppColors.inkSoft,
fontSize: 12,
),
),

const SizedBox(height: 40),

CircleAvatar(
radius: 60,
backgroundColor: AppColors.mustard,
child: const Text(
"A",
style: TextStyle(
fontSize: 42,
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
),

const SizedBox(height: 20),

const Text(
"Aarav Sharma",
style: TextStyle(
fontFamily: "Fraunces",
fontSize: 26,
fontWeight: FontWeight.w600,
),
),

const SizedBox(height: 4),

Text(
"Software Engineer • Hyderabad",
style: TextStyle(
color: AppColors.inkSoft,
),
),

const SizedBox(height: 18),

PrimaryButton(
text: "View Profile",
height: 40,
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (_) => const ProfileScreen(),
),
);
},
),

const SizedBox(height: 12),

SizedBox(
width: double.infinity,
child: OutlinedButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text("Find Another Match"),
),
),

const SizedBox(height: 20),

Container(
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(22),
border: Border.all(
color: AppColors.border,
),
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

Container(
width: 32,
height: 32,
decoration: BoxDecoration(
color: const Color(0xffF6E9CF),
borderRadius: BorderRadius.circular(16),
),
child: const Icon(
Icons.schedule_rounded,
color: AppColors.espresso,
size: 20,
),
),

const SizedBox(width: 16),

Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

const Text(
"Time-limited Chat",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
color: AppColors.espresso,
),
),

const SizedBox(height: 8),

Text(
"You have 20 minutes of guided chat to decide on a café meetup.",
style: TextStyle(
fontSize: 15,
height: 1.3,
color: AppColors.inkSoft,
),
),
],
),
),
],
),
),

const Spacer(),

const SizedBox(height: 30),

Row(
children: [

Expanded(
child: OutlinedButton(
onPressed: () {
Navigator.pop(context);
},
style: OutlinedButton.styleFrom(
minimumSize: const Size.fromHeight(54),
side: const BorderSide(
color: AppColors.border,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
),
child: const Text(
"Pass",
style: TextStyle(
color: AppColors.espresso,
fontWeight: FontWeight.bold,
),
),
),
),

const SizedBox(width: 20),

Expanded(
child: ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (_) => const LiveChatScreen(),
),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: AppColors.mustard,
foregroundColor: AppColors.espresso,
elevation: 0,
minimumSize: const Size.fromHeight(54),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
),
child: const Text(
"Start Chat",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
),
),
],
),

const SizedBox(height: 20),

],
),
),
),
),
);
},
),
),