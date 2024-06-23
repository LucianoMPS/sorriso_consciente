import '/components/alerta_campos_nao_preenchidos_widget.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'perguntas_dente_natural_widget.dart' show PerguntasDenteNaturalWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PerguntasDenteNaturalModel
    extends FlutterFlowModel<PerguntasDenteNaturalWidget> {
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
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController7;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController8;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController9;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController10;
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
  String? get radioButtonValue7 => radioButtonValueController7?.value;
  String? get radioButtonValue8 => radioButtonValueController8?.value;
  String? get radioButtonValue9 => radioButtonValueController9?.value;
  String? get radioButtonValue10 => radioButtonValueController10?.value;

    late int pontuacao;

  void geraPontuacao() {
    pontuacao = 0;
    if (radioButtonValue1 == 'Não') {
      pontuacao += 15;
    }
    if (radioButtonValue2 == 'Sim') {
      pontuacao += 15;
    } else if (radioButtonValue2 == 'Às vezes') {
      pontuacao += 10;
    }
    if (radioButtonValue3 == 'Sim') {
      pontuacao += 15;
    }
    if (radioButtonValue4 == 'Sim') {
      pontuacao += 20;
    }
    if (radioButtonValue5 == 'Sim') {
      pontuacao += 10;
    } else if (radioButtonValue5 == 'Às vezes') {
      pontuacao += 5;
    }
    if (radioButtonValue6 == 'Sim') {
      pontuacao += 15;
    }
    if (radioButtonValue7 == 'Sim') {
      pontuacao += 10;
    } else if (radioButtonValue7 == 'Ás vezes') {
      pontuacao += 5;
    }
    if (radioButtonValue8 == 'Não') {
      pontuacao += 10;
    }
    if (radioButtonValue9 == 'Não') {
      pontuacao += 10;
    } else if (radioButtonValue9 == 'Às vezes'){
      pontuacao += 15;
    }
    if (radioButtonValue10 == 'Não') {
      pontuacao += 10;
    } else if (radioButtonValue10 == 'Às vezes') {
      pontuacao += 5;
    }
  }
}
