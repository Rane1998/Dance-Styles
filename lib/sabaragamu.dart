// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Sabaragamuwa extends StatelessWidget {
  const Sabaragamuwa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
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
                      "images/sabaragamu.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Sabaragamuwa Dancing",
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
          The Sabaragamuwa dance style is performed to worship the God of Saman.Typically, this dance is exclusively performed in Ratnapura.The local people love and admire the God Saman in a fascinating way. What's more, this dance style is a combination of both Kandyan Dance and Low country Dance.
          
          The Sabaragamuwa dance style by its geographical location has taken from both Low-Country and Kandyan dance styles. Sabaragamu has based on ritual of the lights (Pung Madu). The more popular drum was the Yukk Bera originally but today the use of Dowla and Thammettama, gives the Sabaragamuwa a quaint peculiarity all its own. 
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
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(
                      "images/saba.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  ''' 
           The Sabaragamuwa tradition has its own distinctive costumes, songs, chants, drums, and rhythms. In the ancient times, the drum used in accompaniment of these dances was the patawa drum. These days, the dawula or dawul beraya is used. While the Kandyan dancers also use the dawula in accompaniment, the dawula of the Sabaragamuwa region is slightly larger than the udarata dawula.
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
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),

          SizedBox(height: 70),

          GestureDetector(
            onTap: () {},
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
