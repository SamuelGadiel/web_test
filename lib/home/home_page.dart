import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SEO RENDERER EXAMPLE"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            // TextRenderer(
            //   child: Text(
            //     '$_counter',
            //     style: Theme.of(context).textTheme.headline4,
            //   ),
            // ),
            const TextRenderer(
                text: '',
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: Text('TESTE DE CONTAINER'),
                )),
            TextRenderer(
              text: '',
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: TextRenderer(
        text: '',
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
