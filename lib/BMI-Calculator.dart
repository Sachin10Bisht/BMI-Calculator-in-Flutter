import 'package:flutter/material.dart';
void main(){
  runApp(BMI());
}
class BMI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.purple
      ),
      home: DashBoard(),
    );
  }
}
class DashBoard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }
}
class DashBoardState extends State<DashBoard>{
  var wController = TextEditingController();
  var hfController = TextEditingController();
  var hiController = TextEditingController();
  String? BMIvalue = "0";
  String? BMIcheck = "Enter BMI Values to calculate";
  var BgColour = Colors.purple.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: double.infinity,
        color: BgColour,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("BMI",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Enter your Weight(in KG)",
                    labelStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),
                    prefixIcon: Icon(Icons.line_weight_rounded)
                ),
                controller: wController,
                keyboardType: TextInputType.number,

              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                    labelText: "Enter your Hieght(in feet)",
                    labelStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),
                    prefixIcon: Icon(Icons.height_sharp)
                ),
                controller: hfController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 12,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Enter your Height(in inches)",
                    labelStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),
                    prefixIcon: Icon(Icons.height)
                ),
                controller: hiController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 21,),
              ElevatedButton(onPressed:(){

                if(wController.text.isNotEmpty && hiController.text.isNotEmpty&& hfController.text.isNotEmpty){
                  var wt = int.parse(wController.text.toString());
                  var ft = int.parse(hfController.text.toString());
                  var inch = int.parse(hiController.text.toString());
                  var fht = (ft*12)+inch;
                  var Cmh = fht*2.54;
                  var hM = Cmh/100;
                  var value = wt / (hM*hM);
                  if(value < 18.50 && value > 2){
                    BMIcheck = "You are underweight";
                    BgColour = Colors.green.shade300;
                  }else if(value >= 18.50 && value <= 24.9){
                    BMIcheck = "Congrats you are healthy";
                    BgColour = Colors.blue.shade300;
                  }else if(value >= 25 && value <= 29.9){
                    BMIcheck = "You are OverWeight";
                    BgColour = Colors.orange.shade300;
                  }
                  else if(value >= 30){
                    BMIcheck = "Hell naaah you are really fat \n         Do some exercises ";
                    BgColour = Colors.red;
                  }
                  else{
                    BMIcheck = "Give real details";
                    BgColour = Colors.purple.shade200;
                  };
                  setState(() {
                    BMIvalue = value.toStringAsFixed(2);
                  });
                }else{
                  setState(() {
                    BMIvalue = "Enter all Three requirements !";
                    BMIcheck = "Missing some details";
                    BgColour = Colors.purple.shade200;
                  });
                };
              },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
                  child: Text("Calculate",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
              SizedBox(height: 12,),
              Text("$BMIvalue" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("$BMIcheck" ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}