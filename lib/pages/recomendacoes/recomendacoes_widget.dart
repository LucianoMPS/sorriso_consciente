import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'recomendacoes_model.dart';
export 'recomendacoes_model.dart';

class RecomendacoesWidget extends StatefulWidget {
  const RecomendacoesWidget({super.key});

  @override
  State<RecomendacoesWidget> createState() => _RecomendacoesWidgetState();
}

class _RecomendacoesWidgetState extends State<RecomendacoesWidget> {
  late RecomendacoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecomendacoesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        endDrawer: Container(
          width: 200,
          child: Drawer(
            elevation: 16,
            child: wrapWithModel(
              model: _model.sideBarModel,
              updateCallback: () => setState(() {}),
              child: SideBarWidget(),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF117BDF),
          automaticallyImplyLeading: false,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/Teeth_Pixel.png',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            'Sorriso Consciente',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20,
              borderWidth: 1,
              buttonSize: 50,
              icon: Icon(
                Icons.menu_open,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: GradientText(
                                'Recomendações',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 30,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).secondary
                                ],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: ListView(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      10,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/unnamed.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'CUIDADOS COM A PRÓTESE',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Cuide bem da sua prótese para garantir um sorriso saudável!\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '• Lave a prótese todos os dias com água e sabão neutro ou com produtos específicos recomendados pelo dentista.\n\n• Não use pasta de dente comum na prótese, pois pode ser abrasiva e danificá-la. \n\n• Lembre-se de retirar a prótese à noite para evitar infecções na boca, faça o armazenamento em um recipiente com água limpa ou solução apropriada.\n\n• Não se esqueça de higienizar a língua e mucosas da boca.\n\n• Visite o dentista regularmente para ajustar e verificar a prótese.',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/perdeuDente.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'PERDEU UM DENTE? VEJA O QUE PODE ACONTECER',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Além de problemas estéticos, a perda de um dente pode levar a problemas como dificuldade para mastigar, alterações na fala e deslocamento dos dentes adjacentes. \n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '• Dentes próximos podem se mover para o espaço vazio, causando desalinhamento do sorriso e em casos mais graves, ao longo prazo, pode causar o amolecimento e perda de outros dentes.\n\n• Pode piorar a alimentação por ficar mais difícil mastigar alguns alimentos. \n\n• Pode causar esforço extra e desnecessário em outros dentes, podendo causar problemas futuros.\n\nO que fazer:\n\n• Visite o dentista para avaliar a melhor solução, como uma prótese, ponte ou implante.',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/dorDente.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'DOR OU SENSIBILIDADE NOS DENTES? DESCUBRA O QUE PODE SER',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Dor ou sensibilidade podem ser sinais de problemas.\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '• Cáries, dentes quebrados ou desgastados, retração da gengiva, alterações nos dentes como “lesões cervicais não cariosas”, clareamento dental, corrosão nos dentes, entre outros, são causas comuns para dor e sensibilidade.\n\n• O consumo de alimentos quentes, frios ou doces pode agravar a dor e sensibilidade.\n\n',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Marque uma consulta com o dentista para avaliação e tratamento adequado.\n\n• Em alguns casos, o uso de creme dental para dentes sensíveis pode ajudar a aliviar um pouco o desconforto.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/carie.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'ESTOU COM CÁRIE NO DENTE E AGORA?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'A cárie é um buraco no dente causado por bactérias que danificam a sua estrutura. Se você tem um buraco (cárie) no dente, é importante lembrar:\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '• Elas podem causar dor e infecção se não forem tratadas.\n\n• Somente o dentista pode tratar a cárie. Não é possível resolver esse problema em casa.\n\n• Mesmo que a cárie não esteja causando dor, ela precisa ser tratada o quanto antes para evitar que se agrave.\n\n',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .normal,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Marque uma consulta com o dentista para remover a cárie e restaurar o dente.\n\n• Escove os dentes pelo menos três vezes ao dia e use fio dental diariamente para prevenir novas cáries.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/machasFeridas.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'SINAIS DE ALERTA PARA MANCHAS E FERIDAS NA BOCA',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Manchas e feridas que não somem em 15 dias podem ser preocupantes. Podem indicar infecções, lesões pré-cancerígenas ou câncer bucal.\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Marque o quanto antes uma consulta com o dentista ou médico para uma avaliação.\n\n• Evite muita exposição ao sol, fumar e beber álcool, pois podem aumentar o risco de câncer bucal.\n\n• Tenha o hábito de sempre realizar o autoexame bucal, observado se há alterações nos dentes, língua, gengiva garganta e mucosas.\n\n• Muitas lesões na boca podem não gerar dor mas merecem atenção pois podem indicar doenças silenciosas.',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/gengivaSangrando.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'MINHA GENGIVA ESTÁ SANGRANDO. É NORMAL?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Sangramento na gengiva não é normal nem mesmo ao escovar ou usar fio dental, pode ser um sinal de gengivite. A gengivite é uma inflamação da gengiva causada pelo acúmulo de placa bacteriana (sujeiras).\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Escove os dentes pelo menos 3 vezes ao dia e use fio dental diariamente.\n\n• Visite o dentista para uma limpeza profissional e orientação de higiene bucal.',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/dentesAmolecendo.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'DENTES AMOLECENDO? ENTENDA',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Dentes amolecidos podem ser sinais de problemas graves que podem gerar a perda do(s) dente(s). Podem ser causados por doenças na gengiva conhecidas como \"doenças periodontais\", que incluem inflamações na gengiva, tártaro ou perdas de suporte ósseo, podem ainda estar relacionados a traumas dentários ou infecções nas raízes dos dentes.\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Marque uma consulta com o dentista imediatamente.\n\n• Siga as orientações de higiene bucal e tratamentos indicados pelo dentista.\n\n• Visite o dentista regularmente. ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/mauHalito.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'MAU HÁLITO? SAIBA COMO RESOLVER',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Mau hálito pode ser causado por má higiene bucal, alimentos ou problemas de saúde.\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Escove os dentes e a língua pelo menos três vezes ao dia, a maioria dos casos de mau hálito estão relacionados a má higiene bucal.\n\n• Use fio dental diariamente.\n\n• Beba bastante água.\n\n• Doenças como: cárie, inflamação na gengiva, problemas intestinais ou no trato respiratório, entre outros, podem estar relacionados ao mau hálito.\n\n• Visite o dentista regularmente para identificar e tratar a causa do mau hálito.',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/tempoDentista.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'DE QUANTO EM QUANTO TEMPO DEVO IR AO DENTISTA?',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Visitas regulares ao dentista são essenciais para manter a saúde bucal.\n\n• A maioria das pessoas deve visitar o dentista a cada 6 meses para evitar doenças ou agravamentos bucais.\n\n• Pessoas com alterações bucais podem precisar de visitas mais frequentes.\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'O que fazer:\n\n• Agende suas consultas com antecedência e siga as orientações do seu dentista.',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(4),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF117BDF),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/escovacao.jpg',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(6),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                          .width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(6),
                                                        child: Text(
                                                          'DICAS DE ESCOVAÇÃO E HIGIENE ORAL',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                                letterSpacing:
                                                                    0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Uma boa higiene bucal é a base para dentes e gengivas saudáveis.\n\n',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '• Escove os dentes após as refeições ou pelo menos três vezes ao dia.\n\n• Use fio dental diariamente para remover a placa entre os dentes.\n\n• Use enxaguante bucal quando recomendado pelo dentista.\n\n• Troque a escova de dentes a cada 3 meses, após resfriados ou quando as cerdas estiverem gastas.\n\n• Faça uso de escovas com cerdas macias e de preferência com cabeças pequenas e arredondadas pois facilitam a remoção de resíduos. \n\n• Utilize cremes dentais com flúor.\n\n• Evite cremes dentais com carvão ativado e promessas de clareamento dental pois na maioria das vezes são abrasivos e podem desgastar os dentes. \n\n• Não compartilhe escovas dentais, é um item de uso pessoal e algumas doenças podem ser transmitidas nesse compartilhamento. ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
