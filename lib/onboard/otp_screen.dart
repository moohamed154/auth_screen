import 'package:auth_screen/constants.dart';
import 'package:auth_screen/onboard/complete_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field_v2/otp_field_style_v2.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                    "Verification screen",
                    style: TextStyle(
                      fontSize: 20,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("${imagePath}two.jpg"),
            Text(
              "Enter the 5 digit number sent to\nthis phone number 01029957762",
              style: TextStyle(
                fontSize: 20,
                color: mainColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: mainColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: OTPTextFieldV2(
                controller: OtpFieldControllerV2(),
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.center,
                fieldWidth: 45,
                fieldStyle: FieldStyle.underline,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                spaceBetween: 10,
                otpFieldStyle: OtpFieldStyle(
                  borderColor: mainColor,
                  enabledBorderColor: mainColor,
                ),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CompleteScreen();
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
                  "Verify",
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
              "Resend code",
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
