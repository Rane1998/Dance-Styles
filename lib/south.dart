// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class South extends StatelessWidget {
  const South({Key? key}) : super(key: key);

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
                      "images/h.jpeg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Low Country Dancing",
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
         The Low country dances of the southern plains mostly spread in coastal areas such as Galle, Matara, Hambanthota etc . It has two contents of Devil dance & Deity Dance.
Dances in low country are highly ritualistic. This form of dance is performed to appease evil spirits which causes sickness and is thus called ‘Devil Dance’.

The dancers wear masks depicting many characters varied in forms of bird, demons, reptiles, etc. Deity Dances are used to get the help of variety of Gods & Goddesses , to appease evil spirits .

 There are some dances related to the Pahatharata ( low country) style known as Daha Ata Sanniya held to exorcise 18 types of diseases from the human body. Furthermore there are some Kolam (jovial) characters & Devil characters also can be seen. A cylindrical body drum used for low country dancing is called as “Yak Bera”, and it is beaten with both hands.


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
                      "images/a.jpg",
                    ),
                    fit: BoxFit.fitHeight,
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
                      "images/c.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  ''' 
          Dances of Sri Lanka states that Low Country dances are very different from Kandyan dance—the only similarity being the basic mandiya pose of knees half bent and spread outward, and arms bent at the elbows in line with the chest. These dances are very ritualistic, and the use of masks is prevalent through all of them.
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
