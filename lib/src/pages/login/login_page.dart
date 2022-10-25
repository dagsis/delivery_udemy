

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
          child: _textDownHaveAccount(),
      ),
      body:Stack(
          children: [
            _backgroudCover(context),
            _boxForm(context),
            Column(
              children: [
                _imageCover(),
                _textAppName(),
              ],
            ),
          ],
        ),
      );
  }

  Widget _backgroudCover(BuildContext context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.amber,
      alignment: Alignment.topCenter,
    );
  }

 Widget _textAppName(){
    return Text('DELIVERY DS',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
    ),
    );
 }

 Widget _boxForm(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33,
                              left:50,
                              right:50 ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 15,
            offset: Offset(0,0.75)
          )
        ]
      ),
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        children: [
          _textYourInfo(),
          _textFieldEmail(),
          _textFieldPassword()
        ],
      ),
    );
 }

 Widget _textYourInfo() {
    return Text(
        'INGRESA ESTA INFORMACION'
    );
 }

 Widget _textFieldEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo electronico',
        prefixIcon: Icon(Icons.email)
      ),
    );
 }

  Widget _textFieldPassword(){
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: false,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          prefixIcon: Icon(Icons.lock)
      ),
    );
  }

 Widget _textDownHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No tiene Cuentas?',
        style: TextStyle(
          fontSize: 17,
          color: Colors.black
          ),
        ),
        SizedBox(width: 7),
        Text('Registrate Aquí',
        style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontSize: 17
          ),
        )
      ],
    );
 }

  Widget _imageCover(){
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20,bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/delivery.png',
              width: 130,
              height: 130,
        ),
      ),
    );
  }
}
