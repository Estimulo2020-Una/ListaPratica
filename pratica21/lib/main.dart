import 'package:flutter/material.dart';

main() => runApp(
      MaterialApp(
        home: Inicio(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Inicio extends StatefulWidget {
  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio> {
  int indice = 0;
  final List<Widget> rotas = [
    PrimeiraRota(),
    SegundaRota(),
  ];
  void aoPressionar(int rotaSelecionada) {
    setState(
      () {
        this.indice = rotaSelecionada;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: rotas[this.indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.indice,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),// label: 'Primeira Rota'
              title: Text('Primeira Rota'), //substituir por -> label: 'Primeira Rota',
              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Segunda Rota'),
            //label: 'Segunda Rota',
          ),
        ],
        onTap: (int pageTapped) {
          aoPressionar(pageTapped);
        },
      ),
    );
  }
}

class PrimeiraRota extends StatefulWidget {
  @override
  PrimeiraRotaState createState() => PrimeiraRotaState();
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  @override
  Widget build(BuildContext context) {
    TextStyle estilo = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );
    return Center(
      child: Text(
        'Primeira Rota',
        style: estilo,
      ),
    );
  }
}

class SegundaRota extends StatefulWidget {
  @override
  SegundaRotaState createState() => SegundaRotaState();
}

class SegundaRotaState extends State<SegundaRota> {
  texto() {
    return ("Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(40),
          child: Center(
            child: Text(
              'Galeria',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Cartao(
          titulo: 'Imagem 01',
          preco: 3.10,
          subtitulo: texto(),
          url:'https://images.pexels.com/photos/213795/pexels-photo213795.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
        Cartao(
          titulo: 'Imagem 02',
          subtitulo: texto(),
          preco: 2.15,
          url:'https://images.pexels.com/photos/213791/pexels-photo213791.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
      ],
    );
  }
}

class Cartao extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final double preco;
  final String url;
  Cartao({this.titulo, this.subtitulo, this.preco, this.url});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Image(
                image: NetworkImage(this.url),
                height: 200,
                width: 400,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.titulo,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.subtitulo,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'R\$ ${this.preco.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('DETALHES'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detalhe(subtitulo,url,preco,titulo)));
                  },
                ),
                FlatButton(
                  child: Text('COMPRAR'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Compra()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Detalhe extends StatelessWidget {
  String detalhe;
  String url;
  String titulo;
  double preco;
  

  Detalhe(detalhe,url,preco,titulo) {
    this.detalhe = detalhe;
    this.url = url;
    this.preco=preco;
    this.titulo=titulo;
  }

  build(context) {
    return MaterialApp(
      home: Scaffold(
        body:Card(
          color: Colors.grey[100],
           child: Container(
             padding: EdgeInsets.all(10),
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Padding(
                      padding: EdgeInsets.all(4),
                      child: Image(
                        image: NetworkImage(this.url),
                          height: 200,
                           width: 400,
                     ),                     
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "$titulo",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("$detalhe"),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                    'R\$ ${this.preco.toStringAsFixed(2)}',
                    style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                 ),
               ],
             ),
           )
        ),
        floatingActionButton:IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context,SegundaRota());
          },
        ),
      ),
    );
  }
}

class Compra extends StatelessWidget{
  build(context){
    return MaterialApp(
      home:Scaffold(
        body:Center(
          child: Text("Pagina de Compra"),
        ),
        floatingActionButton:IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context,SegundaRota());
          },
        ),
      )
    );
  }
}
