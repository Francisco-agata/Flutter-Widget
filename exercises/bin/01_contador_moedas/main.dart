import 'package:flutter/material.dart';

void main() {
  runApp(const Coin());
}

class Coin extends StatefulWidget {
  const Coin({Key? key}) : super(key: key);

  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int copper = 0;
  int silver = 0;
  int gold = 0;

  void updateCoin() {
    setState(() {
      copper++;

      if (copper == 10) {
        silver++;
        copper = 0;
      }

      if (silver == 10) {
        gold++;
        silver = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Retira a "etiqueta" debug
      debugShowCheckedModeBanner: false,

      home: GestureDetector(
        // GestureDetector: detecta o toque na tela (em azul)
        // Tudo que está dentro do Container, conta como toque
        onTap: updateCoin,
        
        child: Container(
          color: Colors.blueAccent, // Cor do fundo
          padding: const EdgeInsets.only(top: 45), // Afastamento do topo

          child: Column(
            children: [
              // Item 1
              Center(
                child: Text(
                  "Copper: $copper",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              // Item 2
              Center(
                child: Text(
                  "Silver: $silver",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              // Item 3
              Center(
                child: Text(
                  "Gold: $gold",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}