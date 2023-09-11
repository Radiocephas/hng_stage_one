import 'package:flutter/material.dart';
import 'widgets.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
          // heightFactor: 1,
          child: Container(
            alignment: Alignment.center,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //profile
                      ProfileCard(),

                      //welcome card
                      WelcomeCard(),

                      //profile details
                      ProfileDetails(),

                      //github button
                      GithubButton()
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
