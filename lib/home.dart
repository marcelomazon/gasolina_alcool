import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "";

  void _calcular() {
    //print(this._controllerAlcool);
    //print(this._controllerGasolina);

    double precoAlcool = double.tryParse(_controllerAlcool.text); // tryParse retorna nullo se nao conseguir fazer o parse
    double precoGasolina = double.tryParse(_controllerGasolina.text);
    var msg;

    if (precoAlcool != null && precoGasolina != null) {
      if (precoAlcool / precoGasolina >= 0.7) {
        msg = "Melhor abastecer com ÁLCOOL!";
      }
      else {
        msg = "Melhor abastecer com GASOLINA!";
      }
    }
    else {
      msg = "Valores inválidos. Informe os valores da gasolina e do álcool";
    }

    setState(() {
      _resultado = msg;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Gasolina ou Alcool"),
      ),
      body: Container(
        child: SingleChildScrollView (
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // estica o conteudo
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Image.asset("images/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Qual combustível utilizar?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço da Gasolina, ex: 1.99",
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _controllerGasolina,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço do Alcool, ex: 1.99",
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _controllerAlcool,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: _calcular,
                ),
              ),
              Padding(padding: EdgeInsets.only(top:20),
                child: Text(
                  '$_resultado',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
