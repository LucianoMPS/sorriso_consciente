import 'package:sorriso_consciente/db/banco.dart';
import 'package:sorriso_consciente/db/dbfirestore.dart';
import 'package:sorriso_consciente/db/historic.dart';
import 'package:sorriso_consciente/flutter_flow/flutter_flow_util.dart';
import 'package:sorriso_consciente/provider/perguntas_dente_natural_provider.dart';
import 'package:sorriso_consciente/provider/perguntas_iniciais_provider.dart';
import 'package:sorriso_consciente/provider/perguntas_sem_dente_natural_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static Future<bool> registerData({
    required PerguntasIniciaisProvider perguntas_iniciais_provider,
    PerguntasDenteNaturalProvider? perguntas_dente_natural_provider,
    PerguntasSemDenteNaturalProvider? perguntas_sem_dente_natural_provider,
  }) async {
    Map<String, dynamic> iniciaisData = perguntas_iniciais_provider.toMap();
    Map<String, dynamic>? denteNaturalData = perguntas_dente_natural_provider?.toMap();
    Map<String, dynamic>? semDenteNaturalData = perguntas_sem_dente_natural_provider?.toMap();

    Map<String, dynamic> combinedData = {};

    try {
      FirebaseFirestore _firebaseFirestore = await DBFirestore.instance.databaseFB;

      //Armazena localmente e no firestore caso tenha escolhido que possui dente natural
      if (perguntas_dente_natural_provider != null) {
        //Local
        var _db = await Banco.instance.inserirHistorico(
          Historic(
            pontuacao: perguntas_dente_natural_provider.pontuacao!, 
            date: DateTime.now(), 
            resultado: perguntas_dente_natural_provider.resultado!,
            )
          );

        //Firestore
        combinedData.addAll(iniciaisData);
        combinedData.addAll(denteNaturalData!);
        await _firebaseFirestore.collection('perguntas').add(combinedData);
      }

      //Armazena localmente e no firestore caso tenha escolhido que não possui dente natural
      if (perguntas_sem_dente_natural_provider != null) {
        //Local
        var _db = await Banco.instance.inserirHistorico(
          Historic(
            pontuacao: perguntas_sem_dente_natural_provider.pontuacao!, 
            date: DateTime.now(), 
            resultado: perguntas_sem_dente_natural_provider.resultado!,
            )
          );

        //Firestore
        combinedData.addAll(iniciaisData);
        combinedData.addAll(semDenteNaturalData!);
        await _firebaseFirestore.collection('perguntas').add(combinedData);
      }

      print("Dados registrados com sucesso.");
      return true;
    } catch (e) {
      print("Erro ao registrar dados: $e");
      return false;
    }
  }
}
