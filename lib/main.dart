import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              centerTitle: true,
              title: const Text(
                "مسبحة إلكترونية",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: const TabBar(

                isScrollable: true,
                tabs: [
                  Tab(child: Text("الله أكبر", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
                  Tab(child: Text("الحمد لله", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
                  Tab(child: Text("سبحان الله", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                CounterCircleWidget(
                  text: "الله أكبر",
                  counter: counter1,
                  onChanged: (value) => setState(() => counter1 = value),
                ),
                CounterCircleWidget(
                  text: "الحمد لله",
                  counter: counter2,
                  onChanged: (value) => setState(() => counter2 = value),
                ),
                CounterCircleWidget(
                  text: "سبحان الله",
                  counter: counter3,
                  onChanged: (value) => setState(() => counter3 = value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterCircleWidget extends StatelessWidget {
  final String text;
  final int counter;
  final ValueChanged<int> onChanged;

  const CounterCircleWidget({
    super.key,
    required this.text,
    required this.counter,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () => onChanged(counter + 1),
          child: Container(
            width: 220,
            height: 220,
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 52,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton.icon(
          onPressed: () => onChanged(0),
          icon: const Icon(Icons.refresh, color: Colors.black, size: 25),
          label: const Text("تصفير", style: TextStyle(color: Colors.blueGrey)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
