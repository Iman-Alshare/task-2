import 'package:flutter/material.dart';
import 'package:comapp/utils/utils.dart';
import 'package:comapp/presenter/presenter.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

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
  var baudrate = [9600, 19200, 38400, 57600, 115200];
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
      body:  Container(child: Center(
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
              const SizedBox(width: 16,),
             ElevatedButton(
              child: const Text(
                'Connect',
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
       DropdownButton(
              items: _sp.map((e) => DropdownMenuItem (value: e,child: Text(e), ))
              .toList(),
              onChanged: (val){
              setState((){
              });
              },
              ),
               const SizedBox(width: 16,),
             ElevatedButton(
              child: const Text(
                'Disconnect',
              ),
              onPressed: () {},
            ),
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
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter message',
          border: OutlineInputBorder(),
        
        ),
      )),
      const SizedBox(width: 16,),
      Text("OFF"
            ,style: TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold
       )),
      ],
      )
      ],
        )
      ,),
      )
  );
} 
}