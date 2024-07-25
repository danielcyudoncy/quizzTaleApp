import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizztale_app/controller/question_controller.dart';
import 'package:quizztale_app/data/question_model.dart';
import 'answer_option.dart';

class QuestionWidget extends StatelessWidget {
  final QuestionModel questionModel;

  const QuestionWidget({
    required Key key,
    required this.questionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionModel.question,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...List.generate(
            4,
            (index) => Column(
              children: [
                AnswerOption(
                  questionId: questionModel.id,
                  option: questionModel.options[index],
                  text: questionModel.options[index],
                  index: index,
                  onPressed: () {
                    Get.find<QuestionController>()
                        .checkAnswer(questionModel, index);
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
