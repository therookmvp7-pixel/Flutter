import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  String name = 'Mittens';
  String bio = 'Unstoppable chess player';
  String location = 'From chess.com';
  String age = 'Meow!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 243, 240),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 255, 168, 81),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/images.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: GoogleFonts.raleway(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 1),
            Text(
              location,
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),
            Text(age, style: GoogleFonts.poppins(fontSize: 17)),
            Text(bio, style: GoogleFonts.poppins(fontSize: 16)),
            SizedBox(height: 1),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.message),
                  iconSize: 30,
                  onPressed: () {},
                ),
                SizedBox(width: 12),
                IconButton(
                  icon: Icon(Icons.alternate_email),
                  iconSize: 30,
                  onPressed: () {},
                ),
                SizedBox(width: 12),
                IconButton(
                  icon: Icon(Icons.videocam),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 234, 238, 233),
                padding: EdgeInsets.symmetric(horizontal: 34, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text('Lets Play', style: TextStyle(fontSize: 19)),
            ),
          ],
        ),
      ),
    );
  }
}
