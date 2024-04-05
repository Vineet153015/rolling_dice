import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';




var startAlignment = Alignment.topLeft;
var endingAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

    const GradientContainer(this.color1, this.color2, {super.key});

    final Color color1;
    final Color color2;
    

    @override
    Widget build(context){
      return Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [color1,color2],
            begin: startAlignment,
            end: endingAlignment,
          )
        ),
        child: Center(
          child: DiceRoller(),
        ),
      );
    }
}




// class GradientContainer extends StatelessWidget {
//     const GradientContainer(this.colors, {super.key});

//     final List<Color> colors;

//     @override
//     Widget build(context){
//       return Container(
//         decoration:  BoxDecoration(
//           gradient: LinearGradient(
//             colors: colors,
//             begin: startAlignment,
//             end: endingAlignment,
//           )
//         ),
//         child: const Center(
//           child: textstyle(),
//         ),
//       );
//     }
// }