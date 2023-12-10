import '/flutter_flow/flutter_flow_util.dart';
import 'editar_clube_widget.dart' show EditarClubeWidget;
import 'package:flutter/material.dart';

class EditarClubeModel extends FlutterFlowModel<EditarClubeWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nomedoclube widget.
  FocusNode? nomedoclubeFocusNode;
  TextEditingController? nomedoclubeController;
  String? Function(BuildContext, String?)? nomedoclubeControllerValidator;
  // State field(s) for sobreoclube widget.
  FocusNode? sobreoclubeFocusNode;
  TextEditingController? sobreoclubeController;
  String? Function(BuildContext, String?)? sobreoclubeControllerValidator;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoController;
  String? Function(BuildContext, String?)? enderecoControllerValidator;
  DateTime? datePicked;
  // State field(s) for dieretor widget.
  FocusNode? dieretorFocusNode;
  TextEditingController? dieretorController;
  String? Function(BuildContext, String?)? dieretorControllerValidator;
  // State field(s) for dieretores widget.
  FocusNode? dieretoresFocusNode;
  TextEditingController? dieretoresController;
  String? Function(BuildContext, String?)? dieretoresControllerValidator;
  // State field(s) for secretario widget.
  FocusNode? secretarioFocusNode;
  TextEditingController? secretarioController;
  String? Function(BuildContext, String?)? secretarioControllerValidator;
  // State field(s) for capelao widget.
  FocusNode? capelaoFocusNode;
  TextEditingController? capelaoController;
  String? Function(BuildContext, String?)? capelaoControllerValidator;
  // State field(s) for instrutores widget.
  FocusNode? instrutoresFocusNode;
  TextEditingController? instrutoresController;
  String? Function(BuildContext, String?)? instrutoresControllerValidator;
  // State field(s) for conselheiros widget.
  FocusNode? conselheirosFocusNode;
  TextEditingController? conselheirosController;
  String? Function(BuildContext, String?)? conselheirosControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomedoclubeFocusNode?.dispose();
    nomedoclubeController?.dispose();

    sobreoclubeFocusNode?.dispose();
    sobreoclubeController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoController?.dispose();

    dieretorFocusNode?.dispose();
    dieretorController?.dispose();

    dieretoresFocusNode?.dispose();
    dieretoresController?.dispose();

    secretarioFocusNode?.dispose();
    secretarioController?.dispose();

    capelaoFocusNode?.dispose();
    capelaoController?.dispose();

    instrutoresFocusNode?.dispose();
    instrutoresController?.dispose();

    conselheirosFocusNode?.dispose();
    conselheirosController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
