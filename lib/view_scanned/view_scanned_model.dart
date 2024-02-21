import '/flutter_flow/flutter_flow_util.dart';
import 'view_scanned_widget.dart' show ViewScannedWidget;
import 'package:flutter/material.dart';

class ViewScannedModel extends FlutterFlowModel<ViewScannedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
