import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سبحة الكترونية',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'سبحة الكترونية'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  String selectword = '';

  void onWordPressed(String word) {
    setState(() {
      // صححنا التعيين هنا
      selectword = word;

      if (word == 'سبحان الله') {
        count1++;
      } else if (word == 'الحمد لله') {
        count2++;
      } else if (word == 'الله أكبر') {
        count3++;
      }
    });
  }

  int getCurrentCount() {
    if (selectword == 'سبحان الله') return count1;
    if (selectword == 'الحمد لله') return count2;
    if (selectword == 'الله أكبر') return count3;
    return 0;
  }

  void resetCounter() {
    setState(() {
      count1 = 0;
      count2 = 0;
      count3 = 0;
      selectword = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: resetCounter),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectword.isEmpty ? '' : selectword,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              '${getCurrentCount()}',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTasbeehButton('سبحان الله', Colors.teal),
                const SizedBox(width: 15),
                _buildTasbeehButton('الحمد لله', Colors.teal),
                const SizedBox(width: 15),
                _buildTasbeehButton('الله أكبر', Colors.teal),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildTasbeehButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () => onWordPressed(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
