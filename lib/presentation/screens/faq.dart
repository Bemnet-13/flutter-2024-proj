import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});
  static const TextStyle faqStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
  );
  static const Color dividerColor = Color.fromRGBO(189, 189, 189, 0);

  // This widget is the root of your application.
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "./assets/Fantasy_Ethiopia_Logo_Transparent.png",
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Here are some FAQs about Fantasy Ethiopia.",
                style: faqStyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0, right: 10.0),
              child: Text(
                "Q. What is Fantasy Ethiopia?",
                style: faqStyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 20.0, left: 35.0, right: 10.0),
              child: Text(
                "Ans: ",
                style: faqStyle,
              ),
            ),
            const Divider(thickness: 2.0),
            const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 40.0, right: 10.0),
              child: Text(
                "Q. How does the game work?",
                style: faqStyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 20.0, left: 35.0, right: 10.0),
              child: Text(
                "Ans. ",
                style: faqStyle,
              ),
            ),
            const Divider(
              thickness: 2.0,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0, left: 35.0, right: 10.0),
              child: Text(
                "Q. How can I play?",
                style: faqStyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 20.0, left: 35.0, right: 10.0),
              child: Text(
                "Ans. ",
                style: faqStyle,
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "\u00A9 2024, Fantasy Ethiopia",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
