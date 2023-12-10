import '/flutter_flow/flutter_flow_util.dart';
import 'criar_conta_google_widget.dart' show CriarContaGoogleWidget;
import 'package:flutter/material.dart';

class CriarContaGoogleModel extends FlutterFlowModel<CriarContaGoogleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameController1;
  String? Function(BuildContext, String?)? yourNameController1Validator;
  String? _yourNameController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor digite seu nome para continuar';
    }

    return null;
  }

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameController2;
  String? Function(BuildContext, String?)? yourNameController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  DateTime? datePicked;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    yourNameController1Validator = _yourNameController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    yourNameFocusNode1?.dispose();
    yourNameController1?.dispose();

    usernameFocusNode?.dispose();
    usernameController?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
