import 'package:asp/asp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:gemini_chat/app/core/components/card_text.dart';
import 'package:gemini_chat/app/core/components/text_field.dart';
import 'package:gemini_chat/app/interactor/atoms/conversation_atom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: RxBuilder(
                builder: (_) => ListView.builder(
                  itemCount: conversationState.value.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardText(communication: conversationState.value[index]);
                  },
                ),
              ),
            ),
            TextFieldGemini(),
          ],
        ),
      ),
    );
  }
}
