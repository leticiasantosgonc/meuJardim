import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EntrarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for login_email widget.
  TextEditingController? loginEmailController;
  String? Function(BuildContext, String?)? loginEmailControllerValidator;
  // State field(s) for login_senha widget.
  TextEditingController? loginSenhaController;
  late bool loginSenhaVisibility;
  String? Function(BuildContext, String?)? loginSenhaControllerValidator;
  // State field(s) for cadastrar_email widget.
  TextEditingController? cadastrarEmailController;
  String? Function(BuildContext, String?)? cadastrarEmailControllerValidator;
  // State field(s) for cadastrar_senha widget.
  TextEditingController? cadastrarSenhaController;
  late bool cadastrarSenhaVisibility;
  String? Function(BuildContext, String?)? cadastrarSenhaControllerValidator;
  // State field(s) for confirmar_senha widget.
  TextEditingController? confirmarSenhaController;
  late bool confirmarSenhaVisibility;
  String? Function(BuildContext, String?)? confirmarSenhaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginSenhaVisibility = false;
    cadastrarSenhaVisibility = false;
    confirmarSenhaVisibility = false;
  }

  void dispose() {
    loginEmailController?.dispose();
    loginSenhaController?.dispose();
    cadastrarEmailController?.dispose();
    cadastrarSenhaController?.dispose();
    confirmarSenhaController?.dispose();
  }

  /// Additional helper methods are added here.

}
