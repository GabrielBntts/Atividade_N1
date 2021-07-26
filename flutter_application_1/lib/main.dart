import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mundo dos Pets',
    theme: ThemeData(cardColor: Colors.blue[100]),
    home: SplasScreen(),
  ));
}

class SplasScreen extends StatefulWidget {
  const SplasScreen({Key? key}) : super(key: key);

  @override
  _SplasScreenState createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => MyApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Image.asset('imagens/Logo.png'),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text('Bem Vindo!'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'imagens/logo1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(30)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Image.asset(
              'imagens/logodely.png',
            ),
            Image.asset(
              'imagens/logopet.png',
            ),
            Image.asset(
              'imagens/logowhats.png',
            ),
          ]),
          Padding(padding: EdgeInsets.all(30)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menus()));
              },
              icon: Icon(Icons.arrow_right),
              label: Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Menus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Consultas'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Agendamento()));
            },
          ),
          ListTile(
            leading: Icon(Icons.add_photo_alternate_rounded),
            title: Text('Galeria de Fotos'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Galeria()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Meu pet'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Pesquisar Raças'),
          ),
          Image.asset(
            'imagens/img4.jpg',
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Agendamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text('Lorem Ipsum é simplesmente uma simulação de texto'),
        ),
      ),
    );
  }
}

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'Pictchuri',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue[100],
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Image.asset(
            'imagens/img4.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'imagens/dog2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'imagens/cat2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'imagens/pic1.jpg',
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(100)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
}
