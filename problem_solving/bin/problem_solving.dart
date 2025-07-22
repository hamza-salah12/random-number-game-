
import 'dart:io';
import 'dart:math';
void main() {

  print("welcome in the math game  ");

  print("input the min num");
  int min = int.parse(stdin.readLineSync()!);

  print("input the max num");
  int max = int.parse(stdin.readLineSync()!);

  if(min >= max){
    print('you shoud the max num >> min num ');
  }

  int totalQuestions = 5;
  int correct = 0;
  int wrong = 0;
  List<String> quesLog = [];

  Random rand = Random();

  for (int i = 1; i <= totalQuestions; i++) {
    int num1 = rand.nextInt(max - min + 1) + min;
    int num2 = rand.nextInt(max - min + 1) + min;
    int correctAnswer = num1 + num2;

    print('question $i:what is $num1 + $num2 ');
    print("your answer: ");
    var userInput = stdin.readLineSync();

    if (userInput == null || userInput.isEmpty) {
      print("No answer entered.");
      wrong++;
      quesLog.add(" $num1 + $num2 = Correct: $correctAnswer");

    }

    int? userAnswer = int.parse(userInput!);

    if (userAnswer == null) {
      print("invalid number input");
      wrong++;
      quesLog.add(" $num1 + $num2 = uncorrect  correct: $correctAnswer");
    } else {
      if (userAnswer == correctAnswer) {
        print(" correct!");
        correct++;
        quesLog.add(" $num1 + $num2 = $userAnswer");
      } else {
        print(" Wrong-The correct answer  $correctAnswer");
        wrong++;
        quesLog.add("$num1 + $num2 = $userAnswer correct: $correctAnswer");
      }
    }
  }

  print("correct: $correct");
  print("wrong: $wrong");
  double percentage = (correct / totalQuestions) * 100;
  print("score: ${percentage.toStringAsFixed(2)}%");

  if (percentage >= 50) {
    print(" well done");
  } else {
    print(" keep practicing");
  }

  print("thanks for playing");













}











