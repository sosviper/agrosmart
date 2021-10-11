import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartagro/src/widgets/custom_button.dart';
import 'package:smartagro/src/widgets/custom_input.dart';
import 'package:smartagro/src/widgets/labels.dart';
import 'package:smartagro/src/widgets/logo.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo( titulo: 'Cultivo Inteligente' ),
                  
                _Form(),
                  
                Labels( 
                  ruta: 'register', 
                  titulo: '¿No tienes cuenta?', 
                  subtitulo: 'Crea una ahora!', 
                ),
                  
                Text('Términos y condiciones de uso', style: TextStyle( fontWeight: FontWeight.w200),)
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class _Form extends StatefulWidget {

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( top: 40 ),
      padding: EdgeInsets.symmetric( horizontal: 50 ),
      child: Column(
        children: <Widget>[
          
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),

          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            // keyboardType: TextInputType.emailAddress,
            textController: passCtrl,
            isPassword: true,
          ),
          
          
          CustomButton(
            text: 'Ingrese', 
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          ),
        ],
      ),
    );
  }
} 


