class Historic {
  int pontuacao;
  DateTime date;
  String resultado;

  Historic({
    required this.pontuacao,
    required this.date,
    required this.resultado,
  });

  Map<String, dynamic> toMap() {
    return {
      'data': date.toIso8601String(),
      'pontuacao': pontuacao,
      'resultado': resultado,
    };
  }
}