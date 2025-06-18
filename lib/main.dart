import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const String appTitle = "Flutter aplicación 3";

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const Center(
          
          //Establece el layout general dentro del cual los widgets se acomodan.
          child: Column(
            children: [
              TitleSection(name: "Quito", location: "Costa ecuatoriana")
            ],
          )
        ),
      ),
    );

  }
}


//1
//Imagen

//2
//Row 1
class TitleSection extends StatelessWidget 
{
  //Constructor
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {


    //Estilizado con el padding 
    return Padding(
      padding: const EdgeInsets.all(32),
      //Row 1
      child: Row(

        //Columna con 2 hijos. Texto en ambos.
        children: [
          Expanded(
            //1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),

          //Íconos y texto, uno junto al otro, junto a la columna de textos.
          /*3
          
          Elementos*/
          
          //1. Ícono
          Icon(Icons.star, color: Colors.red[500]),
          //2. Texto
          const Text('41'),
        ],
      ),
    );
  }
}




//3
//Row 2
class ButtonSection extends StatelessWidget {
  const ButtonSection ({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color:color, icon:Icons.call, label: "CALL"),
          ButtonWithText(color:color, icon:Icons.route, label: "ROUTE"),
          ButtonWithText(color:color, icon:Icons.share, label: "SHARE")
        ],        
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText(
    {
      super.key,
      required this.color,
      required this.icon,
      required this.label,  
    }
  );

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}