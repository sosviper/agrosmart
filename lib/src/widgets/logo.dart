import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final String titulo;

  const Logo({
    Key? key, 
    required this.titulo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 290,
        margin: EdgeInsets.only( top: 50 ),
        child: Column(
          children: <Widget>[
            Image( image: AssetImage('assets/logo-smartagro.png')),
            SizedBox( height: 5,),
            Align(
              alignment: Alignment.topRight,
              child: Text(this.titulo, style: TextStyle( fontSize: 20, color: Color(0xff609847) )),
            ),
          ],
        ),
      ),
    );
  }
}