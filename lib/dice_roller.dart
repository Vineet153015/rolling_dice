import 'package:flutter/material.dart';
import 'dart:math';


var randomizer = Random() ;



class DiceRoller extends StatefulWidget{
  
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}


class _DiceRollerState extends State<DiceRoller>{

  var activeDiceImage = 'assets/images/dice-2.png';
  var currentdice = 1;

    void rollDice(){
      setState(() {
        currentdice = randomizer.nextInt(6) +1 ;
      });
    }


  @override
  Widget build(context) {
    // TODO: implement build
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset(
              'assets/images/dice-$currentdice.png',
              width: 200,
              ),

              const SizedBox(height: 15,),
              TextButton(onPressed: rollDice, 
              style: TextButton.styleFrom(foregroundColor: Colors.white,textStyle: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
              padding: const EdgeInsets.all(10)
              ),
              child: const Text('Roll Dice')
              )
          ],
        );
    
  }
}