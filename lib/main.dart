import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:comapp/utils/utils.dart';
import 'package:comapp/view/view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main (){
runApp(const HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _){
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
      title: "COMApp",
      themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme:MyThemes.darkTheme,
      home:   AnimatedSplashScreen(
            duration: 500,
            splash: Icons.home,
            nextScreen: const COMView(),
            splashTransition: SplashTransition.fadeTransition,
            //pageTransitionType: PageT,
            backgroundColor: Colors.blue)
        );
      },);
}

// import 'package:flutter/material.dart';
// // import 'package:flutter_libserialport/flutter_libserialport.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   final List<String>_sp = ["y","h"];//SerialPort.availablePorts;
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
  
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    
//         title: Text(widget.title),
//       ),
//       body: Center(

//         child: Column(
         
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             DropdownButton(
//               items: _sp.map((e) => DropdownMenuItem (child: Text(e), value: e, ))
//               .toList(),
//               onChanged: (val){
//               setState((){
              
//               });
//               },
//               ),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
