import 'package:flutter/material.dart';

void main() {
  runApp(Exercicio3());
}

class Exemplo1 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Text("Ola,Mundo"),
    );
  }
}

class Exemplo2 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}

class Exemplo3 extends StatelessWidget {
  build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
    ));
  }
}

class Exemplo4 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pagina Inicial"),
        ),
      ),
    );
  }
}

class Exemplo5 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Pagina Inicial"),
        ),
      ),
    );
  }
}

class Exemplo6 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Pagina Inicial"),
        ),
        body: Text("Ola,Mundo"),
      ),
    );
  }
}

class Exemplo7 extends StatelessWidget {
  build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Pagina Inicial"),
      ),
      body: Text("ola,Mundo"),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo Botao",
        child: Icon(Icons.add),
      ),
    ));
  }
}

class Exemplo8 extends StatelessWidget {
  build(context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text("Pagina inicial"),
        leading: Icon(Icons.home),
      ),
      body: Center(
        child: Text(
          "ola,mundo",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    ));
  }
}

class Exemplo9 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("Pagina Incial"),
        ),
        body: Text(
          "Ola,Mundo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "tipo de Botao",
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.blue[900],
      ),
    );
  }
}

class Exemplo10 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pagina inicial"),
          leading: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        body: Text(
          "Ola,Mundo",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.blue[900],
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class Exercicio1 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pagina inicial"),
          leading: Icon(Icons.home),
        ),
        body: Center(
            child: Text(
          "Ola,Mundo!",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        )),
        backgroundColor: Colors.blue[900],
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Exercicio2 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Paginal incial"),
          leading: Icon(Icons.home),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.red,
            child: Text(
              "Ola,Mundo",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class Exercicio3 extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar:
            AppBar(title: Text("Pagina inicial"), leading: Icon(Icons.home)),
        body: Container(
          width: double.infinity,
          height: 400,
          margin: EdgeInsets.only(top: 10),          
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
            image:DecorationImage(              
              image:NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")
            )
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,                 
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,        
      ),
    );
  }
}
