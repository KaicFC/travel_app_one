// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(240, 255, 255, 255),
        body: ListView(
          children: [
            _appBar(),
            _search(),
            _places(),
            _locales(),
            _popular(),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/iu-6.jpeg'),
              ),
              SizedBox(width: 10),
              Text(
                'Olá, KAIC!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 240, 89, 34),
                  blurRadius: 10,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black87,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _search() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle(title: 'Encontre seu lugar'),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Text(
                          'Pesquisar...',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Icon(
                          Icons.search,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 2,
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(158, 255, 68, 0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  _places() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/images/iu.jpeg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Pacote ${index + 1}',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(179, 255, 153, 0),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _locales() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 260,
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextTitle(title: 'Mais Visitados'),
                        Text(
                          'Ver mais',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 25),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: 120,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/iu-3.jpeg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Sky Rock Resort',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.place,
                                                  color: Colors.orange,
                                                  size: 15,
                                                ),
                                                Text(
                                                  'Minas Gerais, Brasil',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.orange,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _popular() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 230,
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextTitle(title: 'Popular'),
                        Text(
                          'Ver mais',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 25),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: 100,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/iu-2.jpeg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'New Style Resort',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.place,
                                                  color: Colors.orange,
                                                  size: 15,
                                                ),
                                                Text(
                                                  'Alagoas, Brasil',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black45,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.orange,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        color: Color.fromARGB(255, 46, 46, 46),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
