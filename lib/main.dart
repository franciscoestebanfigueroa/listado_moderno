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
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
            const Expanded(
              flex: 2,
              child: Header()),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SuperBoton(
                       coloruno:Colors.pink,
                       colordos:Colors.grey,
                       funcion: (){print("Click");},
                       icono: FontAwesomeIcons.carBurst,
                       titulo: "Tecpro Bahia",
                    ),
                    SuperBoton(coloruno: Colors.orange,
                     colordos: Colors.grey, titulo: "Las Obreras",
                      icono: Icons.ac_unit_sharp,
                       funcion: (){print("Las Obreras");}),
                       SuperBoton(coloruno: Colors.yellow,
                        colordos: Colors.grey,
                         titulo: "Gusatvo Luna",
                          icono: FontAwesomeIcons.moon,
                           funcion: (){print("Luna");}),
                           SuperBoton(
                       coloruno:Colors.blue,
                       colordos:Colors.grey,
                       funcion: (){print("Click");},
                       icono: FontAwesomeIcons.carBurst,
                       titulo: "Tecpro Bahia",
                    ),
                    SuperBoton(coloruno: Colors.black,
                     colordos: Colors.grey, titulo: "Las Obreras",
                      icono: Icons.ac_unit_sharp,
                       funcion: (){print("Las Obreras");}),
                       SuperBoton(
                        coloruno: Colors.yellow,
                        
                         titulo: "Gusatvo Luna",
                          icono: FontAwesomeIcons.moon,
                           funcion: (){print("Luna");})
                  ],
                ),
              ))
            
            
        ]
      ),
    );
  }
}


class SuperBoton extends StatelessWidget {
  final Color coloruno ;
  final Color colordos ;
  final String titulo; 
  final IconData icono;
  VoidCallback funcion;
  
   SuperBoton({       
    this.coloruno = Colors.grey,
    this.colordos = Colors.pink,
    required this.titulo, 
    required this.icono,
    required this.funcion

    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funcion,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
          width: double.infinity,
          height: MediaQuery.of(context).size.width*.3,
          decoration:  BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(20))  ,   
          gradient: LinearGradient(
            colors: [coloruno,colordos]
          )
          ),
       child: Container(
         decoration: const BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20))  ,   
         // color: Colors.red,
          ),
          child:  Stack(
            children:[
                Positioned(
                  bottom: -12,
                  right: -7,
                  child: Opacity(
                    opacity: 0.2,
                    child: ClipRRect(
                      borderRadius:const BorderRadius.only(bottomRight: Radius.circular(58)),
                      child: FaIcon(icono,size: 80,color: Colors.white,)),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(icono,color: Colors.white,size: 50,),
                      Text(titulo,style: const TextStyle(fontSize: 18,color: Colors.white),),
                      const FaIcon(FontAwesomeIcons.arrowRight,color: Colors.white,),
                    ],
                  ),
                ),
                
                
            ]
          ),
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