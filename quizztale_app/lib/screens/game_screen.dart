import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizztale_app/controller/question_controller.dart';
import 'package:quizztale_app/utils/widgets/custom_button.dart';
import 'package:quizztale_app/utils/widgets/progress_timer.dart';
import 'package:quizztale_app/utils/widgets/question_widget.dart'; // Ensure this import is correct

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SafeArea(
              child: GetBuilder<QuestionController>(
                init: QuestionController(),
                builder: (controller) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Question ',
                              style: Theme.of(context).textTheme.headlineMedium,
                              children: [
                                TextSpan(
                                  text:
                                      '${controller.numberOfQuestions.round()}',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                TextSpan(
                                  text: '/',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                TextSpan(
                                  text: '${controller.countOfQuestion}',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                          ),
                          ProgressTimer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.questionList.length,
                        controller: controller.pageController,
                        itemBuilder: (context, index) => QuestionWidget(
                          key: ValueKey(controller.questionList[index].id),
                          questionModel: controller.questionList[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) => CustomButton(
          onPressed: () => controller.nextQuestion(),
          text: 'Next',
        ),
      ),
    );
  }
}
