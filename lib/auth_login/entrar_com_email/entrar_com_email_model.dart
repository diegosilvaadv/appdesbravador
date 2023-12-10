import '/flutter_flow/flutter_flow_util.dart';
import 'entrar_com_email_widget.dart' show EntrarComEmailWidget;
import 'package:flutter/material.dart';

class EntrarComEmailModel extends FlutterFlowModel<EntrarComEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
