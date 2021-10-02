import 'package:exerciseapp/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:exerciseapp/models/categorycard.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndTitle extends StatelessWidget{

  final Category category;
  const ImageAndTitle({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start  ,
          children: [
            Text(category.title,
              style: const TextStyle(fontFamily: "IRANYekan",fontWeight: FontWeight.bold,fontSize: 18),),
            Text(category.description,style: const TextStyle(fontFamily: "IRANYekan")),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset(category.image,fit: BoxFit.cover,),
                ),
                SizedBox(
                      width: size.width * .5,
                      child: SearchBar(),
                    ),],
            )],
        ),
    );
  }
}