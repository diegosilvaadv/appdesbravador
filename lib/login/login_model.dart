import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for emailAddressCriar widget.
  FocusNode? emailAddressCriarFocusNode;
  TextEditingController? emailAddressCriarController;
  String? Function(BuildContext, String?)? emailAddressCriarControllerValidator;
  // State field(s) for passwordCriar widget.
  FocusNode? passwordCriarFocusNode;
  TextEditingController? passwordCriarController;
  late bool passwordCriarVisibility;
  String? Function(BuildContext, String?)? passwordCriarControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCriarVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    nomeFocusNode?.dispose();
    nomeController?.dispose();

    emailAddressCriarFocusNode?.dispose();
    emailAddressCriarController?.dispose();

    passwordCriarFocusNode?.dispose();
    passwordCriarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
