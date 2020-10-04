import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  var _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks!',
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto),
          ],
        )),
        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 7.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        SizedBox(width: 7.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar)
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
