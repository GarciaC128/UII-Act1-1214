import 'package:flutter/material.dart';
import 'package:garcia1214/pantallas1214/panel1214/panel_pantalla1214.dart';

void main() => runApp(MiAppRestaurante1214());

class MiAppRestaurante1214 extends StatelessWidget {
  const MiAppRestaurante1214({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carlo Gourmet Garcia1214",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: const PanelPantalla1214(),
    );
  }
}
