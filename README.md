```dart
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(RockPaperScissorsApp());
}

class RockPaperScissorsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final List<String> choices = ['Pedra', 'Papel', 'Tesoura'];
  String playerChoice = '';
  String computerChoice = '';
  String result = '';

  void playGame(String choice) {
    setState(() {
      playerChoice = choice;
      computerChoice = choices[Random().nextInt(3)];
      result = determineWinner(playerChoice, computerChoice);
    });
  }

  String determineWinner(String player, String computer) {
    if (player == computer) {
      return 'Empate!';
    } else if ((player == 'Pedra' && computer == 'Tesoura') ||
        (player == 'Papel' && computer == 'Pedra') ||
        (player == 'Tesoura' && computer == 'Papel')) {
      return 'Você venceu!';
    }
    else {
      return 'Computador venceu!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pedra, Papel e Tesoura')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Escolha uma opção:', style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: choices.map((choice) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => playGame(choice),
                    child: Text(choice),
                  ),
                )).toList(),
          ),
          SizedBox(height: 20),
          Text('Sua escolha: $playerChoice', style: TextStyle(fontSize: 18)),
          Text('Escolha do computador: $computerChoice', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Text(result, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
```
