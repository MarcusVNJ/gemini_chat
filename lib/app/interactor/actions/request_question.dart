import 'package:gemini_chat/app/injector.dart';
import 'package:gemini_chat/app/data/services/response_service.dart';
import 'package:gemini_chat/app/interactor/atoms/conversation_atom.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';

requestQuestion(Communication request) {
  conversationState.value = [...conversationState.value, request];
  _responseQuestion(conversationState.value.last);
}

alterQuestionRequest(Communication request) {
  conversationState.value.last = request;
}

deleteQuestionRequest() {
  conversationState.value.removeLast();
}

_responseQuestion(Communication request) async {
  final reponseService = autoInjector.get<ResponseService>();
  reponseService.sendRequest(request);
}