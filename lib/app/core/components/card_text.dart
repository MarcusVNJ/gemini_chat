import 'package:flutter/material.dart';
import 'package:gemini_chat/app/core/components/colors/colors_gemini.dart';
import 'package:gemini_chat/app/core/components/font/text_chat.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';

class CardText extends StatelessWidget {

  final Communication communication;

  const CardText({super.key, required this.communication});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Visibility(
          visible: communication.type.isAI,
          child: const Icon(Icons.construction),
        ),
        Card(
          color: primaryColor,
          elevation: 500,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.85,
            child: TextChat(
              text: communication.text,
            ),
          ),
        ),
        Visibility(
          visible: !communication.type.isAI,
          child: const Icon(Icons.account_circle),
        ),
      ],
    );
  }
}
