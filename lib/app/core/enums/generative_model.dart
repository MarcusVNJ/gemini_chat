enum GenerativeAiModel {
  PRO_VISION(model: "gemini-pro-vision"),
  PRO(model: "gemini-pro");


  final String model;

  const GenerativeAiModel({required this.model});

}