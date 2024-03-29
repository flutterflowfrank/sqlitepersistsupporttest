import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for idToScan widget.
  FocusNode? idToScanFocusNode;
  TextEditingController? idToScanController;
  String? Function(BuildContext, String?)? idToScanControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    idToScanFocusNode?.dispose();
    idToScanController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
