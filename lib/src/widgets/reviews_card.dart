import 'package:flutter/material.dart';


class ReviewCard extends StatefulWidget {
  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
              Stack(
                children: <Widget>[
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Row(
                  children: <Widget>[
                  Container(
                 padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
                 child: Row(
                   children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.3),
                        ),
                         padding: EdgeInsets.symmetric(horizontal:7, vertical:7),
                        child: Icon(Icons.book, color: Colors.blue,),
                      ),
                   ],
                 ),
               ),
               Text('Booking', style: TextStyle(fontSize:20, color: Color.fromRGBO(93, 112, 105, 1.0), fontWeight: FontWeight.bold),),
            ],
           ),
           Positioned(
             top: 45,
             left: 65,
                  child: Column(
                    children: <Widget>[
               Text('8.0/10', style: TextStyle(fontSize:20, color: Color.fromRGBO(93, 112, 105, 1.0)),),
             ],
            ),
           ),
           Positioned(
             top: 75,
             left: 17,
                child: 
           Text('Based on 30 reviews', style: TextStyle(fontSize:15, color: Color.fromRGBO(93, 112, 105, 1.0),),)),
          ],
           ),
           SizedBox(width: 35),
            Stack(
                children: <Widget>[
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Row(
                  children: <Widget>[
                  Container(
                 padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
                 child: Row(
                   children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.3),
                        ),
                         padding: EdgeInsets.symmetric(horizontal:7, vertical:7),
                        child: Icon(Icons.star, color: Colors.blue,),
                      ),
                   ],
                 ),
               ),
               Text('HotelOut', style: TextStyle(fontSize:20, color: Color.fromRGBO(93, 112, 105, 1.0), fontWeight: FontWeight.bold),),
            ],
           ),
           Positioned(
             top: 45,
             left: 65,
                  child: Column(
                    children: <Widget>[
               Text('4.0/5', style: TextStyle(fontSize:20, color: Color.fromRGBO(93, 112, 105, 1.0)),),
             ],
            ),
           ),
           Positioned(
             top: 75,
             left: 15,
                child: 
           Text('Based on 130 reviews', style: TextStyle(fontSize:15, color: Color.fromRGBO(93, 112, 105, 1.0),),)),
          ],
           ),
      ],
        
      ),
    );
  }
}