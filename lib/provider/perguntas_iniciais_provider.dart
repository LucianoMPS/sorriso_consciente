import 'package:flutter/material.dart';
import 'package:sorriso_consciente/pages/perguntas_iniciais/perguntas_iniciais_model.dart';

class PerguntasIniciaisProvider extends ChangeNotifier {
  int? idade;
  List<String>? perguntas_iniciais;

  PerguntasIniciaisProvider({
    this.idade,
    this.perguntas_iniciais,
  });

  void addAnswer(PerguntasIniciaisModel perguntas) {
    perguntas_iniciais ??= [];
    idade = perguntas.idade;

    perguntas_iniciais!.clear();
    perguntas_iniciais?.add(perguntas.radioButtonValue1!);
    perguntas_iniciais?.add(perguntas.radioButtonValue2!);
    perguntas_iniciais?.add(perguntas.radioButtonValue3!);
    perguntas_iniciais?.add(perguntas.radioButtonValue4!);
    perguntas_iniciais?.add(perguntas.radioButtonValue5!);
    perguntas_iniciais?.add(perguntas.radioButtonValue6!);
    perguntas_iniciais?.add(perguntas.radioButtonValue7!);

    notifyListeners();
  }

  Map<String, dynamic> toMap() {
    return {
      'perguntainicial1': perguntas_iniciais?[0],
      'perguntainicial2': perguntas_iniciais?[1],
      'perguntainicial3': perguntas_iniciais?[2],
      'perguntainicial4': perguntas_iniciais?[3],
      'perguntainicial5': perguntas_iniciais?[4],
      'perguntainicial6': perguntas_iniciais?[5],
      'perguntainicial6': perguntas_iniciais?[6],
      'idade': idade,
    };
  }
}