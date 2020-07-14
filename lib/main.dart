import 'package:flutter/material.dart';

void main() {
  runApp(GasoAlcool());
}

class GasoAlcool extends StatefulWidget {
  @override
  _GasoAlcoolState createState() => _GasoAlcoolState();
}

class _GasoAlcoolState extends State<GasoAlcool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gasolina ou Alcool"),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.yellow)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text("Qual a melhor opção para abastecer?")
            ],
          ),
      )
    );
  }
}
