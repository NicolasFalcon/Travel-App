import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_app/src/model/data.dart';

import 'package:travel_app/src/widgets/carousel_card.dart';
import 'package:travel_app/src/widgets/reviews_card.dart';

class TourPage extends StatefulWidget {


final Tour tours;

TourPage({this.tours});

  @override
  _TourPageState createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {

 List<IconData> _icons = [
   Icons.wifi,
   Icons.beach_access,
   Icons.wb_sunny,
   Icons.restaurant
 ];

 List<String> _descriptions = [

   'Free Wi-fi',
   'Sand Beach',
   'First Coastline',
   'Bar and Restaurant'
  
 ];

 int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
               children: <Widget>[
               Stack(children: <Widget>[
                ColorFiltered(
                 colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.srcOver),
                      child: Hero(
                        tag: widget.tours.image,
                         child: Container(
                         height: 350,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                         image: DecorationImage(image:AssetImage (widget.tours.image), alignment: Alignment.topCenter, fit: BoxFit.cover ),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30),),
                  ),
                 ),
               ),
               ),
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal:10, vertical: 25),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                   IconButton(icon: Icon(Icons.arrow_back, 
                   size: 30, 
                   color: Colors.white,
                   ),
                   onPressed: ()=> Navigator.pop(context),
                   ),
                      Row(children: <Widget>[
                        IconButton(icon: Icon(Icons.share, 
                   size: 25, 
                   color: Colors.white,
                   ),
                   onPressed: ()=> print('Share'),
                   ),
                   IconButton(icon: Icon(Icons.favorite_border, 
                   size: 25, 
                   color: Colors.white,
                   ),
                   onPressed: ()=> print('Favorite'),
                   ),
                   ],
                  )
                 ],
                ),
               ),
               Positioned(
                 left: 20,
                 top: 140,
                       child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                   Text(widget.tours.hotel,
                   style:TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold, 
                     color: Colors.white) 
                     ),
                     SizedBox(height: 10,),
                    Row(children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text(widget.tours.city, style: TextStyle(color: Colors.white, fontSize:20)),
                      Text(',',style: TextStyle(color: Colors.white, fontSize:20)),
                      SizedBox(width: 10),
                      Text(widget.tours.country, style: TextStyle(color: Colors.white, fontSize:20)),
                    ],
                  ),
                  SizedBox(height: 10),
                  _buildStarsRating(widget.tours.rating)
                 ],
              ), 
             ),
             Stack(
                children: <Widget>[
                    Column(
                 children: <Widget>[
                   Padding(
                     padding:  EdgeInsets.only(top:250),
                     child: Container(
                        height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                     ),
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal:0, vertical:20),
                       child: Column(
                         children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: _icons.asMap().entries.map(
                            (MapEntry map)=> _buildIcons(map.key),
                            ).toList()     
                              ),
                             SizedBox(height: 5),
                              Row( 
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: _descriptions.asMap().entries.map(
                            (MapEntry map)=> _buildDescription(map.key),
                            ).toList() ,
                              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //   children: <Widget>[
                              //   _buildDescription(0),
                              //   _buildDescription(1),
                              //   _buildDescription(2),
                              //   _buildDescription(3),
                              // ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                            ReviewCard()
                          ],
                        ),
                        Column(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Text(widget.tours.review,
                               style: TextStyle(color: Color.fromRGBO(93, 112, 105, 1.0),letterSpacing: sqrt1_2, fontSize: 15
                               ),
                               )
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                       Container(
                       height: 225,
                       child: ListView.builder(
                         itemCount: carousel.length,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index) {
                           var carouse = carousel[index];
                           return GestureDetector(
                             onTap: ()=> print('show image'),
                                   child: CarouselCard(
                                   image: carouse.image,
                                 ),
                               );
                              },
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Container(
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(30),
                  ),
            child: 
            Text('Price \$380,99', style: TextStyle(fontSize:20, color:Color.fromRGBO(93, 112, 105, 1.0) ),),
          ),
           RaisedButton(
               child: Padding(
                padding:EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
               child: Text('Take this tour', style: TextStyle(fontSize:15.0),), 
                ),
              onPressed: ()=>print('hello'),
              shape:StadiumBorder(),
              textColor: Colors.white,
              color: Color.fromRGBO(0, 159, 106, 1)
                            ),
                          ]
                       )
                       ],
                      ),
                     ),
                  ),
               ),
            ],
           ),
          ],
          ),
          ],
         ),
       ],
     ),
    ),
    bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          elevation: 0,
          selectedItemColor: Colors.green,
          selectedIconTheme: IconThemeData(color: Colors.green),
          currentIndex: _currentIndex,
          backgroundColor: Color.fromRGBO(0, 159, 106, 1),
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem( 
              activeIcon: Icon(Icons.home),
              icon:  Icon(Icons.home, size: 17, color: Colors.black54),
              title: Text('')
          ),
           BottomNavigationBarItem( 
             activeIcon: Icon(Icons.star),
              icon:  Icon(Icons.star, size: 17, color: Colors.black54),
              title: Text('')
          ),
          BottomNavigationBarItem( 
            activeIcon: Icon(Icons.person),
              icon:  Icon(Icons.person, size: 17, color: Colors.black54),
              title: Text('')
          ),
          BottomNavigationBarItem( 
            activeIcon: Icon(Icons.search),
              icon:  Icon(Icons.search, size: 17, color: Colors.black54),
              title: Text('')
          ),
          ] 
          ),
   );
  }







Widget _buildIcons(int index) {

    return Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1.0, color: Colors.grey)
          ),
          child: Icon(_icons[index], size: 25.0, color: Colors.grey,),
    );

}




Widget _buildDescription( int index ) {

  return Container(
    
    height: 30,
    width: 70,
    child: Text( _descriptions[index], style: TextStyle(fontSize: 15, color:Colors.grey), textAlign: TextAlign.center,) ,
  );
}



  Text _buildStarsRating(int rating){
    String stars = '';
    for ( int i = 0; i < rating; i++ ) {
      stars += '⭐ ';
    }
    return Text(stars);

  }






}