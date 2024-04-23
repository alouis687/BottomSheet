import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheet(),
  ));
}

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: const Text('Flutter Bottom Sheet'),
      ),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {showSheet(context);}, child: const Text('Select the category'))),
          ElevatedButton(onPressed: () {}, child: const Text('Help'))
        ],
      ),
    );
  }

  showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return const Column(
        children: [Padding(
          padding: EdgeInsets.only(top: 40),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.blue,),
                  Text('Shopping')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.grey,),
                  Text('Education')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.blueGrey,),
                  Text('Personal')
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40,bottom: 40),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.pink,),
                  Text('Office')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.yellow,),
                  Text('Part-time')
                ],
              ),
              Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.grey,),
                  Text('Others')
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  Icon(Icons.folder,
                  size: 70,
                  color: Colors.blue,),
                  Text('New')
                ],
              ),
            ),
            
          ],
        ),
        ],
      );
    });
  }

}
