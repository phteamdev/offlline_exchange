import 'package:flutter/material.dart';
import 'package:practice/colors/constants.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> money = [
    'USD',
    'CAD',
    'AUD',
    'GBP',
    'IRR',
    'AED',
    'CNY',
  ];
  void GetMoney2(int index) {
    setState(() {
      ToB = money[index];
    });
  }

  void GetMoney1(int index) {
    setState(() {
      FromA = money[index];
    });
  }

  Widget PopUp1() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: ChangeColorR()),
      onPressed: () {},
      child: PopupMenuButton(
        child: Text(
          FromA,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: ChangeColorR2(),
        itemBuilder: ((context) => [
              PopupMenuItem(
                child: Text('USD'),
                value: dollar,
                onTap: () {
                  GetMoney1(0);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'CAD',
                ),
                value: cadollar,
                onTap: () {
                  GetMoney1(1);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'AUD',
                ),
                value: asdollar,
                onTap: () {
                  GetMoney1(2);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'GBP',
                ),
                value: pound,
                onTap: () {
                  GetMoney1(3);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'IRR',
                ),
                value: rial,
                onTap: () {
                  GetMoney1(4);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'AED',
                ),
                value: aed,
                onTap: () {
                  GetMoney1(5);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'CNY',
                ),
                value: cny,
                onTap: () {
                  GetMoney1(6);
                },
              ),
            ]),
        onCanceled: () {
          GetMoney1(0);
        },
        onSelected: (double newvalue) {
          Fromavalue = newvalue;
        },
      ),
    );
  }

  Widget PopUp2() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: ChangeColorR()),
      onPressed: () {},
      child: PopupMenuButton(
        child: Text(
          ToB,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: ChangeColorR2(),
        itemBuilder: ((context) => [
              PopupMenuItem(
                child: Text('USD'),
                value: dollar,
                onTap: () {
                  GetMoney2(0);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'CAD',
                ),
                value: cadollar,
                onTap: () {
                  GetMoney2(1);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'AUD',
                ),
                value: asdollar,
                onTap: () {
                  GetMoney2(2);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'GBP',
                ),
                value: pound,
                onTap: () {
                  GetMoney2(3);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'IRR',
                ),
                value: rial,
                onTap: () {
                  GetMoney2(4);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'AED',
                ),
                value: aed,
                onTap: () {
                  GetMoney2(5);
                },
              ),
              PopupMenuItem(
                child: Text(
                  'CNY',
                ),
                value: cny,
                onTap: () {
                  GetMoney2(6);
                },
              ),
            ]),
        onCanceled: () {
          GetMoney2(1);
        },
        onSelected: (double newvalue) {
          tobvalue = newvalue;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ChangeBackBolor(),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  GetTap();
                });
              },
              child: Container(
                width: 50.0,
                height: 40.0,
                child: ChangeIconLighter(),
              ),
            ),
          ],
        ),
        backgroundColor: ChangeBackBolor(),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          child: Image(
                            image: AssetImage('images/2.png'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '${showfinalvalue.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: ChangeColorR(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PopUp1(),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            size: 70.0,
                            color: ChangeColorR2(),
                          ),
                          PopUp2(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 105.0,
                            height: 30.0,
                            child: TextFormField(
                              controller: valuecontrol,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: ChangeColorR(),
                              ),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: ('Enter value'),
                                hintStyle: TextStyle(
                                  fontSize: 25.0,
                                  color: ChangeColorR(),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              final inputvalue =
                                  double.parse(valuecontrol.text);
                              setState(() {
                                showfinalvalue =
                                    inputvalue * (Fromavalue / tobvalue);
                              });
                            },
                            splashColor: ChangeColorR2(),
                            child: Icon(
                              Icons.send,
                              size: 35.0,
                              color: ChangeColorR(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
