import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector64;


class ARAugmentedImagesScreen extends StatefulWidget {
  const ARAugmentedImagesScreen({super.key});

  @override
  State<ARAugmentedImagesScreen> createState() => _ARAugmentedImagesScreenState();
}



class _ARAugmentedImagesScreenState extends State<ARAugmentedImagesScreen>
{
  ArCoreController? arCoreController;

  whenArCoreViewCreated(ArCoreController coreController)
  {
    print("whenArCoreViewCreated");
    arCoreController = coreController;

    arCoreController!.onPlaneTap = whenPlaneDetectedThenTap;
  }

  whenPlaneDetectedThenTap(List<ArCoreHitTestResult> tapsResult)
  {
    print("whenPlaneDetectedThenTap");
    final tapPosition = tapsResult.first;

    //display image
    displayAugmentedImage(tapPosition);
  }

  displayAugmentedImage(ArCoreHitTestResult tapPosition) async
  {
    print("displayAugmentedImage");
    final bytesImage = (await rootBundle.load("images/captain.png")).buffer.asUint8List();

    final imagePositionRotation = ArCoreNode(
      image: ArCoreImage(bytes: bytesImage, width: 500, height: 500),
      position: tapPosition.pose.translation + vector64.Vector3(0, 0, 0),
      rotation: tapPosition.pose.rotation + vector64.Vector4(0, 0, 0, 0),
    );

    arCoreController!.addArCoreNodeWithAnchor(imagePositionRotation);
  }
  // displaymodel(ArCoreHitTestResult tapPosition) async
  // {
  //   print("displaymodel");
  //   final bytesImage = (await rootBundle.load("images/lion_lowpoly.glb")).buffer.asUint8List();
  //
  //   final imagePositionRotation = ArCoreNode(
  //     image: ArCoreImage(bytes: bytesImage, width: 500, height: 500),
  //     position: tapPosition.pose.translation + vector64.Vector3(0, 0, 0),
  //     rotation: tapPosition.pose.rotation + vector64.Vector4(0, 0, 0, 0),
  //   );
  //   // final imagePositionRotation2 = ArCoreNode(
  //   //   ArCoreReferenceNode(
  //   //     name: 'MyModel',
  //   //     objectUrl: 'path_to_your_3d_model.glb',
  //   //     position: vector64.Vector3(0, 0, 0),
  //   //     scale: vector64.Vector3(0.1, 0.1, 0.1),
  //   //     rotation: vector64.Vector4(0, 0, 0,0),
  //   //     // Other properties
  //   //   ),
  //   // );
  //
  //   arCoreController!.addArCoreNodeWithAnchor(imagePositionRotation);
  // }

  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "AR Augmented Images from Assets"
        ),
        centerTitle: true,
      ),
      body: ArCoreView(
        enableTapRecognizer: true,
        onArCoreViewCreated: whenArCoreViewCreated,
      ),
    );
  }
}


