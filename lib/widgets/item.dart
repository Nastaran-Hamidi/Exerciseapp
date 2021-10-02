import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/models/categorycard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget{
  const ItemCard({Key key, this.category, this.press}) : super(key: key);

  final Category category;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
          children:[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                   const BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 17,
                        spreadRadius: -23,
                        color: kActiveIconColor
                    ),],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Spacer(),
                          SvgPicture.asset(category.image),
                          const Spacer(),
                          Text(category.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle
                              (fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "IRANYekan"))],
                      ),),
                    onTap: press,
                  ),),
              ),
            )]),
      onTap: press,
    );
  }
}