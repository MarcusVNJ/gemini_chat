import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemini_chat/app/core/components/colors/colors_gemini.dart';
import 'package:gemini_chat/app/core/enums/interaction_type.dart';
import 'package:gemini_chat/app/interactor/actions/request_question.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';

import 'font/text_styles.dart';

class TextFieldGemini extends StatelessWidget {
  final TextEditingController _field = TextEditingController();
  TextFieldGemini({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.85,
            child: CupertinoTextField(
              controller: _field,
              suffix: IconButton(
                style: const ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.white70)),
                onPressed: _addCommunication,
                icon: const Icon(CupertinoIcons.arrow_turn_up_right,
                    size: 22, color: Colors.white),
              ),
              textAlign: TextAlign.justify,
              cursorColor: Colors.white,
              cursorHeight: 13,
              style: textStyleDefault,
              placeholder: "Entre com o prompt aqui",
              placeholderStyle: textStylePlaceholderBox,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(25), top: Radius.circular(25))),
            ),
          ),
        ],
      ),
    );
  }

  void _addCommunication() {
    requestQuestion(Communication(text: _field.value.text, type: Interaction.USER));
    _field.clear();
  }
}
