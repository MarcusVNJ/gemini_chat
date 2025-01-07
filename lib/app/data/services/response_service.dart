import 'package:gemini_chat/app/core/enums/generative_model.dart';
import 'package:gemini_chat/app/injector.dart';
import 'package:gemini_chat/app/data/services/gemini_model/gemini_response_pro_vision_impl.dart';
import 'package:gemini_chat/app/data/services/gemini_model/gemini_response_pro_impl.dart';
import 'package:gemini_chat/app/interactor/atoms/conversation_atom.dart';
import 'package:gemini_chat/app/interactor/atoms/generative_model_atom.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';
import 'package:gemini_chat/app/interactor/services/response_question_model_service.dart';

class ResponseService extends ResponseQuestionModelService {
  void sendRequest(Communication request) async {
    _selectMethodSearch();
    Communication response = await execute(request);
    conversationState.value = [...conversationState.value, response];
  }

  void _selectMethodSearch() {
    switch (generativeModel.value) {
      case GenerativeAiModel.PRO_VISION:
        var serviceModel = autoInjector.get<GeminiResponseProvision>();
        setFunctionResponse(serviceModel.responseQuestion);
      case GenerativeAiModel.PRO:
        var serviceModel = autoInjector.get<GeminiResponsePro>();
        setFunctionResponse(serviceModel.responseQuestion);
    }
  }
}