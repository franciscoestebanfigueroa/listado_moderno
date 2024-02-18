import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        
        body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  double.infinity,
      height: double.infinity,
      color: Colors.indigo,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
            Expanded(
              flex: 2,
              child: Header()),
            Expanded(
              flex: 4,
              child: SuperBoton())
            
            
        ]
      ),
    );
  }
}


class SuperBoton extends StatelessWidget {
  const SuperBoton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: MediaQuery.of(context).size.width*.3,
        decoration: const BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(20))  ,   
        gradient: LinearGradient(
          colors: [Colors.pink,Colors.grey]
        )
        ),
     child: Container(
       decoration: const BoxDecoration(
        borderRadius:BorderRadius.all(Radius.circular(20))  ,   
        color: Colors.red,
        ),
        child: const Stack(
          children:[
              Positioned(
                bottom: -10,
                right: -10,
                child: Opacity(
                  opacity: 0.2,
                  child: FaIcon(FontAwesomeIcons.carBurst,size: 80,color: Colors.white,),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FaIcon(FontAwesomeIcons.carBurst,color: Colors.white,),
                    Text("Accidente de terceros",style: TextStyle(fontSize: 18,color: Colors.white),),
                    FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,),
                  ],
                ),
              ),
              
              
          ]
        ),
     ),
      ),
    );
  }
}


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        FondoHeader(),
        FrenteHeader()
      ],
    );
  }
}


class FrenteHeader extends StatelessWidget {
  const FrenteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          top: -45,
          left: -35,
          child: Opacity(
            opacity: 0.2,
            child: FaIcon(FontAwesomeIcons.add,
            size: 200,
            color: Colors.white,
            shadows: <Shadow>[Shadow(
              color: Colors.white ,
              offset:Offset(-10.0,-10.0),
              blurRadius: 20
              )],),
          )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Has Solicitado Asistecia",style: TextStyle(fontSize: 20),),
              Text("Medica",style: TextStyle(fontSize: 30),),
              Opacity(
                opacity: 0.5,
                child: FaIcon(FontAwesomeIcons.add,size: 60,color: Colors.white,)),
            ],
          ))
      ],
    );
  }
}

class FondoHeader extends StatelessWidget {
  const FondoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
                 Colors.blue,Colors.indigo
                 ]
             ),
        
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100)
          
          )

      ),
    );
  }
}