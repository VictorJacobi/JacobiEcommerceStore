import 'package:flutter/material.dart';
import 'Utilities/MyText.dart';


List<MyPlainText> advertisedPlainText = [
  MyPlainText(plain: 'There are many new outfits that make you cool'),
  MyPlainText(plain: 'They are of great quality and nice look'),
  MyPlainText(plain: 'Proceed to get new deals offered to you'),
  MyPlainText(plain: 'Proceed to get new deals offered to you'),
];
List<MyHeaderText> advertisedHeaderText = [
  MyHeaderText(header: 'There are many new outfits that make you cool'),
  MyHeaderText(header: 'There are many new outfits that make you cool'),
  MyHeaderText(header: 'There are many new outfits that make you cool'),
  MyHeaderText(header: 'There are many new outfits that make you cool'),
];
List<AssetImage> myHomeScreenImages = [ AssetImage(
  'images/homeScreenImage.jpg',
),];
List<WelcomeScreenDesign> myWelcomeScreenDesign =[WelcomeScreenDesign(
  advertisedHeaderText: MyHeaderText(header: 'Latest Outfit'),
  advertisedPlainText: MyPlainText(plain: 'There are many new outfits that make you cool'),
  myHomeScreenImages: AssetImage('images/homeScreenImage.jpg',),
),
  WelcomeScreenDesign(
    advertisedHeaderText: MyHeaderText(header: 'Newest Products'),
    advertisedPlainText: MyPlainText(plain: 'They are of great quality and nice look'),
    myHomeScreenImages: AssetImage('images/homeScreenImage2.jpg',),
  ),
  WelcomeScreenDesign(
    advertisedHeaderText: MyHeaderText(header: 'New Deals Offer'),
    advertisedPlainText: MyPlainText(plain: 'Proceed to get new deals offered to you'),
    myHomeScreenImages: AssetImage('images/homeScreenImage3.jpg',),
  ),
  WelcomeScreenDesign(
    advertisedHeaderText: MyHeaderText(header: 'New Deals Offer'),
    advertisedPlainText: MyPlainText(plain: 'Proceed to get new deals offered to you'),
    myHomeScreenImages: AssetImage('images/homeScreenImage3.jpg',),
  ),
];
class WelcomeScreenDesign  {
  MyHeaderText advertisedHeaderText;
  MyPlainText advertisedPlainText;
  AssetImage myHomeScreenImages;
  WelcomeScreenDesign({this.advertisedPlainText,this.advertisedHeaderText,this.myHomeScreenImages});
}

