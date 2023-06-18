import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// class _DiceRollerState extends State<DiceRoller> {
//   var activeDiceImage = 'assets/images/dice-2.png';
//   void rollDice() {
//     setState(() {
//       var diceRoll = Random().nextInt(5) + 1;
//       activeDiceImage = 'assets/images/dice-$diceRoll.png';
//     });
//   }

//   @override
//   Widget build(context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Image.asset(
//           activeDiceImage,
//           width: 200,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         TextButton(
//           onPressed: rollDice,
//           style: TextButton.styleFrom(
//             padding: const EdgeInsets.only(
//               top: 20,
//             ),
//             foregroundColor: Colors.white,
//             textStyle: const TextStyle(
//               fontSize: 28,
//             ),
//           ),
//           child: const Text('Roll Dice'),
//         ),
//       ],
//     );
//   }
// }

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
