import '/flutter_flow/flutter_flow_util.dart';
import 'criar_conta_cell_widget.dart' show CriarContaCellWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriarContaCellModel extends FlutterFlowModel<CriarContaCellWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  final phoneNumberMask = MaskTextInputFormatter(mask: '+55 (##) #####-####');
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
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
    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

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
