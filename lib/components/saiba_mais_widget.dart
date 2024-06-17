import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'saiba_mais_model.dart';
export 'saiba_mais_model.dart';

class SaibaMaisWidget extends StatefulWidget {
  const SaibaMaisWidget({super.key});

  @override
  State<SaibaMaisWidget> createState() => _SaibaMaisWidgetState();
}

class _SaibaMaisWidgetState extends State<SaibaMaisWidget> {
  late SaibaMaisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaibaMaisModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Container(
            width: 350.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF117BDF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Saiba Mais',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Olá! Você marcou uma das condições de saúde anteriores e isso significa que você faz parte de um grupo que necessita de cuidados especiais. \n\nPor isso, é muito importante que você visite o dentista regularmente. Ele vai cuidar da sua boca, identificar problemas logo no início e evitar que eles fiquem graves. Além disso, cuidar bem dos seus dentes pode ajudar a controlar sua saúde geral e deixar você mais saudável. Por isso, não se esqueça de ir ao dentista com frequência. É essencial para manter sua saúde em dia!\"\n\nOlá! Você marcou uma das condições de saúde anteriores e isso significa que você faz parte de um grupo que necessita de cuidados especiais. \n\nPor isso, é muito importante que você visite o dentista regularmente. Ele vai cuidar da sua boca, identificar problemas logo no início e evitar que eles fiquem graves. Além disso, cuidar bem dos seus dentes pode ajudar a controlar sua saúde geral e deixar você mais saudável. Por isso, não se esqueça de ir ao dentista com frequência. É essencial para manter sua saúde em dia!\"\n\nOlá! Você marcou uma das condições de saúde anteriores e isso significa que você faz parte de um grupo que necessita de cuidados especiais. ',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
