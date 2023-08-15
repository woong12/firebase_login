import 'package:firebase_login/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/signup.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: h * 0.16),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/img/profile.png"),
                  backgroundColor: Colors.white70,
                )
              ],
            ),
          ),
          const SizedBox(height: 70),
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),
          GestureDetector(
            onTap: () => AuthController.instance.logOut(),
            child: Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage("assets/img/loginbtn.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  "Sign out",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
