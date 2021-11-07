import 'package:e_commerce_app/Screens/LoginScreen.dart';
import'package:flutter/material.dart';
import 'package:e_commerce_app/Utilities/MyClayContainer.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/Utilities/ReUsedButton.dart';

class Data extends ChangeNotifier {
  int counter = 0;

  void changeCounter() {
    counter++;
    if(counter>3){
      counter=0;
    }
    notifyListeners();
  }
  void notifyAudience(){
    notifyListeners();
  }
}


class WelcomeScreen extends StatelessWidget {
  static String id = '/welcomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Bardeal',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFF7465),
                ),
              ),
              Image(
                  image: myWelcomeScreenDesign[Provider.of<Data>(context,listen: true).counter].myHomeScreenImages,
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myWelcomeScreenDesign[Provider.of<Data>(context,listen: true).counter].advertisedHeaderText,
              myWelcomeScreenDesign[Provider.of<Data>(context,listen: true).counter].advertisedPlainText,
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyClayContainer(colour: Provider.of<Data>(context,listen: true).counter==0? Color(0xFFFF7465):Color(0xFFDADADA),),
                  SizedBox(
                    width: 10,
                  ),
                  MyClayContainer(colour: Provider.of<Data>(context,listen: true).counter==1? Color(0xFFFF7465):Color(0xFFDADADA),),
                  SizedBox(
                    width: 10,
                  ),
                  MyClayContainer(colour: Provider.of<Data>(context,listen: true).counter==2? Color(0xFFFF7465):Color(0xFFDADADA),),
                ],
              ),
             MyReUsedButton(requiredText: Provider.of<Data>(context,listen: true).counter==2?'Get Started':'Next',
               onPressed: (){
               Provider.of<Data>(context,listen: false).changeCounter();
               print(Provider.of<Data>(context,listen: false).counter);
               if(Provider.of<Data>(context,listen: false).counter>2){
                 Navigator.pushNamed(context, LoginScreen.id);
               }
             },
             ),
            ],
          ),
        ),
      ),
    );
  }
}
