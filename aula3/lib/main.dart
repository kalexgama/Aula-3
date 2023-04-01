import 'package:flutter/material.dart';

void main() {
  runApp(new Projeto());
}

class Projeto extends StatelessWidget {
  Image img = Image.asset('assets/marlin.jpg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//-------------------------------------------------------------------- Appbar
        appBar: AppBar(
            title: const Text(
              "Smash or Pass",
              style: TextStyle(fontSize: 25),
            ),
            foregroundColor: Colors.red,
            backgroundColor: Colors.white,
            centerTitle: true),

//-------------------------------------------------------------------- Body
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
//-------------------------------------------------------------------- Imagem e Texto
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Image(
                    image: img.image,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.grey),
                        SizedBox(width: 5),
                        Text(
                          "Marilyn Monroe",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "Atriz",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
//-------------------------------------------------------------------- Fileira com os botões
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        // ----------------------------------- Botão
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey,
                                fixedSize: Size(
                                  MediaQuery.of(context).size.height * 0.2,
                                  MediaQuery.of(context).size.width * 0.2,
                                )),
                            child: const Column(children: [
                              SizedBox(height: 12),
                              Icon(Icons.heart_broken,
                                  color: Color.fromARGB(255, 14, 31, 61)),
                              SizedBox(height: 10),
                              Text("Passo")
                            ]))),
                    Expanded(
                        // ----------------------------------- Botão
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey,
                                fixedSize: Size(
                                  MediaQuery.of(context).size.height * 0.2,
                                  MediaQuery.of(context).size.width * 0.2,
                                )),
                            child: const Column(children: [
                              SizedBox(height: 12),
                              Icon(Icons.question_mark_outlined,
                                  color: Colors.grey),
                              SizedBox(height: 10),
                              Text("Talvez")
                            ]))),
                    Expanded(
                        // ----------------------------------- Botão
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey,
                                fixedSize: Size(
                                  MediaQuery.of(context).size.height * 0.2,
                                  MediaQuery.of(context).size.width * 0.2,
                                )),
                            child: const Column(children: [
                              SizedBox(height: 12),
                              Icon(Icons.face_retouching_natural_sharp,
                                  color: Colors.red),
                              SizedBox(height: 10),
                              Text("Pegava")
                            ]))),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: const Text(
                      "Norma Jeane Mortenson mais conhecida como Marilyn Monroe, foi uma atriz, modelo e cantora norte-americana. Como estrela de cinema de Hollywood, é um dos maiores símbolos sexuais do século XX, imortalizada pelos cabelos loiros e as suas formas voluptuosas.",
                      style: TextStyle(fontSize: 17, color: Colors.grey))),
            ],
          ),
        ),
      ),
    );
  }
}
