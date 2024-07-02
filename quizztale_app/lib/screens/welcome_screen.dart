import 'package:flutter/material.dart';
import 'package:quizztale_app/utils/constant/sizes.dart';
import 'package:quizztale_app/utils/widgets/app_primary_button.dart';




class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome to',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'QuizTale',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 55, 9, 141)),
              ),
            ),
            SizedBox(
              height: AppSizes.spaceBtwSectionsLg,
            ),
            Text(
              'Choose Username',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: AppSizes.spaceBtwSectionsMd,
            ),
            AppPrimaryButton(
              buttonText: "Let's start >>>",
              buttonColor: Color.fromARGB(255, 55, 9, 141),
              textColor: Colors.white, 
            )
          ],
        ),
      ),
    );
  }
}