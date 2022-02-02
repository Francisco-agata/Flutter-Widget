![](https://i.imgur.com/xG74tOh.png)

# M02 - A03 - Exercício 5 - Stone Fragments

## Objetivo

Desenvolver um aplicativo que faça a contagem dos cliques do usuário na tela e mostre a quantidade de “fragmentos” da Joia do Espaço adquiridos a cada clique, utilizando setState.

## Instruções

1. Crie uma aplicação em Flutter que rode a classe Stone.

2. Ainda no arquivo main, crie a classe Stone, responsável por receber cada clique do usuário na tela e atualizar a quantidade de “fragmentos”.

3. A cada clique na tela, o usuário recebe um fragment. Utilize a imagem:

    ![](https://i.imgur.com/jTqNa7D.png)

4. Quando alcançar 10 fragments, o usuário recebe 1 piece, zera os fragments e muda a imagem para:

    ![](https://i.imgur.com/IR5Sn6X.png)

5. Quando alcançar 10 pieces, o usuário recebe 1 stone, zera os pieces e muda a imagem para:

    ![](https://i.imgur.com/JAeGRb1.png)

6. Mostre as atualizações de cada clique e a quantidade de fragments, pieces e stones que o usuário tem.

```
Entrada:
    cliques: 9

Saída:
    Stones: 0
    Pieces: 0
    Fragments: 9
```

```
Entrada:
    cliques: 10

Saída:
    Stones: 0
    Pieces: 1
    Fragments: 0
```

```
Entrada:
    cliques: 11

Saída:
    Stones: 0
    Pieces: 1
    Fragments: 1
```

```
Entrada:
    cliques: 101

Saída:
    Stones: 1
    Pieces: 0
    Fragments: 1
```

Imagens:
 - [Fragment](https://i.imgur.com/jTqNa7D.png)
 - [Piece](https://i.imgur.com/IR5Sn6X.png)
 - [Stone](https://i.imgur.com/JAeGRb1.png)
 - [Background](https://i.imgur.com/etWX9CB.jpg)

---

### [Vídeo explicativo](https://drive.google.com/file/d/14j8egTzUq6qTgzAQXk81Be5287aEARpW/view?usp=sharing)

