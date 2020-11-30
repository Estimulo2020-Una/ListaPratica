import 'package:flutter/material.dart';
import 'package:pratica14/rota/tela/tela.dart';

class PrimeiraTela extends StatelessWidget {
  Tela tela = Tela("Tela1", "1", "/tela2", "/tela2", 1);
  build(context) {
    return MaterialApp(home: tela.corpo(context));
  }
}

class SegundaTela extends StatelessWidget {
  Tela tela = Tela("tela2", "2", "/", "/tela3", 2);
  build(context) {
    return MaterialApp(
      home: tela.corpo(context),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  Tela tela = Tela("tela3", "3", "/tela2", "/", 2);
  build(context) {
    return MaterialApp(
      home: tela.corpo(context),
    );
  }
}
