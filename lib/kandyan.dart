// ignore_for_file: prefer_const_constructors

import 'package:dance_styles/msg.dart';
import 'package:flutter/material.dart';

class Kandy extends StatelessWidget {
  const Kandy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: <Widget>[
              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'images/arrow.png',
                      color: Colors.blue,
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/home.png',
                              height: 30, color: Colors.blue)),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "images/x.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              // Description
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Kandyan Dancing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  ''' 
         The udarata dance is a very prestigious performance. Its name comes from the udarata, a small lacquered hand drum in the shape of an hourglass, about 7.5 inches (18 cm) high, believed to have been given to people by the gods. The two drum skins are believed to have been given by the god Iswara, and the sound by Visnu; the instrument is said to have been constructed according to the instructions of Sakra and was played in the heavenly palace of the gods. It is a very difficult instrument to play. The dancer sings as he plays, tightening the strings to obtain variations of pitch.
Kandyan dance encompasses various dance forms popular and native to the area called Kandy of the Central hills region known as Udarata in Sri Lanka, which have today spread to other parts of the country.

According to the legend, the origins of the dance lies in dance ritual known as the Kohomba kankariya (named for the deity Kohomba), which is also known as Kohomba yak kankariya or simply kankariya. Traditional dance masters believe that originally the king of a place referred to as "Malaya Rata", and his two brothers, performed the first Kohomba kankariya. Some believe that this "Malaya Rata" was located in India.

According to legend, the three shamans came to the island as a result of a trick of the god Śakra in order to cure the king, Panduwasdev, who was suffering from a mysterious illness. The king was said to be suffering from a recurring dream in which a leopard was directing its tongue towards the king, believed to be as a black magic of Kuweni, the first wife of the king Vijaya. After the performance of the Kohomba kankariya the illness vanished, and many natives adopted the dance.


          ''',
                  maxLines: 50,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "images/t.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  ''' 
          It was originally performed by dancers who were identified as a separate caste under the Kandyan feudal system. They were aligned to the Temple of the Tooth and had a significant role to play in the dalada perahera (procession) held each year by the temple.

          The dance waned in popularity as the support for the dancers from the Kandyan kings ended during the British period. It has now been revived and adapted for the stage, and is Sri Lanka's primary cultural export.

          Ves dance, the most popular, originated from an ancient purification ritual, the Kohomba yakuma or Kohomba kankariya. The dance was propitiatory, never secular, and performed only by males. The elaborate ves costume, particularly the headgear, is considered sacred and is believed to belong to the deity Kohomba.

          Only toward the end of the 19th century were ves dancers first invited to perform outside the precincts of the Kankariya Temple at the annual Kandy Perahera festival. Today the elaborately costumed ves dancer epitomizes Kandyan dance, which highlights Sri Lanka's culture.
          ''',
                  maxLines: 20,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Comments",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 22, 6, 66)),
            ),
          ),

          //Commet Insert

          TextField(
            decoration: InputDecoration(
              hintText: "What do you think?",
              prefixIcon: Icon(Icons.edit),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 6, 11, 58), width: 1.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white, width: 1.0)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),

          SizedBox(height: 20),

          // Button Navigation

          GestureDetector(
            onTap: () {
              showDialog(context: context, builder: (context) => AboutWidget());
            },
            child: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 4, 34, 59),
              ),
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
