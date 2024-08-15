import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Some title",
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/secondPage': (context) => SecondPage(),
      '/thirdPage': (context) => ThirdPage(),
    }
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 153, 0),
        title: Text("First page"),
      ),
      body: ElevatedButton(
        onPressed: null,
        child: Text('pop the stack!'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/homePage');
              },
              icon: Icon(Icons.home),
              ),IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/secondPage');
              },
              icon: Icon(Icons.settings),
              ),
              IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/thirdPage');
              },
              icon: Icon(Icons.circle),
              )
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 230, 0),
        title: Text("Second page"),
      ),
            bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/thirdPage');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),)
            },
              icon: Icon(Icons.home),
              )
          ],
        ),
      ),
    );
  }
}



class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 232, 19, 251),
        title: Text("Third page"),
      ),
            bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/homePage');
              },
              icon: Icon(Icons.home),
              )
          ],
        ),
      ),
    );
  }
}