import 'package:aprender_ingles/telas/Bichos.dart';
import 'package:aprender_ingles/telas/Numeros.dart';
import 'package:aprender_ingles/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {

    super.initState();

    _tabController = TabController(
        length: 3,
        vsync: this
    );
  }

  @override
  void dispose() {

    super.dispose();

    _tabController.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Ingles"),
        bottom: TabBar(
          indicatorWeight: 4,
          //indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: [
            Tab(text: "Bichos",),
            Tab(text: "Numeros",),
            Tab(text: "Vogais",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais()
        ],
      ),
    );
  }
}
