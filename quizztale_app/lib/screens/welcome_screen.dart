import 'package:flutter/material.dart';
import 'package:quizztale_app/utils/constant/sizes.dart';
import 'package:quizztale_app/utils/widgets/app_primary_button.dart';




class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome to',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'QuizTale',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 55, 9, 141)),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSectionsLg,
            ),
            const Text(
              'Choose Username',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Form(
              key: _formKey,
              child: child,)
            const SizedBox(
              height: AppSizes.spaceBtwSectionsMd,
            ),
            const AppPrimaryButton(
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