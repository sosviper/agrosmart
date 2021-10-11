import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String titulo;
  final String subtitulo;

  const Labels({
    Key? key, 
    required this.ruta, 
    required this.titulo, 
    required this.subtitulo
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.titulo, style: TextStyle( color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300)),
          SizedBox( height: 10 ),
          GestureDetector(
            child: Text(this.subtitulo, style: TextStyle( color: Color(0xff609847), fontSize: 18, fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          )
        ],
      ),
    );
  }
}