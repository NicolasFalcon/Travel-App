import 'package:flutter/material.dart';



class PopularCard extends StatelessWidget {


final String image;
final String title;
final String descri;
final String price;
final double points;

PopularCard({this.image, this.title, this.price, this.points, this.descri});


  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
           Container(
             margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
             height: 100.0,
             width: double.infinity,
             decoration: BoxDecoration(
             color: Colors.blue[50],
             borderRadius: BorderRadius.circular(20.0),
               ),
             ),
             Positioned(
               left: 20.0,
               top: 10.0,
               bottom: 10.0,
                  child: Hero(
                    tag: image,
                                      child: ClipRRect(
                 borderRadius: BorderRadius.circular(20.0),
                 child: Image(
                     width: 100,
                     image: AssetImage (image,
                      ),
                      fit: BoxFit.cover,
                     )
               ),
                  ),
             ),
              Positioned(
                left: 130,
                bottom: 20,
                child: Row(children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text(title, style: TextStyle(color: Colors.black54, fontSize: 20.0,),),
                      SizedBox(height: 10),
                       Text(descri, style: TextStyle(color: Colors.black54, fontSize: 15.0,),),
                       SizedBox(height: 10,),
                       Text('\$380,99', style: TextStyle(color: Colors.black, fontSize: 20.0,),),
                     ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:5, vertical: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(0, 159, 106, 1),
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
    );
  }
}