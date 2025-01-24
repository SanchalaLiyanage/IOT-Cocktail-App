import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              // Top Navigation and Help Link
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Handle back navigation
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle "Need Help?" action
                    },
                    child: Text(
                      "Need Help?",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 2, 35, 62),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Title and Subtitle
              Text(
                "Welcome back!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Login for a taste of something special!",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 30),
              // Email Input Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Password Input Field
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Remember Me and Forgot Password Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {
                          // Handle remember me checkbox
                        },
                      ),
                      Text("Remember me"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle forgot password action
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 2, 35, 62),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Replaces 'primary'
                  foregroundColor: Colors.black, // Replaces 'onPrimary'
                  side: BorderSide(color: Colors.grey[300]!),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Sign in"),
              ),
              SizedBox(height: 20),
              // Divider with "Or sign in with"
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("Or sign in with"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 20),
              // Social Media Login Buttons
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Google login
                },
                icon: Icon(Icons.email_outlined, color: Colors.red),
                label: Text("Continue With Google"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Replaces 'primary'
                  foregroundColor: Colors.black, // Replaces 'onPrimary'
                  side: BorderSide(color: Colors.grey[300]!),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 12),
              // Removed Facebook login button
              SizedBox(height: 30),
              // Sign Up Text
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Handle sign-up action
                  },
                  child: Text.rich(
                    TextSpan(
                      text: "Don’t have an account? ",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 2, 35, 62),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
