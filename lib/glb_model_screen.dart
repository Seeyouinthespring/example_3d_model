import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class GlbModelScreen extends StatelessWidget{

  const GlbModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ModelViewer(
        backgroundColor: Colors.black,// Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
        src: 'assets/glb/untitled.glb',
        alt: 'A 3D model of an astronaut',
        ar: true,
        autoRotate: true,
        iosSrc: 'assets/glb/untitled.glb',// need usdz here
        disableZoom: true,
      ),
    );
  }
}