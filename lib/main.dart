
import 'package:flutter/material.dart';
import 'package:domaci4/drugi.dart';


void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget{
  

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp>{
 static const  List<Widget> _widgetOptions = <Widget>[  
Text('Dobrodosli!\nUlogovali ste se!\n', style: TextStyle(fontSize: 70, fontStyle:FontStyle.italic)),
    Text('Nemate isplaniranih letova!', style:  TextStyle(fontSize: 70, fontStyle:FontStyle.italic)),  
  ];             

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  goToPage(context){
    Navigator.push(
    context,
   
    MaterialPageRoute(builder: (context) => const DrugiWidget()),
  );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
          title: const Text("Blog"),
          backgroundColor: Colors.brown,
          actions: [
            InkWell(
              child: const Icon(Icons.arrow_forward),
              onTap: (){
                goToPage(context);
              },
            )
          ],
           
        ),
body:
Center(

        child: _widgetOptions.elementAt(_selectedIndex),),  
        
      bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            // ignore: deprecated_member_use
            title: Text('Home'), 
             backgroundColor: Colors.brown,  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.flight),  
            // ignore: deprecated_member_use
            title: Text('Flight'),  
             backgroundColor: Colors.brown, 
          ),  
        ],  
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        iconSize: 50,  
        onTap: _onItemTapped,  
        elevation: 3  
      ), 



      
      ),
    );
    



}


}
