import 'package:flutter/material.dart';
import 'package:sorriso_consciente/pages/perguntas_dente_natural/perguntas_dente_natural_widget.dart';

class PerguntasDenteNaturalProvider extends ChangeNotifier {
  int? pontuacao;
  List<String>? perguntas_dente_natural;

  PerguntasDenteNaturalProvider({
    this.pontuacao,
    this.perguntas_dente_natural,
  });

  void addAnswer(PerguntasDenteNaturalModel perguntas) {
    perguntas_dente_natural ??= [];
    pontuacao = perguntas.pontuacao;

    perguntas_dente_natural?.add(perguntas.radioButtonValue1!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue2!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue3!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue4!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue5!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue6!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue7!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue8!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue9!);
    perguntas_dente_natural?.add(perguntas.radioButtonValue10!);

    notifyListeners();
  }

  void clear() {
    pontuacao = null;
    perguntas_dente_natural?.clear();
  }
}