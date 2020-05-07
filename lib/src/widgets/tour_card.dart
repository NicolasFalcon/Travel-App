
import 'package:flutter/material.dart';




class TourCard extends StatefulWidget {

final String image;
final String country;
final String status;
final double points;
final String hotel;

TourCard({this.image, this.country,  this.status, this.points, this.hotel});

  @override
  _TourCardState createState() => _TourCardState();
}

class _TourCardState extends State<TourCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
        width: 165,
        height: 250,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                child: Hero(
                  tag: widget.image,
                           child: Container(
                    width: 160,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(widget.image),fit: BoxFit.cover
                      ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 3),
                              blurRadius: 10)
                        ]),
                  ),
                ),
              ),
            ),
            Stack(children: <Widget>[
               Container(
                 padding: EdgeInsets.symmetric(horizontal:15, vertical:20),
                 child: Row(
                   children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.3),
                        ),
                         padding: EdgeInsets.symmetric(horizontal:15, vertical:10),
                        child: Text(widget.status, style: TextStyle(color: Colors.white, fontSize: 15.0,),))
                   ],
                 ),
               ),
               Positioned(
                left: 15,
                bottom: 30,
                child: Row(children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                      Text(widget.country, style: TextStyle(color: Colors.white, fontSize: 20.0,),),
                      SizedBox(height: 10),
                       Text('18 Tour', style: TextStyle(color: Colors.white, fontSize: 17.0,),),
                     ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:30 ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:5, vertical: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.3),
                            ),
                      child: Column(
                        children: <Widget>[
                          Text('4.5', style: TextStyle(color: Colors.white, fontSize: 17.0,),),
                          SizedBox(height: 10,),
                          Icon(Icons.star, color: Colors.white, size: 17,)
                        ],
                      ),
                    ),
                  ),
                ],
                ),
              ),
             ],     
            )
          ],
        ),
      ),
    );
  }
}