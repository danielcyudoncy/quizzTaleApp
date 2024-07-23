import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizztale_app/controller/question_controller.dart';
import 'package:quizztale_app/routes/routes.dart';
import 'package:quizztale_app/utils/constant/sizes.dart';
import 'package:quizztale_app/utils/widgets/app_primary_button.dart';




class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  _submit(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();
    Get.offAndToNamed(Routes.gameScreenRoute);
    Get.find<QuestionController>() .startTimer();
  }
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
              child: GetBuilder<QuestionController>(
                init: Get.find<QuestionController>(),
                builder: (controller) =>TextFormField(
                  controller: controller.nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide:  BorderSide(width: 2),
                      borderRadius:  BorderRadius.all(Radius.circular(8)),
                    )
                  ),
                  validator: (String? val) {
                      if(val!.isEmpty) {
                        return 'Name should not be empty';
                      }else {return null;
                      }
                     },
                     onSaved: (newValue) {
                       controller.name = newValue!.trim(). toUpperCase();
                     },
                     onFieldSubmitted: (value) => _submit(context),
                ),
              )),
            const SizedBox(
              height: AppSizes.spaceBtwSectionsMd,
            ),
            AppPrimaryButton(
              buttonText: "Let's start >>>",
              buttonColor: const Color.fromARGB(255, 55, 9, 141),
              textColor: Colors.white, 
              onTap: () {
                print('tapping');
                 _submit(context);
              }
            )
          ],
        ),
      ),
    );
  }
}