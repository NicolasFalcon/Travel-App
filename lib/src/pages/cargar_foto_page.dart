import 'package:flutter/material.dart';


class CargarFotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Cargar Foto'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.photo) , onPressed: () {}),
          IconButton(icon: Icon(Icons.camera) , onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: <Widget>[
                _crearNombre(),
                _crearFecha(),
                SizedBox(height: 20),
                _subirPhoto()
              ],
            )
            )
        ),
      ),
    );
  }




 Widget _crearNombre(){
 
       return TextFormField(
         textCapitalization: TextCapitalization.sentences,
         decoration: InputDecoration(
           labelText: 'Photo'
         ),
            
       );

  }



 Widget _crearFecha(){

 return TextFormField(
   keyboardType: TextInputType.number,
         decoration: InputDecoration(
           labelText: 'Fecha'
         ),
            
       );

  }



  Widget _subirPhoto() {
      

      return RaisedButton.icon(
        icon: Icon(Icons.cloud_upload, color: Colors.white,),
       label:  Text( 'Subir Foto', style: TextStyle(color:Colors.white),),
       onPressed: (){},
       shape: StadiumBorder(),
       color: Color.fromRGBO(0, 159, 106, 1)
       

        

        );

  }



}