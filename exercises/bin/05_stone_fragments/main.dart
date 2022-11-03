import 'package:flutter/material.dart';

void main() {
  runApp(const Stone());
}

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  _StoneState createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  // Imagem da "Joia" (padrão: Fragment)
  String image = "https://i.imgur.com/jTqNa7D.png";

  int fragments = 0;
  int pieces = 0;
  int stones = 0;

  void updateStone() {
    setState(() {
      fragments++;

      // Atualiza os contadores
      if (fragments == 10) {
        pieces++;
        fragments = 0;
      }

      if (pieces == 10) {
        stones++;
        pieces = 0;
      }

      // Modifica a imagem conforme a quantidade adquirida
      if (stones > 0) {
        image = "https://i.imgur.com/JAeGRb1.png"; // Stone
      
      } else if (pieces > 0) {
        image = "https://i.imgur.com/IR5Sn6X.png"; // Piece
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
        onTap: updateStone,

        child: Container(
          padding: const EdgeInsets.only(top: 45), // Afastamento do topo
          decoration: const BoxDecoration(
            image: DecorationImage(
              // Imagem de fundo
              image: NetworkImage('https://i.imgur.com/etWX9CB.jpg'),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            children: [
              SizedBox(
                // Imagem da Joia do Espaço
                child: Image.network(image),
                height: 250,
              ),

              // Stones
              Center(
                child: Text(
                  "Stones: $stones",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),

              // Pieces
              Center(
                child: Text(
                  "Pieces: $pieces",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
                  ),
                ),
              ),

              // Fragments
              Center(
                child: Text(
                  "Fragments: $fragments",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                    letterSpacing: 3,
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