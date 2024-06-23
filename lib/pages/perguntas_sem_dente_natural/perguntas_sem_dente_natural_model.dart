import '/components/alerta_campos_nao_preenchidos_widget.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'perguntas_sem_dente_natural_widget.dart'
    show PerguntasSemDenteNaturalWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PerguntasSemDenteNaturalModel
    extends FlutterFlowModel<PerguntasSemDenteNaturalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController5;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController6;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
  String? get radioButtonValue4 => radioButtonValueController4?.value;
  String? get radioButtonValue5 => radioButtonValueController5?.value;
  String? get radioButtonValue6 => radioButtonValueController6?.value;

  late int pontuacao;

  void geraPontuacao() {
    pontuacao = 0;
    if (radioButtonValue1 == 'Não') {
      pontuacao += 15;
    }
    if (radioButtonValue2 == 'Sim') {
      pontuacao += 20;
    }
    if (radioButtonValue3 == 'Sim') {
      pontuacao += 10;
    } else if (radioButtonValue3 == 'Às vezes') {
      pontuacao += 5;
    }
    if (radioButtonValue4 == 'Sim') {
      pontuacao += 10;
    } else if (radioButtonValue4 == 'Às vezes') {
      pontuacao += 5;
    }
    if (radioButtonValue5 == 'Não') {
      pontuacao += 10;
    } 
    if (radioButtonValue6 == 'Não') {
      pontuacao += 15;
    } else if (radioButtonValue6 == 'Às vezes') {
      pontuacao += 10;
    }
  }
}
