// import 'package:flutter/material.dart';
// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
// class ARWidget extends StatefulWidget {
//   @override
//   _ARWidgetState createState() => _ARWidgetState();
// }
//
// class _ARWidgetState extends State<ARWidget> {
//   late ARCoreController? arCoreController;
//
//   @override
//   void dispose() {
//     arCoreController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ARCoreView(
//       onARCoreViewCreated: _onARCoreViewCreated,
//     );
//   }
//
//   void _onARCoreViewCreated(ARCoreController controller) {
//     arCoreController = controller;
//     // Set up your AR session here
//   }
// }
//
//
// void _onARCoreViewCreated(ARCoreController controller) {
//   arCoreController = controller;
//
//   // Create an anchor at the origin (0, 0, 0)
//   final anchor = Anchor(
//     pose: Pose.translation(
//       vector.Vector3(0, 0, 0),
//     ),
//     isTrackable: true,
//   );
//
//   // Load a 3D model and attach it to the anchor
//   arCoreController.addArCoreNode(
//     ArCoreReferenceNode(
//       name: 'MyModel',
//       objectUrl: 'path_to_your_3d_model.glb',
//       position: vector.Vector3(0, 0, 0),
//       scale: vector.Vector3(0.1, 0.1, 0.1),
//       rotation: vector.Vector3(0, 0, 0),
//       isOpaque: false,
//       isShadowReceiver: false,
//       isShadowCaster: false,
//       // Other properties
//     ),
//     parent: anchor,
//   );
// }

