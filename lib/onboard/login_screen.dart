import 'package:auth_screen/constants.dart';
import 'package:auth_screen/onboard/otp_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 70,
            width: width(context),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  top: -40,
                  right: 20,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: mainColor.withOpacity(.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("${imagePath}one.jpg"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: mainColor.withOpacity(0.1),
                filled: true,
                hintText: "Phone Number",
                hintStyle: TextStyle(
                  color: mainColor,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const OtpScreen();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              width: width(context) * 0.84,
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Or login with",
            style: TextStyle(
              fontSize: 13,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "${imagePath}facebook.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "${imagePath}google.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "${imagePath}x.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Don't have an account? Sign up",
            style: TextStyle(
              fontSize: 13,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 70,
            width: width(context),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  bottom: -40,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: mainColor.withOpacity(.5),
                      shape: BoxShape.circle,
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
