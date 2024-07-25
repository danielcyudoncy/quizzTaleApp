import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/question_controller.dart';

class ProgressTimer extends StatelessWidget {
  ProgressTimer({
    super.key,
  });
  final controller = Get.find<QuestionController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 60,
        width: 60,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: 1 - (controller.sec.value / 15),
              color: Colors.amber,
              backgroundColor: Colors.grey,
              strokeWidth: 4,
            ),
            Center(
              child: Text('${controller.sec.value}',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
