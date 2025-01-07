enum Interaction {
  AI(type: 0),
  USER(type: 1);

  final int type;

  bool get isAI => this == AI;

  const Interaction({required this.type});
}
