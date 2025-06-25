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
        //Establece el layout general dentro del cual los widgets se acomodan.
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: "../images/lake.jpg"),
              TitleSection(place: "Quito", location: "Sierra ecuatoriana", icon: Icons.star, score: "50"),
              ButtonSection(),
              TextSection(description: 'Lake Oeschinen lies at the foot of the Blüemlisalp in the'
                                        'Bernese Alps. Situated 1,578 meters above sea level, it'
                                        'is one of the larger Alpine Lakes. A gondola ride from '
                                        'Kandersteg, followed by a half-hour walk through pastures '
                                        'and pine forest, leads you to the lake, which warms to 20 '
                                        'degrees Celsius in the summer. Activities enjoyed here '
                                        'include rowing, and riding the summer toboggan run.')
            ],
          )
        ),
      ),
    );
  }
}


class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.place,
    required this.location,
    required this.icon,
    required this.score
    });

    final String place;
    final String location;
    final IconData icon;
    final String score;

    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(bottom: 8),
                  child: Text(place)
                ),
                Text(location)
              ]
            ),
          ),
          Icon(icon, color: Colors.red),
          Text(score),
        ],
      ),
    );
  }
}




class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: Colors.black, icon: Icons.call, label: "CALL"),
          ButtonWithText(color: Colors.black, icon: Icons.route, label: "ROUTE"),
          ButtonWithText(color: Colors.black, icon: Icons.share, label: "SHARE"),
        ],
      ),
    );
  }
}


/*
return Padding(
  padding: EdgeInsets.only(top: 4, bottom: 4),
  child: Row(
    children: [
      ButtonWithText(color: Colors.black, icon: Icons.call, label: "CALL"),
      ButtonWithText(color: Colors.black, icon: Icons.route, label: "ROUTE"),
      ButtonWithText(color: Colors.black, icon: Icons.share, label: "SHARE"),
    ],
  ),
);
*/



class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}



class TextSection extends StatelessWidget {
  
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true,),
    );
  }
}






class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}




















































/*
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
*/