import 'package:auto_injector/auto_injector.dart';
import 'package:gemini_chat/app/data/services/gemini_model/gemini_response_pro_impl.dart';
import 'package:gemini_chat/app/data/services/gemini_model/gemini_response_pro_vision_impl.dart';
import 'package:gemini_chat/app/data/services/response_service.dart';

final AutoInjector autoInjector = AutoInjector();

void registerInjectClasses() async {
  autoInjector.addSingleton(ResponseService.new);
  autoInjector.addLazySingleton(GeminiResponsePro.new);
  autoInjector.addLazySingleton(GeminiResponseProvision.new);
  autoInjector.commit();
}
