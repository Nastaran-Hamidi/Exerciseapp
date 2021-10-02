// ignore_for_file: prefer_const_constructors
import 'package:exerciseapp/screens/detail_screen.dart';
import 'package:exerciseapp/widgets/bottomnav.dart';
import 'package:exerciseapp/models/categorycard.dart';
import 'package:exerciseapp/widgets/item.dart';
import 'package:exerciseapp/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavigate(),
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: Color(0xFFF5CEB8),
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                ),
              ),
            ),
          SafeArea(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xFFE68342),
                            shape: BoxShape.circle,
                              ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                      ),
                    ),
              Text("صبح بخیر دوست من!",
              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25)),
              SearchBar(),
              Expanded(
                  child:GridView.builder(
                      itemCount: categoryCards.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: .85
                      ),
                      itemBuilder: (context,index)=>ItemCard(
                          category: categoryCards[index],
                          press: ()=>Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:(context) =>
                                      prepareScreen(DetailScreen(
                                        category: categoryCards[index],))))
                  )),),
            ],)
            ),
            )]
        )
        );
      }
  prepareScreen(Widget screen,[TextDirection textDirection = TextDirection.rtl]){
    return Directionality(textDirection: TextDirection.rtl, child: screen);
  }
    }