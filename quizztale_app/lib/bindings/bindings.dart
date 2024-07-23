import 'package:get/get.dart';
import 'package:quizztale_app/controller/question_controller.dart';
import 'package:quizztale_app/controller/splash_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionController());
    Get.lazyPut(() => SplashController());
  }
}