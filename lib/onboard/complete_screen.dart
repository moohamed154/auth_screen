import 'package:auth_screen/constants.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Account Created",
                    style: TextStyle(
                      fontSize: 20,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("${imagePath}three.jpg"),
            Text(
              "Hi there,\n\nComplete your profile to get\na personalized experience",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: width(context) * 0.84,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Complete Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Skip",
              style: TextStyle(
                fontSize: 20,
                color: mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
