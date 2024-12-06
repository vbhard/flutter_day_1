import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          //brightness: Brightness.light,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Find Your',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 25),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "Inspiration",
                            style: TextStyle(color: Colors.black, fontSize: 40),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(244, 243, 243, 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.black87),
                              hintText: "Search you're looking for",
                              hintStyle: TextStyle(color: Colors.grey),
                            )),
                          ),
                        ])),
                const SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text("Promo today",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 15),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                promoCard('assets/images/one.jpg'),
                                promoCard('assets/images/two.jpg'),
                                promoCard('assets/images/three.jpg'),
                                promoCard('assets/images/four.jpg'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/three.jpg'),
                                ),
                              )),
                        ])),
              ]),
        ),
      ),
    );
  }

  Widget promoCard(img) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Best Design",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}
