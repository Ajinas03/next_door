import 'package:flutter/material.dart';
import 'package:next_door/screen/auth/otp_screen.dart';
import 'package:next_door/screen/common_widgets/text_widget.dart';
import 'package:next_door/utils/screen_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: TextWidget(
                fontSize: 20,
                text:
                    "LogIn\nWelcome to NEXT DOOR\nExplore what your neighbours are making",
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "(+91) Enter your mobile number"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 45,
                width: size(context).width / 2,
                child: FloatingActionButton.extended(
                    onPressed: () {
                      pushScreen(context, const OtpScreen());
                    },
                    label: const TextWidget(text: "Get OTP")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
