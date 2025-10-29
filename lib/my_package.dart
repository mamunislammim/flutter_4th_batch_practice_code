import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyPackage extends StatefulWidget {
  const MyPackage({super.key});

  @override
  State<MyPackage> createState() => _MyPackageState();
}

class _MyPackageState extends State<MyPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Package"), centerTitle: true, backgroundColor: Colors.green),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            totalRepeatCount: 20,
            animatedTexts: [
              TypewriterAnimatedText("Hello CoderAngon", textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.red, fontSize: 30.0, fontFamily: 'Agne'),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Discipline is the best tool'),
                  TypewriterAnimatedText('Design first, then code'),
                  TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                  TypewriterAnimatedText('Do not test bugs out, design them out'),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),

          ReadMoreText(
            'This is a sample text with a #hashtag, a mention <@123>, and a URL: https://example.com.',
            trimMode: TrimMode.Line,
            trimLines: 1,
            colorClickableText: Colors.pink,
            annotations: [
              Annotation(
                regExp: RegExp(r'#([a-zA-Z0-9_]+)'),
                spanBuilder: ({required String text, TextStyle? textStyle}) => TextSpan(
                  text: text,
                  style: textStyle?.copyWith(color: Colors.blue),
                ),
              ),
              Annotation(
                regExp: RegExp(r'<@(\d+)>'),
                spanBuilder: ({required String text, TextStyle? textStyle}) => TextSpan(
                  text: 'User123',
                  style: textStyle?.copyWith(color: Colors.green),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle tap, e.g., navigate to a user profile
                    },
                ),
              ),
              // Additional annotations for URLs...
            ],
            moreStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
