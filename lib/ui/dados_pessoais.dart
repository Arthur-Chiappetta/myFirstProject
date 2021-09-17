import 'package:arthur/ui/home_page.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersonalData extends StatefulWidget {

  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {

  final mn = TextEditingController();
  final cpf = TextEditingController();
  final nasc = TextEditingController();
  final rg = TextEditingController();
  final nm = TextEditingController();
  final email = TextEditingController();
  final tel = TextEditingController();
  final cel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network("https://ofertas.conectcar.com/p/images/logo-conectcar-solo.png",
          alignment: Alignment.centerLeft,
          height: 150.0,
          width: 150.0,
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
          }),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Center(
              child: Text("Dados pessoais",
              style: TextStyle(color: Colors.deepOrangeAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
            buildName("NOME E SOBRENOME", mn),
            buildCpf("CPF", cpf),
            buildNasc("DATA DE NASCIMENTO", nasc),
            buildRg("RG", rg),
            buildName("NOME DA MÃE", nm),
            buildEmail("E-MAIL", email),
            buildTel("TELEFONE", tel),
            buildTel("CELULAR", cel)
          ]
        ),
      ),
    );
  }


  Widget buildName(String label, TextEditingController texto){
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 30.0, right: 30.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
        ),
        keyboardType: TextInputType.name,
      ),
    );
  }

  Widget buildCpf(String label, TextEditingController cpf){
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 30.0, right: 30.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: cpf,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 12.0, color: Colors.black
        )),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CpfInputFormatter()
        ],
      ),
    );
  }

  Widget buildNasc(String label, TextEditingController nasc){
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 30.0, right: 30.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: nasc,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 12.0, color: Colors.black
            )),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          DataInputFormatter()
        ],
      ),
    );
  }

  Widget buildRg(String label, TextEditingController rg){
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 30.0, right: 30.0),
      child: TextField(
        controller: rg,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget buildEmail(String label, TextEditingController email){
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 30.0, right: 30.0),
      child: TextField(
        controller: email,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget buildTel(String label, TextEditingController tel){
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, bottom: 30.0, right: 30.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: tel,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 12.0, color: Colors.black
            )),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          TelefoneInputFormatter()
        ],
      ),
    );
  }
}
