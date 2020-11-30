import 'package:flutter/material.dart';

void main() {
  runApp(Rotas());
}

class Home extends StatelessWidget {
  build(context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => PrimeiraRota(),
        "/segunda": (context) => SegundaRota(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera Rota"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("ir para a segunda tela"),
            onPressed: () {
              Navigator.pushNamed(context, "/segunda");
            }),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Voltar para a primeira tela"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

//-----------------------------------Exercicio-------------------------------------//
//----------------------------------------------------------------------------------//

class Rotas extends StatelessWidget {
  build(context) {
    return MaterialApp(
      initialRoute: "/tela2",
      routes: {
        "/": (context) => Tela1(),
        "/tela2": (context) => Tela2(),
        "/tela3": (context) => Tela3(),
        "/tela4": (context) => Tela4()
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela 1"),
        ),
        body: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(50),
              child: Text(
                "1",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 70, 160, 77),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/tela2");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black26,
                    ),
                    iconSize: 50,
                  )),
            ),
          ],
        ));
  }
}

class Tela2 extends StatelessWidget {
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela 2"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(50),
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 70, 160, 77),
                    shape: BoxShape.circle),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  //deixa um espaco entre os obejetos
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/tela3");
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Tela3 extends StatelessWidget {
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 3"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(50),
              child: Text(
                "3",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50),
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 70, 160, 77),
                  shape: BoxShape.circle),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/tela2");
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/tela4");
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tela4 extends StatelessWidget {
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tela 4"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(50),
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 50),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 70, 160, 77),
                    shape: BoxShape.circle),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/tela3");
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/");
                      },
                      icon: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
