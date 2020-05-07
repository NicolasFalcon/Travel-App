import 'package:flutter/material.dart';
import 'package:travel_app/src/bloc/login_bloc.dart';
import 'package:travel_app/src/bloc/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[_crearFondo(), _loginForm()],
    ));
  }

  _crearFondo() {
    final size = MediaQuery.of(context).size;

    final backgroud = Container(
      height: size.height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.jpg'), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        backgroud,
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Container(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage("assets/logo.png"),
                  height: 80,
                  width: 80,
                  color: Colors.white,
                ),
                SizedBox(height: 10, width: double.infinity),
                Text(
                  'Find the best tour',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  _loginForm() {

    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 150,
          )),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(vertical: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3.0,
                      offset: Offset(5.0, 0.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(93, 112, 105, 1.0)),
                ),
                SizedBox(height: 30),
                _email(bloc),
                SizedBox(height: 20),
                _password(bloc),
                SizedBox(height: 30),
                _crearBoton(bloc),
                 SizedBox(height: 20),
                  Text(' Olvido su Contrañesa?', style: TextStyle(fontSize: 15),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _email(LoginBloc bloc) {

     return StreamBuilder(
       stream: bloc.emailStream,
       builder: (BuildContext context, AsyncSnapshot snapshot){
         return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.email, color: Color.fromRGBO(93, 112, 105, 1.0)),
            hintText: 'tucorreo@gmail.com',
            labelText: 'Correo Electronico',
            counterText: snapshot.data,
            errorText: snapshot.error
            ),
            onChanged: bloc.changeEmail,
       ),
      );
   },
  ); 
  }





  Widget _password(LoginBloc bloc) {


   return StreamBuilder(
     stream: bloc.passwordStream,
     builder: (BuildContext context, AsyncSnapshot snapshot){
     return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.lock_outline,
                color: Color.fromRGBO(93, 112, 105, 1.0)),
            hintText: 'Tu Contraseña',
            labelText: 'Password',
            counterText: snapshot.data,
            errorText: snapshot.error),
            onChanged: bloc.changePassword,
            ),
    );
     },
   );



  }

  Widget _crearBoton(LoginBloc bloc) {

        return StreamBuilder(
          stream: bloc.formValidStream,
          builder: (BuildContext context, AsyncSnapshot snapshot){
           return RaisedButton(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
          child: Text(
            'Ingresar',
            style: TextStyle(fontSize: 15.0),
          ),
        ),
        onPressed: snapshot.hasData ? ()=>_login(bloc) : null,
        shape: StadiumBorder(),
        textColor: Colors.white,
        color: Color.fromRGBO(0, 159, 106, 1)
        );
           }
       );
    
  }


_login(LoginBloc bloc){

  print('Email: ${bloc.email}');
  print('Password: ${bloc.password}');

Navigator.pushNamed(context, 'home');

}




}
