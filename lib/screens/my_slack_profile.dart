import 'package:flutter/material.dart';
import 'package:hngx_stage_1/utils/colors.dart';
import 'package:hngx_stage_1/utils/widgets.dart';
import 'git_hub_profile.dart';

import 'dart:io';

class MySlackProfile extends StatefulWidget {
  MySlackProfile({Key? key}) : super(key: key);

  @override
  State<MySlackProfile> createState() => _MySlackProfileState();
}

class _MySlackProfileState extends State<MySlackProfile> {
  final String gitHubUrl = ' https://github.com/obialohenry';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.KScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.KAppBarColor,
        centerTitle: true,
        title: const Text("My Slack Profile"),
      ),
      body: Align(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                "lib/images/IMG-20220626-WA0006.jpg",
              ),
              radius: 100.0,
            ),
            addVerticalDivider(20.0),
            const Text(
              "Obialor Henry Chisomebi",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: AppColors.KAppBarColor,
              ),
            ),
            addVerticalDivider(
              20.0,
            ),
            SizedBox(
              height: 42.0,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.KAppBarColor,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GitHubProfileView(
                        githubProfileUrl: gitHubUrl,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "GitHub Profile",
                  style: TextStyle(
                    color: AppColors.KWhite,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
