import 'package:gemini_chat/app/core/enums/generative_model.dart';
import 'package:gemini_chat/app/core/enums/interaction_type.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';
import 'package:gemini_chat/app/interactor/services/gemini_response_service.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiResponsePro implements GeminiResponseService {
  @override
  Future<Communication> responseQuestion({required Communication request}) async {

    final GenerativeModel model = GenerativeModel(model: GenerativeAiModel.PRO.model, apiKey: "sua_chave_de_api_aqui");
    final String prompt = request.text;
    final List<Content> content = [Content.text(prompt)];
    final GenerateContentResponse response = await model.generateContent(content);

    return Communication(text: response.text, type: Interaction.AI);
  }
}
