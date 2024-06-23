import 'package:flutter/material.dart';
import 'package:sorriso_consciente/pages/perguntas_sem_dente_natural/perguntas_sem_dente_natural_model.dart';

class PerguntasSemDenteNaturalProvider extends ChangeNotifier {
  int? pontuacao;
  List<String>? perguntas_sem_dente_natural;

  PerguntasSemDenteNaturalProvider({
    this.pontuacao,
    this.perguntas_sem_dente_natural,
  });

  void addAnswer(PerguntasSemDenteNaturalModel perguntas) {
    perguntas_sem_dente_natural ??= [];
    pontuacao = perguntas.pontuacao;

    perguntas_sem_dente_natural?.add(perguntas.radioButtonValue1!);
    perguntas_sem_dente_natural?.add(perguntas.radioButtonValue2!);
    perguntas_sem_dente_natural?.add(perguntas.radioButtonValue3!);
    perguntas_sem_dente_natural?.add(perguntas.radioButtonValue4!);
    perguntas_sem_dente_natural?.add(perguntas.radioButtonValue5!);
    perguntas_sem_dente_natural?.add(perguntas.radioButtonValue6!);

    notifyListeners();
  }

  void clear() {
    pontuacao = null;
    perguntas_sem_dente_natural?.clear();
  }
}