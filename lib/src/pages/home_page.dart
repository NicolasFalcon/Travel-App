import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/hidden_drawer/screen_hidden_drawer.dart';

import 'package:hidden_drawer_menu/menu/item_hidden_menu.dart';
import 'package:travel_app/src/icons/custom_icon.dart';
import 'package:travel_app/src/pages/account_page.dart';

import 'package:travel_app/src/pages/main_home.dart';


import 'package:flutter/widgets.dart';




class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<ScreenHiddenDrawer> items = new List();


@override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Home",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
        MainHomePage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "My Account",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        AccountPage()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.grey[50],
      screens: items,
        //    typeOpen: TypeOpen.FROM_RIGHT,
              enableScaleAnimin: true,
              enableCornerAnimin: true,
              slidePercent: 60.0,
        //    verticalScalePercent: 80.0,
              contentCornerRadius: 30.0,
              iconMenuAppBar: Icon(CustomIcon.app_menu_icon, color: Colors.black,),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
            whithAutoTittleName: false,
            styleAutoTittleName: TextStyle(color: Colors.red),
            actionsAppBar: <Widget>[
              Padding(
                
                padding:  EdgeInsets.only(right: 110),
                child: Row(children: <Widget>[
                  Image(image: AssetImage("assets/logo.png"), height: 50, width: 50,),
                  SizedBox(width: 7),
                  Text('DiscountTour', style: TextStyle(color: Color.fromRGBO(93, 112, 105, 1.0), fontSize: 20),),
                ],
               ),
              )
            ],
        //    backgroundColorContent: Colors.blue,
              elevationAppBar: 0.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
        //    enableShadowItensMenu: true,
        //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
    
  }
}