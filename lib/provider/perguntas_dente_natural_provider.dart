import 'package:flutter/material.dart';
import 'package:sorriso_consciente/pages/perguntas_dente_natural/perguntas_dente_natural_widget.dart';

class PerguntasDenteNaturalProvider extends ChangeNotifier {
  int? pontuacao;
  List<String>? perguntas_dente_natural;
  String? resultado;

  PerguntasDenteNaturalProvider({
    this.pontuacao,
    this.perguntas_dente_natural,
    this.resultado,
  });

  void addAnswer(PerguntasDenteNaturalModel perguntas) {
    perguntas_dente_natural ??= [];
    pontuacao = perguntas.pontuacao;
    resultado = textPontuacao(perguntas.pontuacao);

    perguntas_dente_natural!.clear();
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

  String? textPontuacao(int? pontuacao) {
    if (pontuacao! <= 15) {
      return 'Saúde bucal excelente. Indica que você provavelmente mantém hábitos excelentes de higiene oral e não apresenta sinais de problemas dentários significativos. Recomenda-se manter os bons hábitos e fazer visitas regulares ao dentista para exames preventivos.';
    } else if (pontuacao <= 30) {
      return 'Saúde bucal boa. Indica que, embora você provavelmente tenha uma boa higiene oral em geral, podem ainda ser observados alguns sinais de alerta ou áreas que necessitam de melhoria. Recomenda-se prestar atenção aos sintomas indicados e considerar visitar o dentista para avaliação adicional.';
    } else if (pontuacao <= 45) {
      return 'Saúde bucal razoável. Indica que provavelmente você pode estar enfrentando alguns problemas dentários ou de higiene oral que precisam ser abordados. Recomenda-se uma consulta odontológica para avaliação e tratamento adequado.';
    } else if (pontuacao <= 70) {
      return 'Saúde bucal insatisfatória. Sugere que você provavelmente apresenta sinais significativos de problemas dentários ou higiene oral inadequada. É altamente recomendável agendar uma consulta odontológica o mais rápido possível para diagnóstico e tratamento.';
    } else {
      return 'Saúde bucal crítica. Indica uma condição bucal preocupante que pode exigir intervenção imediata. Recomenda-se procurar atendimento odontológico urgente para evitar complicações graves.';
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'perguntadente1': perguntas_dente_natural?[0],
      'perguntadente2': perguntas_dente_natural?[1],
      'perguntadente3': perguntas_dente_natural?[2],
      'perguntadente4': perguntas_dente_natural?[3],
      'perguntadente5': perguntas_dente_natural?[4],
      'perguntadente6': perguntas_dente_natural?[5],
      'perguntadente7': perguntas_dente_natural?[6],
      'perguntadente8': perguntas_dente_natural?[7],
      'perguntadente9': perguntas_dente_natural?[8],
      'perguntadente10': perguntas_dente_natural?[9],
      'pontuacao': pontuacao,
    };
  }
}
