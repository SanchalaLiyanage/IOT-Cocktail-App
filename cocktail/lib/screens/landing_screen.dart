import 'package:flutter/material.dart';

void main() {
  runApp(Landing());
}

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/logging_page': (context) => LoggingPage(),
      },
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BGpic.jpg'), // Path to your background image
            fit: BoxFit.cover, // Ensures the image covers the entire screen
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Illustration Placeholder
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/plant_illustration.png'), // Path to the illustration image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Title Text
            Text(
              "Plantly",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            // Subtitle Text
            Text(
              "Can't seem to keep a plant alive?\nLet us help you change that",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 40),
            // Login Button
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[900], // Button background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  // Navigate to the logging page
                  Navigator.pushNamed(context, '/logging_page');
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Sign Up Button
            SizedBox(
              width: 200,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  // Handle sign-up action
                },
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoggingPage extends StatelessWidget {
  const LoggingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logging Page"),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Center(
        child: Text(
          "Welcome to the Logging Page!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
