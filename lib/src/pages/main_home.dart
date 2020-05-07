
import 'package:flutter/material.dart';
import 'package:travel_app/src/model/data.dart';
import 'package:travel_app/src/pages/populars_page.dart';
import 'package:travel_app/src/pages/tour_page.dart';
import 'package:travel_app/src/widgets/popular_card.dart';
import 'package:travel_app/src/widgets/tour_card.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

 int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
             Container(
               padding: EdgeInsets.symmetric(horizontal:20, vertical: 20),
               alignment: Alignment.centerLeft,
               child: Text('Find the best tour', 
               style: TextStyle(
                 fontSize: 35, 
                 fontWeight: FontWeight.bold, 
                 color: Color.fromRGBO(93, 112, 105, 1.0)),
                 )
             ),
             Container(
               padding: EdgeInsets.symmetric(horizontal:20),
               alignment: Alignment.centerLeft,
               child: Column(children: <Widget>[
                 Text('Country', style: TextStyle(fontSize:20, color: Color.fromRGBO(93, 112, 105, 1.0)),)
               ],
               ),
             ),
                Container(
              height: 225,
              child: ListView.builder(
                itemCount: tours.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var tour = tours[index];
                  return GestureDetector(
                    onTap: ()=>Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (_)=> TourPage(tours: tour,)
                      )
                      ),
                      child: TourCard(
                        image: tour.image,
                        country: tour.country,
                        status: tour.status,
                     ),
                  );
                },
              ),
            ),
             Container(
               padding: EdgeInsets.symmetric(horizontal:20),
               alignment: Alignment.centerLeft,
               child: Column(children: <Widget>[
                 Text('Popular Tours', style: TextStyle(fontSize:20, color: Color.fromRGBO(93, 112, 105, 1.0)),)
               ],
               ),
             ),
              SizedBox(height: 10),
           Container(
             height: 200,
             child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var popular = populars[index];
                    return GestureDetector(
                      onTap: ()=> Navigator.push(context,
                      MaterialPageRoute(
                        builder: (_)=> PopularsPage(populars: popular))
                        ),
                               child: PopularCard(
                          image: popular.image,
                          title: popular.country,
                          descri: popular.descri,
                      ),
                    );
                  },
                ),
           ),
          ],
          ),
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
}
