import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ObjModelScreen extends StatelessWidget{

  const ObjModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Cube(
        onSceneCreated: (Scene scene) {
          scene.world.add(
            Object(
              scale: Vector3(10.0, 10.0, 10.0),
              fileName: 'assets/obj/untitled.obj',
            ),
          );
        },
      ),
    );
  }
}