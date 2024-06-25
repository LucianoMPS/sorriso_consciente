import 'package:sorriso_consciente/db/banco.dart';

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

  static Future<List<Historic>> recuperarHistorico() async {
    final db = await Banco.instance.database;
    List<Map<String, dynamic>> lista =
        await db.rawQuery('SELECT * FROM historico ORDER BY data DESC');
    List<Historic> historico = [];

    if (lista.isNotEmpty) {
      for (var item in lista) {
        Historic historic = Historic(
          pontuacao: item['pontuacao'],
          date: DateTime.parse(item['data']),
          resultado: item['resultado'],
        );
        historico.add(historic);
      }
      return historico;
    } else {
      throw Exception('Banco vazio');
    }
  }
}