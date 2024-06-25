import 'package:flutter/material.dart';
import 'package:sorriso_consciente/pages/perguntas_sem_dente_natural/perguntas_sem_dente_natural_model.dart';

class PerguntasSemDenteNaturalProvider extends ChangeNotifier {
  int? pontuacao;
  List<String>? perguntas_sem_dente_natural;
  String? resultado;

  PerguntasSemDenteNaturalProvider({
    this.pontuacao,
    this.perguntas_sem_dente_natural,
    this.resultado,
  });

  void addAnswer(PerguntasSemDenteNaturalModel perguntas) {
    perguntas_sem_dente_natural ??= [];
    pontuacao = perguntas.pontuacao;
    resultado = textPontuacao(perguntas.pontuacao);
    
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
    resultado = null;

    notifyListeners();
  }

  String? textPontuacao(int? pontuacao) {
    if (pontuacao! <= 5) {
      return 'Saúde bucal excelente. Indica que você provavelmente mantém hábitos excelentes de higiene oral e não apresenta sinais de problemas dentários significativos. Recomenda-se manter os bons hábitos e fazer visitas regulares ao dentista para exames preventivos.';
    } else if (pontuacao <= 20) {
      return 'Saúde bucal boa. Indica que, embora você provavelmente tenha uma boa higiene oral em geral, podem ainda ser observados alguns sinais de alerta ou áreas que necessitam de melhoria. Recomenda-se prestar atenção aos sintomas indicados e considerar visitar o dentista para avaliação adicional.';
    } else if (pontuacao <= 45) {
      return 'Saúde bucal razoável. Indica que provavelmente você pode estar enfrentando alguns problemas dentários ou de higiene oral que precisam ser abordados. Recomenda-se uma consulta odontológica para avaliação e tratamento adequado.';
    } else if (pontuacao <= 60) {
      return 'Saúde bucal insatisfatória. Sugere que você provavelmente apresenta sinais significativos de problemas dentários ou higiene oral inadequada. É altamente recomendável agendar uma consulta odontológica o mais rápido possível para diagnóstico e tratamento.';
    } else {
      return 'Saúde bucal crítica. Indica uma condição bucal preocupante que pode exigir intervenção imediata. Recomenda-se procurar atendimento odontológico urgente para evitar complicações graves.';
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'perguntaprotese1': perguntas_sem_dente_natural?[0],
      'perguntaprotese2': perguntas_sem_dente_natural?[1],
      'perguntaprotese3': perguntas_sem_dente_natural?[2],
      'perguntaprotese4': perguntas_sem_dente_natural?[3],
      'perguntaprotese5': perguntas_sem_dente_natural?[4],
      'perguntaprotese6': perguntas_sem_dente_natural?[5],
      'pontuacao': pontuacao,
    };
  }
}
