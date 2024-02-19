import 'package:flutter/material.dart';
import 'package:comapp/utils/utils.dart';
import 'package:comapp/presenter/presenter.dart';
import 'package:gauges/gauges.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class COMView extends StatefulWidget{
  const COMView({super.key});

  //final COMPresenter presenter;
  // const View({Key? key,this.presenter, this.title}) : super(key: key);
  //const COMView(this.presenter) : super();


  @override
  _COMViewState createState() => _COMViewState();
  
}

class _COMViewState extends State<COMView> {
  final COMPresenter _comPresenter = COMPresenter();
  List<int> baudrate = [9600, 19200, 38400, 57600, 115200];
  //List<String> availablePorts = SerialPort.availablePorts.toList();
 final List<String>_sp = ["y","h"];
 @override
  Widget build(BuildContext context){
  return Scaffold(//Container(child:
        appBar: AppBar(
      backgroundColor: Colors.orange,
      title: const Text('COM App'),
      actions: const [ChangeThemeButtonWidget()
      ],
      ),
      body:  Center( //Container(child: 
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              children: <Widget>[
             const SizedBox(width: 16,),
            const Text(
              "Port List" ,style: TextStyle(
                fontSize:18,
                fontWeight: FontWeight.bold
                )
               ),
               
             const SizedBox(width: 16,),
              DropdownButton(
              items: _sp.map((e) => DropdownMenuItem (value: e,child: Text(e), ))
              .toList(),
              onChanged: (val){
              setState((){

              });
              },
              ),
              const SizedBox(width: 90,),
             ElevatedButton(
              child: const Text(
                'Connect',
              ),
              onPressed: () {},
            ),
              SizedBox(width: 16,),
              ElevatedButton(
              child: const Text(
                'Disconnect',
              ),
              onPressed: () {},
            ),

           ]),
      const SizedBox(height: 10,),
      Row(
        children: [
        const SizedBox(width: 16,),
        const Text("Baud Rate"
        ,style: TextStyle(
                fontSize:18,
                fontWeight: FontWeight.bold
       )),
       const SizedBox(width: 16,),

              DropdownButton<int>(
              items: baudrate.map((int value) => DropdownMenuItem (value: value,
      child: Text(value.toString()),))
              .toList(),
              onChanged: (val){
              setState((){
              });
              },
              ),
            const SizedBox(width: 120,),
            Text("OFF"
            ,style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold
       )),
        ],

      ),
      const SizedBox(height: 18,),
      const Row(children: [
        SizedBox(width: 16,),
        Text("Input Message"
        ,style: TextStyle(
                fontSize:18,
                fontWeight: FontWeight.bold
       )),
        SizedBox(width: 10,),
         Flexible( 
      child:TextField(
          decoration: InputDecoration(
          hintText: 'Enter message',
          border: OutlineInputBorder(),
        
        )),
      ),
      const SizedBox(width: 16,),
      
      ],
      ),
      SizedBox(height: 18,),
      Row(
        children: [Container(
               height: 200, 
            child: Center(
          child: Row(
            children: [
          SfRadialGauge(
           title: GaugeTitle(
            text: 'RPM',
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 100,
              ranges: <GaugeRange>[
                // The first range from 0 to 40 with green color
                GaugeRange(
                  startValue: 0,
                  endValue: 40,
                  color: Colors.green,
                ),
                // The second range from 40 to 100 with red color
                GaugeRange(
                  startValue: 40,
                  endValue: 100,
                  color: Colors.red,
                ),
              ],
            ),
    ]
    ,
      ),
      const SizedBox(width: 50,),
      SfRadialGauge(
           title: GaugeTitle(
            text: 'Oil Pressure',
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 100,
              ranges: <GaugeRange>[
                // The first range from 0 to 40 with green color
                GaugeRange(
                  startValue: 0,
                  endValue: 40,
                  color: Colors.green,
                ),
                // The second range from 40 to 100 with red color
                GaugeRange(
                  startValue: 40,
                  endValue: 100,
                  color: Colors.red,
                ),
              ],
            ),
    ]
    ,
      )],
          ),        ),)
      ],
        ),
      ],
        ))
        //)
  );
} 
}