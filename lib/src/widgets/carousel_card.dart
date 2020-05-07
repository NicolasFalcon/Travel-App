import 'package:flutter/material.dart';



class CarouselCard extends StatefulWidget {

final String image;

CarouselCard({this.image});

  @override
  _CarouselCardState createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
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
          ],
        ),
      ),
    );
  }
}