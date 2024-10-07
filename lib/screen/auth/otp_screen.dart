import 'package:flutter/material.dart';
import 'package:next_door/screen/common_widgets/text_widget.dart';
import 'package:next_door/screen/home/home_screen.dart';
import 'package:next_door/utils/screen_utils.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                text: "Verify your OTP to get started",
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter your OTP"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 45,
                width: size(context).width / 2,
                child: FloatingActionButton.extended(
                    onPressed: () {
                      pushScreen(context, const HomeScreen());
                    },
                    label: const TextWidget(text: "Verify OTP")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
