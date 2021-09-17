import 'package:flutter/material.dart';

import 'dados_pessoais.dart';
//import 'package:arthur/ui/dados_pessoais.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.arrow_back_ios_rounded),
        title: Text("Minha Conta"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
            child: Center(
              child: Text("Aqui você pode atualizar seus dados",
                style: TextStyle(color: Colors.black, fontSize: 18.0)),
            ),
          ),
          _listViewCard("Dados Pessoais", Icons.account_circle_outlined),
          _listViewCard("Dados de endereço", Icons.location_on_outlined),
          _listViewCard("Alteração de senha", Icons.work_outline),
          _listViewCard("Configuração de uso", Icons.settings_outlined),
          _listViewCard("Termos de privacidade", Icons.info_outline),
          _listViewCard("Sair",Icons.arrow_back_outlined, cor: Colors.red, mostrar: false)
        ],
      ),
    );
  }

  Widget _listViewCard(String texto, IconData icone, {cor: Colors.black, mostrar: true}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 1,
         child: ListTile(
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PersonalData()));
           },
           leading: Icon(icone, color: cor,),
           title: Text(texto, style: TextStyle(color: cor)),
           trailing: mostrar ? Icon(Icons.arrow_forward_ios_rounded, color: Colors.deepOrange): SizedBox(),

         ),
         ),
        ),
    );
  }
}

