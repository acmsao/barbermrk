
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtnome = TextEditingController();
    TextEditingController txtsenha = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Barber Mark"),
        leading: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset('imagens/polo barbeiro.png'),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children:<Widget> [
          Image.asset('imagens/barbermark.png'),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white.withOpacity(0.8),
            child: ListView(
              children:<Widget> [
                SizedBox(
                  width: 150,
                  height: 200,
                  child:  Image.asset('imagens/barba cabelo.png',color: Colors.black.withOpacity(.6),),
                ),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  controller: txtnome,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                 TextFormField(
                  controller: txtsenha,
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.centerRight,
                  child: FlatButton(onPressed: (){}, child: Text('esqueci minha senha',style: TextStyle(color: Colors.redAccent),)),
                ),
                Padding(padding: EdgeInsets.all(10)),
                
                Container(
                  width: 100,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [.1,1],
                      colors: [
                        Colors.grey[100],
                        Colors.black54,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: SizedBox(
                    child: FlatButton(onPressed: (){},
                     child: Text('Entrar',style: TextStyle(
                       color: Colors.black,
                       fontSize: 30,
                     ),)),
                  ) ,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
