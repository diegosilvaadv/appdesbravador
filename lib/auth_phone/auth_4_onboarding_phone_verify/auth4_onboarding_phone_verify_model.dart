import '/flutter_flow/flutter_flow_util.dart';
import 'auth4_onboarding_phone_verify_widget.dart'
    show Auth4OnboardingPhoneVerifyWidget;
import 'package:flutter/material.dart';

class Auth4OnboardingPhoneVerifyModel
    extends FlutterFlowModel<Auth4OnboardingPhoneVerifyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
