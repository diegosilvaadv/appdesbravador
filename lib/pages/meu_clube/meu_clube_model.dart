import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meu_clube_widget.dart' show MeuClubeWidget;
import 'package:flutter/material.dart';

class MeuClubeModel extends FlutterFlowModel<MeuClubeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar component.
  late NavBarModel navBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
