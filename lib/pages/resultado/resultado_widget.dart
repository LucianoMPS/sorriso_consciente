import 'package:sorriso_consciente/db/historic.dart';
import 'package:sorriso_consciente/provider/perguntas_dente_natural_provider.dart';
import 'package:sorriso_consciente/provider/perguntas_iniciais_provider.dart';
import 'package:sorriso_consciente/provider/perguntas_sem_dente_natural_provider.dart';

import '/components/alerta_sobre_app_widget.dart';
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
import 'resultado_model.dart';
export 'resultado_model.dart';

class ResultadoWidget extends StatefulWidget {
  const ResultadoWidget({super.key});

  @override
  State<ResultadoWidget> createState() => _ResultadoWidgetState();
}

class _ResultadoWidgetState extends State<ResultadoWidget> {
  late ResultadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultadoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int? pontuacao = 0 ;
    List<String>? perguntas;
    String? resultado = '';
    // Inicializando as variáveis pontuacao e perguntas
    if (Provider.of<PerguntasIniciaisProvider>(context, listen: false).perguntas_iniciais![6] == 'Sim') {
      pontuacao = Provider.of<PerguntasDenteNaturalProvider>(context, listen: false).pontuacao;
      perguntas = Provider.of<PerguntasDenteNaturalProvider>(context, listen: false).perguntas_dente_natural;
    } else {
      pontuacao = Provider.of<PerguntasSemDenteNaturalProvider>(context, listen: false).pontuacao;
      perguntas = Provider.of<PerguntasSemDenteNaturalProvider>(context, listen: false).perguntas_sem_dente_natural;
    }

    resultado = textPontuacao(pontuacao);
    
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        endDrawer: Container(
          width: 200.0,
          child: Drawer(
            elevation: 16.0,
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
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Teeth_Pixel.png',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            'Sorriso Consciente',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 50.0,
              icon: Icon(
                Icons.menu_open,
                color: Colors.white,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: GradientText(
                                'Resultado',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
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
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                decoration: BoxDecoration(
                                  color: Color(0xFF117BDF),
                                  borderRadius: BorderRadius.circular(14.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Pontuação: ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: '$pontuacao',
                                              style: TextStyle(
                                                fontSize: 30.0,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Text(
                                        '$resultado',
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('PerguntasIniciais');
                                  },
                                  text: 'Repetir',
                                  options: FFButtonOptions(
                                    width: 120.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF117BDF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(0.0),
                                    hoverColor: Color(0xFFFFF800),
                                    hoverTextColor: Colors.black,
                                  ),
                                ),
                                Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.5,
                                                child: AlertaSobreAppWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      context.pushNamed('Recomendacoes');
                                    },
                                    text: 'Finalizar',
                                    options: FFButtonOptions(
                                      width: 120.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF117BDF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                      hoverColor: Color(0xFFFFF800),
                                      hoverTextColor: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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

    String? textPontuacao (int? pontuacao) {
    if (Provider.of<PerguntasIniciaisProvider>(context, listen: false).perguntas_iniciais![6] == 'Sim' && Provider.of<PerguntasDenteNaturalProvider>(context, listen: false).pontuacao != null) {
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
    } else if (Provider.of<PerguntasSemDenteNaturalProvider>(context, listen: false).pontuacao != null && Provider.of<PerguntasIniciaisProvider>(context, listen: false).perguntas_iniciais![6] == 'Não'){
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
  }
}
