import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigation.dart';
import 'navigation_index_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationIndexModel>(create: (context) => NavigationIndexModel()),
      ],
      child: MaterialApp(

        title: 'Flutter Demo',
        color: Colors.black,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: CustomNavigation(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}