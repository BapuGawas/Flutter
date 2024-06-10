import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class SingleQuestionModel {
  
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question,this.options,this.answerIndex});

}

class _QuizAppState extends State {
  List allQueation = [
    const SingleQuestionModel(
      question: "Who developed the Flutter Framework and continues to maintain it today?",
      options: ["Facebook","Microsoft","Google","Oracle"],
      answerIndex: 2
    ),
    const SingleQuestionModel(
      question: "Which programming language is used to build Flutter applications?",
      options: ["Kotlin","Dart","Java","Go ",],
      answerIndex: 1
    ),
    const SingleQuestionModel(
      question: "How many types of widgets are there in Flutter?",
      options: ["2", "4", "6", "8+"],
      answerIndex: 0
    ),
    const SingleQuestionModel(
      question: "What element is used as an identifier for components when programming in Flutter?",
      options: ["Widgets","Keys","Element","Serial",],
      answerIndex: 1
    ),
    const SingleQuestionModel(
      question: "What is the key configuration file used when building a Flutter project?",
      options: ["pubspec.yaml","pubspec.xml","config.html","root.xml",],
      answerIndex: 0
    )
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnsIndex = -1;
  int noOfCorrectAns = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnsIndex != -1) {
      if (buttonIndex == allQueation[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnsIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnsIndex == -1) {
      return;
    }

    if (selectedAnsIndex == allQueation[questionIndex].answerIndex) {
      noOfCorrectAns = noOfCorrectAns + 1;
    }
    if (selectedAnsIndex != -1) {
      if (questionIndex == allQueation.length - 1) {
        questionScreen = false;
        setState(() {});
      }
      selectedAnsIndex = -1;
      setState(() {
        questionIndex++;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  "${questionIndex + 1}/${allQueation.length}",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 140,
              child: Text(
                "${allQueation[questionIndex].question}",
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    setState(() {
                      selectedAnsIndex = 0;
                    });
                  }
                },
                child: Text(
                  "A. ${allQueation[questionIndex].options[0]}",
                  style: const TextStyle(fontSize: 20, 
                  color: Colors.black,
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    setState(() {
                      selectedAnsIndex = 1;
                    });
                  }
                },
                child: Text(
                  "B. ${allQueation[questionIndex].options[1]}",
                  style: const TextStyle(fontSize: 20,
                  color: Colors.black
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    setState(() {
                      selectedAnsIndex = 2;
                    });
                  }
                },
                child: Text(
                  "C. ${allQueation[questionIndex].options[2]}",
                  style: const TextStyle(fontSize: 20,
                  color: Colors.black
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    setState(() {
                      selectedAnsIndex = 3;
                    });
                  }
                },
                child: Text(
                  "D. ${allQueation[questionIndex].options[3]}",
                  style: const TextStyle(fontSize: 20,
                  color: Colors.black,  
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: () {
            validateCurrentPage();
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network(
                "https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
                height: 380,
                width: 380,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Congratulations!!!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You have complited the Quiz",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "$noOfCorrectAns/${allQueation.length}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  questionIndex = 0;
                  questionScreen = true;
                  selectedAnsIndex = -1;
                  noOfCorrectAns = 0;
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,
                  color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
