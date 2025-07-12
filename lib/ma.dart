import 'package:flutter/material.dart';

class bc extends StatefulWidget {
  const bc({super.key});

  @override
  State<bc> createState() => _bcState();
}

class _bcState extends State<bc> {
  final heightcontroller = TextEditingController();
  final weightcontroller = TextEditingController();

  double bmi=0;
  String result='';



  void bmical(){
    double height= double.parse(heightcontroller.text)/100 ;
    double weight=  double.parse(weightcontroller.text)/100 ;
    double bmi=weight/(height*height)*100;
    setState(() {result="your bmi is  ${bmi.toStringAsFixed(2)}";

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.blueAccent],
              begin: Alignment.topRight,
            ),
          ),
          child: Column(
            children: [
              Text(
                "bmi calculator",
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextField(controller: heightcontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "enter your height",
                            prefixIcon: Icon(Icons.height),
                            filled: true,
                            labelText: "height(cm)",
                          ),
                        ),
                        SizedBox(height: 30),

                        TextField(controller: weightcontroller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "enter your weight",
                            prefixIcon: Icon(Icons.monitor_weight),
                            filled: true,
                            labelText: "weight(kg)",
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          child: Center(
                            child: TextButton(onPressed: (){bmical();},
                              child: Text(
                                "calculate",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [Colors.lightBlueAccent, Colors.grey],
                              begin: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Text(result)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
