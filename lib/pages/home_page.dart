import 'package:flutter/material.dart';
import 'package:hawalati/pages/add.dart';
import 'package:hawalati/pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  int index_color = 0;
  // ignore: non_constant_identifier_names
  List Screen = [
    const Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Add_Screen()));
        },
        backgroundColor: const Color.fromARGB(255, 64, 4, 243),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      index_color = 0;
                    },
                  );
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0
                      ? const Color.fromARGB(255, 64, 4, 243)
                      : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      // index_color = 1;
                    },
                  );
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: index_color == 1
                      ? const Color.fromARGB(255, 64, 4, 243)
                      : Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //index_color = 2;
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: index_color == 2
                      ? const Color.fromARGB(255, 64, 4, 243)
                      : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      //index_color = 3;
                    },
                  );
                },
                child: Icon(
                  Icons.person_outlined,
                  size: 30,
                  color: index_color == 3
                      ? const Color.fromARGB(255, 64, 4, 243)
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
