import 'package:flutter/material.dart';

class Produto {
  int id;
  String url, nome, descricao;
  double preco;
  Produto({this.id, this.url, this.nome, this.descricao, this.preco});
  static List<Produto> produtos() {
    return [
      Produto(
          id: 1,
          url: 'https://picsum.photos/250?image=9',
          nome: 'Notebook',
          descricao: 'Notebook Dell Inspiron I15 Intel 8GB 1TB 15,6" Preto',
          preco: 30109.98),
      Produto(
          id: 2,
          url:'https://images.pexels.com/photos/1070850/pexels-photo-1070850.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          nome: 'Bolo',
          descricao: 'Bolo em camadas com cobertura de frutas e nozes',
          preco: 15.19),
      Produto(
          id: 3,
          url:'https://images.pexels.com/photos/414837/pexels-photo-414837.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          nome: 'Torre e aerogerador',
          descricao: 'Torre e aerogerador - de energia eólica',
          preco: 50125.47),
    ];
  }
}

List<DropdownMenuItem<Produto>> montarListaProdutosMenu(List produtos) {
  List<DropdownMenuItem<Produto>> listaProdutosMenu = List();
  for (Produto produto in produtos) {
    listaProdutosMenu.add(
      DropdownMenuItem(
        value: produto,
        child: Text(produto.nome),
      ),
    );
  }
  return listaProdutosMenu;
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Exemplo de DropdownMenu')),
        body: Center(
          child: MenuSuspenso(),
        ),
      ),
    );
  }
}

class MenuSuspenso extends StatefulWidget {
  MenuSuspensoState createState() {
    return MenuSuspensoState();
  }
}

class MenuSuspensoState extends State<MenuSuspenso> {
  Produto produtoSelecionado;
  List<DropdownMenuItem<Produto>> listaProdutosMenu;  
  @override
  void initState() {
    listaProdutosMenu = montarListaProdutosMenu(Produto.produtos());
    produtoSelecionado = listaProdutosMenu[0].value;
    super.initState();
  }

  aoSelecionarProduto(Produto produtoSelecionado) {
    setState(
      () {
        this.produtoSelecionado = produtoSelecionado;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Produto:'),
        DropdownButton(
          value: this.produtoSelecionado,
          items: this.listaProdutosMenu,
          onChanged: this.aoSelecionarProduto,
        ),
        Text('${this.produtoSelecionado.nome}'),
        Container(
          padding: EdgeInsets.all(1),
          child: GestureDetector(
            child: Image.network("${produtoSelecionado.url}"),           
          ),
        ),
        Text('${produtoSelecionado.descricao}'),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('${produtoSelecionado.preco}'),
        )
      ],
    );
  }
}
