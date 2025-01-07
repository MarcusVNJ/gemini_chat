import 'package:gemini_chat/app/core/enums/interaction_type.dart';
import 'package:gemini_chat/app/interactor/models/embeds/communication.dart';

interface class GeminiResponseService {

  Future<Communication> responseQuestion({required Communication request}) async =>
      const Communication(text: String, type: Interaction);
}
