import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' show FadeInLeft, FadeInRight, FadeInUp;

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.deepOrangeAccent,
              Colors.orangeAccent,
              Colors.orange,
            ],
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeInLeft(duration: const Duration(milliseconds: 1000), child: const Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 40))),
                  const SizedBox(height: 10),
                  FadeInLeft(duration: const Duration(milliseconds: 1000), child: const Text("Bem vindo de volta", style: TextStyle(color: Colors.white, fontSize: 18))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 30),
                        FadeInUp(duration: const Duration(milliseconds: 1000), child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [BoxShadow(
                              color: Color.fromRGBO(255, 95, 27, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                            )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "E-mail ou número de telefone",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Senha",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        const SizedBox(height: 40,),
                        FadeInUp(duration: const Duration(milliseconds: 1000), child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          child: MaterialButton(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            onPressed: () {},
                            height: 20,
                            disabledElevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 0,
                            child: const Center(
                              child: Text("Esqueceu a senha?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),),
                            ),
                          ),
                        )),
                        // FadeInUp(duration: const Duration(milliseconds: 1000), child: const Text("Esqueceu a senha?", style: TextStyle(color: Colors.grey),)),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: FadeInUp(duration: const Duration(milliseconds: 1600), child: MaterialButton(
                            onPressed: () {},
                            height: 50,
                            color: Colors.orange[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            elevation: 0,
                            child: const Center(
                              child: Text("Entrar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )),
                        ),
                        const SizedBox(height: 50,),
                        const Text("Continuar com as redes sociais", style: TextStyle(color: Colors.grey),),
                        const SizedBox(height: 40,),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: FadeInLeft(duration: const Duration(milliseconds: 1600), child: MaterialButton(
                                onPressed: () {},
                                height: 50,
                                // margin: EdgeInsets.symmetric(horizontal: 50),
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                elevation: 0,
                                // decoration: BoxDecoration(
                                // ),
                                child: const Center(
                                  child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ),
                              )),
                            ),
                            const SizedBox(width: 30,),
                            Expanded(
                              child: FadeInRight(duration: const Duration(milliseconds: 1600), child: MaterialButton(
                                onPressed: () {},
                                height: 50,
                                // margin: EdgeInsets.symmetric(horizontal: 50),
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                elevation: 0,
                                // decoration: BoxDecoration(
                                // ),
                                child: const Center(
                                  child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ),
                              )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40,),
                        const Text("Todos os direitos estão reservados - ManuelDesign", style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
