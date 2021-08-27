import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Mi primer app'),
      ),
      body: Container(
        margin: const EdgeInsets.all(7.0),
        padding: EdgeInsets.all(10),
        color: Colors.orange,
        child: 
        Column(children: [
          Text('Guadalajara', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500)),
          Text('Nublado'),
          Row(children: [
            Icon(Icons.cloud, size: 64, color: Colors.grey),
            Text('19°C', style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.w200)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,),
          Align(
            alignment: Alignment.center,
            child: MaterialButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Actualizando...')));
            }, child: Text('Actualizar datos'), color:Colors.yellow),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,)
      ),
    );
  }
}