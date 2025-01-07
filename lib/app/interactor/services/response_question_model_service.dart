import 'dart:async';

import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';

abstract class ResponseQuestionModelService {
  late Future<Communication> Function({required Communication request})
      _function;

  setFunctionResponse(
      Future<Communication> Function({required Communication request})
          functionResponse) {
    _function = functionResponse;
  }

  Future<Communication> execute(Communication requestUser) =>
      _function(request: requestUser);
}
