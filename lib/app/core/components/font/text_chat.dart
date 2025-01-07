import 'package:flutter/material.dart';
import 'package:gemini_chat/app/core/components/font/text_styles.dart';

class TextChat extends StatelessWidget {
  final String text;

  const TextChat({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: textStyleDefault
      ),
    );
  }
}
