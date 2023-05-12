import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool clicked=false;
  bool checkeda = false;
  bool checkedb = false;
  var checked=[
    false,false,false,false,false,
    false,false,false,false,false,
    false,false,false,false,false,
    false,false,false,false,false,
    false,false,false,false,false,
    false,false,false,false,false,
    false,false,false,false,false,
    false,false,false,false
  ];
  String url ="https://apimocha.com/flutterassignment/getGenres";

  var mapResponse;
  var dataResponse;
  var genresResponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(url));
    print("response code ${response.statusCode}");
    // print("response ${response.body}");
    if (response.statusCode == 200) {
      mapResponse = json.decode(response.body);
      dataResponse = mapResponse['data'];
      genresResponse=dataResponse["genres"];
      // print("data response is ${dataResponse.toString()}");
      // print("data ${mapResponse['data']}");
      // listResponse = mapResponse['data'];
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sign Up", style: TextStyle(color: Colors.white)),
                              Container(
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.black,
                                      ),
                                      backgroundColor: Colors.white,
                                    )),
                              ),
                            ],
                          ), // signup
                          Row(
                            children: [
                              Text(
                                'Let\'s create your ',
                                style: TextStyle(color: Colors.white, fontSize: 25),
                              ),
                              Text(
                                "Account",
                                style: TextStyle(color: Colors.orange, fontSize: 25),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "First Name",
                                        ),
                                        WidgetSpan(
                                            child: Transform.translate(
                                              offset: Offset(2, -4),
                                              child: Text(
                                                "*",
                                                textScaleFactor: 0.7,
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ))
                                      ])),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.white,),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white.withOpacity(0.5),),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      border: OutlineInputBorder(
                                      ),
                                    ),
                                    cursorColor: Colors.orange,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "Last Name",
                                        ),
                                        WidgetSpan(
                                            child: Transform.translate(
                                              offset: Offset(2, -4),
                                              child: Text(
                                                "*",
                                                textScaleFactor: 0.7,
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ))
                                      ])),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.white,),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white.withOpacity(0.5),),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      border: OutlineInputBorder(
                                      ),
                                    ),
                                    cursorColor: Colors.orange,

                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "Mobile No",
                                        ),
                                        WidgetSpan(
                                            child: Transform.translate(
                                              offset: Offset(2, -4),
                                              child: Text(
                                                "*",
                                                textScaleFactor: 0.7,
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ))
                                      ])),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 65,
                                      decoration: BoxDecoration(
                                          border:
                                          Border.all(width: 1, color: Colors.white.withOpacity(0.5)),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft: Radius.circular(4)),
                                                color:Colors.black ),
                                            height: 65,
                                            width: 40,
                                            child: Center(
                                              child: Text(
                                                "+91",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: TextFormField(
                                                keyboardType: TextInputType.phone,
                                                style: TextStyle(color: Colors.white,),
                                                decoration: InputDecoration(
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.transparent)
                                                  )
                                                ),

                                                cursorColor: Colors.orange,

                                              ),),
                                        ],
                                      )),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "Alternate Mobile No",
                                        ),
                                        WidgetSpan(
                                            child: Transform.translate(
                                              offset: Offset(2, -4),
                                              child: Text(
                                                "*",
                                                textScaleFactor: 0.7,
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ))
                                      ])),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.phone,
                                    style: TextStyle(color: Colors.white,),
                                    decoration: InputDecoration(
                                      prefixText: " +91",
                                        prefixStyle: TextStyle(color: Colors.white),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white.withOpacity(0.5),),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      border: OutlineInputBorder(
                                      ),
                                    ),
                                    cursorColor: Colors.orange,

                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: "Email",
                                        ),
                                        WidgetSpan(
                                            child: Transform.translate(
                                              offset: Offset(2, -4),
                                              child: Text(
                                                "*",
                                                textScaleFactor: 0.7,
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ))
                                      ])),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.white,),
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.white.withOpacity(0.5),),
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      border: OutlineInputBorder(
                                      ),
                                    ),
                                    cursorColor: Colors.orange,

                                  ),
                                ],
                              ),
                            ),
                          ),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Performance Type",
                                ),
                                WidgetSpan(
                                    child: Transform.translate(
                                      offset: Offset(2, -4),
                                      child: Text(
                                        "*",
                                        textScaleFactor: 0.7,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))
                              ])),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: checkeda,
                                  activeColor: Colors.orange,
                                  fillColor: MaterialStatePropertyAll(Colors.orange),
                                  checkColor: Colors.black,
                                  onChanged: (value) {
                                    setState(() {
                                      checkeda = !checkeda;
                                    });
                                  }),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "In Person",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Checkbox(
                                  value: checkedb,
                                  activeColor: Colors.orange,
                                  fillColor: MaterialStatePropertyAll(Colors.orange),
                                  checkColor: Colors.black,
                                  onChanged: (value) {
                                    setState(() {
                                      checkedb = !checkedb;
                                    });
                                  }),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Virtual",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 200,
                          // ),
                        ]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.orange)
                    ),
                    onPressed: (){
                      clicked=true;
                      setState(() {

                      });
                      apicall();
                    }, child: Text("Generes")),
              ),
              Container(child:genresResponse!=null?
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3),
                    itemCount: 39,
                    itemBuilder: (BuildContext context,int index){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(children: [
                            Checkbox(
                                value: checked[index],
                                activeColor: Colors.orange,
                                fillColor: MaterialStatePropertyAll(Colors.orange),
                                checkColor: Colors.black,
                                onChanged: (value) {
                                  setState(() {
                                    checked[index] = !checked[index];
                                  });
                                }),
                            Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              child: Text("${genresResponse[index]["name"]} "),
                              color: Colors.orange,
                              elevation: 5,
                            ),
                          ],),
                        ],
                      );
                    }
                ),
              )
                  :clicked?Center(child: CircularProgressIndicator(color: Colors.orange,backgroundColor: Colors.white,)):Container(),),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Submit"),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.orange)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getlist(){
    return Flexible(
      fit: FlexFit.loose,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                  Text("Element ${index} "),
                ],
              );
            }
        )
    );
  }
}
