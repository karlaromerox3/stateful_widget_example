import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState(); //regresa el estado de la app en el element tree
}

class _MyAppState extends State<MyApp> {
  //este es un estado
  String _textValue= ''; //Hace que se refleje inmediatamente

  void _updateTextFieldValue(String v){
    setState(() {
      _textValue = v;
    });
    print(_textValue);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("State on Stateless Widget"),
          ),
          body: Padding(
            padding: EdgeInsets.all(20.0),
            //Para seguir con el arbol de widgets
            child: Column( //Nos deja tomar más widgets dentro de otro
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              //Para anidar nuevos elementos
              children: <Widget>[
                TextField(
                  onChanged: (value) => _updateTextFieldValue(value), //onChanged es un evento
                ),
                SizedBox(height: 10.0,), //Para dejar un espacio entre los widgets
                Text(_textValue),
              ],
            ),
          ),
        )
    );

  }
}
