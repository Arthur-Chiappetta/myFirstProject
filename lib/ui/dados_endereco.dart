import 'package:arthur/ui/home_page.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class AddressData extends StatefulWidget {

  @override
  _AddressDataState createState() => _AddressDataState();
}

class _AddressDataState extends State<AddressData> {

  final cep = TextEditingController();
  final number = TextEditingController();
  final complement = TextEditingController();
  var street = TextEditingController();
  var district = TextEditingController();
  var city = TextEditingController();
  var state = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dados endereço"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCEP("CEP", cep),
            buildNumber("Número", number),
            buildComplement("Complemento", complement),
            buildStreet("Logradouro", street),
            buildDistrict("Bairro", district),
            buildCity("Cidade", city),
            buildState("Estado", state),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: FloatingActionButton.extended(
                backgroundColor: Colors.deepOrange,

                  onPressed: (){},
                  label: Text("Salvar alteração")

              ),
            )
          ],
        ),
      ),
    );
  }





  Widget buildCEP(String label, TextEditingController texto) {
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
            suffixIcon: IconButton(icon: Icon(Icons.search_outlined),
              onPressed: (){},
            )
        ),inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CepInputFormatter(ponto: false),
        ],
        keyboardType: TextInputType.number,
      ),
    );
  }


  Widget buildNumber(String label, TextEditingController texto){
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 13.0, color: Colors.black),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget buildComplement(String label, TextEditingController texto){
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 13.0, color: Colors.black)
        ),
      ),
    );
  }

  Widget buildStreet(String label, TextEditingController texto){
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 13.0, color: Colors.black)
        ),
      ),
    );
  }

  Widget buildDistrict(String label, TextEditingController texto){
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 13.0, color: Colors.black)
        ),
      ),
    );
  }

  Widget buildCity(String label, TextEditingController texto){
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 13.0, color: Colors.black)
        ),
      ),
    );
  }

  Widget buildState(String label, TextEditingController texto){
    return Padding(padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: TextField(
        controller: texto,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 13.0, color: Colors.black)
        ),
      ),
    );
  }
}

