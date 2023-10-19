import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int _cou =0;
  void _count(){
    setState(() {
      _cou++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            InkWell(child: Text("hello"),onTap: () => _count(),splashColor: Colors.red,),
            Text("$_cou"),
            ElevatedButton(onPressed: _count, child: Text("hi")),
            FloatingActionButton(onPressed: _count,child: Icon(Icons.add),)
          ],
        ),
      ),
    );
  }
}