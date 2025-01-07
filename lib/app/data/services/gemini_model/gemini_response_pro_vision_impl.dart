import 'package:gemini_chat/app/core/enums/interaction_type.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';
import 'package:gemini_chat/app/interactor/services/gemini_response_service.dart';

class GeminiResponseProvision implements GeminiResponseService {
  @override
  Future<Communication> responseQuestion({required Communication request}) async {
    return const Communication(
        text: "Resposta usando a versao basic", type: Interaction.AI);
  }
}
