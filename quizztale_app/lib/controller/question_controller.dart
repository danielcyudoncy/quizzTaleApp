import 'dart:async';

import 'package:get/get.dart';
import 'package:quizztale_app/data/question_model.dart';

class QuestionController extends GetxController {
  String name = '';
  final List<QuestionModel> _questionList = [
    QuestionModel(
      id: 1,
      question: "What does a variable do?",
      answer: 2,
      options: ['Nothing', 'Stores value', 'hold an index', 'Comp']),

      QuestionModel(
        id: 2, 
        answer: 1, 
        question: "Best bootcamp you've attended", 
        options: [
          'KodeCamp BootCamp',
          'CodeHauz BootCamp',
          'University BootCamp',
          'None of the above'],),

      QuestionModel(
        id: 3, 
        answer: 1, 
        question: "Which is not a programming langusge", 
        options: [
          'Java',
          'Kotlin',
          'C',
          'MongoDb'
        ],),    
  ];
  List<QuestionModel> get questionList => [... questionList];
  bool _isPressed = false;
  bool get isPresssed => _isPressed;

  final double _numberOfQuestions = 1;
  double get numberOfQuestions => _numberOfQuestions;

  int? _selectedAnswer;
  int? get selectedAnswer => _selectedAnswer;

  int? _correctAnswer;
  int? get correctAnswer => _correctAnswer;

  int _countOfCorrectAnswers = 0;
  int get countOfCorrectAnswer => _countOfCorrectAnswers;

  final Map<int, bool> _questionIsAnswered = {};

  Timer? _timer;
  final maxSec = 10;
  final sec = 10.obs;

  double get scoreResult {
    return _countOfCorrectAnswers * 100 / _questionList.length;
  }

  void checkAnswer(QuestionModel questionModel, int seclectedAnswer) {
    _isPressed = true;
    _selectedAnswer = selectedAnswer;
    _correctAnswer = questionModel.answer;
    if(_correctAnswer ==_selectedAnswer) {
      _countOfCorrectAnswers++;
    }
    stopTimer();
    _questionIsAnswered.update(questionModel.id, (value) => true,);
    
    Future.delayed(const Duration(microseconds: 500)).then((value) => nextQuestion(),);
    update();
  }

  //check if the question has been answered
  bool checkIsQuestionAnswered(int questionId) {
    return _questionIsAnswered.entries.firstWhere((element) => element.key ==questionId,) .value;
  }

  void startTimer() {
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(sec.value > 0) {
        sec.value --;
      }
      else {
        stopTimer();
        nextQuestion();
      }
    },);
  }
  
  void resetTimer() => sec.value = maxSec;
  
  void stopTimer() => _timer?.cancel();
  
  void nextQuestion() {}
}