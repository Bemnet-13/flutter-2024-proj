import 'package:FantasyE/presentation/screens/faq/questions_and_answers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                context.pop();
              },
            );
          },
        ),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            final questionsWithAnswers = QA.questionsAndAnswers[index];
            return FaqTile(questionsWithAnswers);
          }),
          separatorBuilder: (BuildContext context, int index) => const Divider(
                thickness: 2,
              ),
          itemCount: QA.questionsAndAnswers.length),
    );
  }
}

class FaqTile extends StatelessWidget {
  final List<String> questionItem;
  const FaqTile(this.questionItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(questionItem[0],
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(questionItem[1], style: const TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
