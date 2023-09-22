import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patienttracking/User/screens/SignUp/signupScreen.dart';
import 'package:patienttracking/commonScreens/Login/loginScreen.dart';

class FooterWidget extends StatelessWidget {
  final String Texts, Title;
  const FooterWidget({
    Key? key,
    required this.Texts,
    required this.Title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.transparent)))),
            onPressed: () {
              if (Title == "Login") {
                Get.off(() => const LogingScreen());
              } else {
                Get.to(() => const SignUpScreen());
              }
            },
            child: Text.rich(
              TextSpan(
                  text: Texts,
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                        text: Title,
                        style: const TextStyle(color: Colors.lightBlueAccent))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
