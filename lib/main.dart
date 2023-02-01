import 'package:flutter/material.dart';

void main() {
  runApp(tipCAlu());
}

class tipCAlu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: tipCalu(),
    );
  }
}

class tipCalu extends StatefulWidget {
  @override
  State<tipCalu> createState() => _tipCaluState();
}

class _tipCaluState extends State<tipCalu> {
  var amtControler = TextEditingController();

  var custumTipControler = TextEditingController();

  var amountperson = '000';

  var totalBill = '000';

  var totalTip = '000';

  var personCunt = 1;

  var tipPerson = 0.00;

  var iscustumTipVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F3F4),
      body: SafeArea(
        child: Column(
          children: [
            //1rd part
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/chef.png'),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Mr',
                                style: TextStyle(
                                    fontWeight: FontWeight.w200, fontSize: 20),
                              ),
                              Text(
                                'TIP',
                                style: TextStyle(
                                    fontSize: 29, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Text(
                            'CALCULATER',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w200),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            //2rd part
            Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(34.0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          'Total P/parson',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w800),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\u{20B9}',
                              style: TextStyle(
                                  fontSize: 31, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              amountperson,
                              style: TextStyle(
                                  fontSize: 61, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18, right: 18),
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Total Bill',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    totalBill,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Color(0xff03C9BD),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Total Tip',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    totalTip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                      color: Color(0xff03C9BD),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.white,
                    ),
                  ),
                )),
            //3rd part
            Expanded(
              flex: 2,
              child: Padding(
                  padding: const EdgeInsets.only(left: 34, right: 34),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'ENTER  \n Your Bill',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: TextField(
                            cursorColor: Color(0xff03C9BD),
                            controller: amtControler,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.currency_rupee,
                                  color: Color(0xff03C9BD),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Color(0xff03C9BD),
                                      width: 1,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Color(0xff03C9BD), width: 2)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                      color: Color(0xff03C9BD),
                                    ))),
                          ))
                    ],
                  )),
            ),
            //4rd part
            Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.only(left: 34, right: 34),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'CHOUSE \n Your Tip',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: SizedBox(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            tipPerson = 0.05;
                                            upDateValueo();
                                          },
                                          child: Text('5%'),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff03C9BD),
                                              textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800)),
                                        ),
                                        height: double.infinity,
                                      ),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            tipPerson = 0.1;
                                            upDateValueo();
                                          },
                                          child: Text('10%'),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff03C9BD),
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14)),
                                        ),
                                      ),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: SizedBox(
                                        height: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            tipPerson = 0.15;
                                            upDateValueo();
                                          },
                                          child: Text('15%'),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff03C9BD),
                                              textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.5),
                                  child: SizedBox(
                                    child: iscustumTipVisible
                                        ? TextField(
                                            keyboardType: TextInputType.number,
                                            cursorColor: Color(0xff03C9BD),
                                            controller: custumTipControler,
                                            onChanged: (value) {
                                              tipPerson =
                                                  double.parse(value) / 100;
                                              upDateValueo();
                                            },
                                            decoration: InputDecoration(
                                                prefixIcon: Icon(
                                                  Icons.currency_rupee,
                                                  color: Color(0xff03C9BD),
                                                ),
                                                filled: true,
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8), borderSide: BorderSide(
                                                          color:
                                                              Color(0xff03C9BD),
                                                          width: 1,
                                                        )),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xff03C9BD),
                                                            width: 2)),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                    borderSide: BorderSide(
                                                      color: Color(0xff03C9BD),
                                                    ))),
                                          )
                                        : ElevatedButton(
                                            onPressed: () {
                                              iscustumTipVisible = true;
                                              setState(() {});
                                            },
                                            child: Text('Custom Tip'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xff03C9BD),
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18),
                                            ),
                                          ),
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
            //5rd part
            Expanded(
                flex: 2,
                child: Padding(
                    padding: const EdgeInsets.only(left: 34, right: 34),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Split \n The Total',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 20, bottom: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      if (personCunt > 1) {
                                        personCunt--;
                                        upDateValueo();
                                      }
                                    },
                                    child: Container(
                                      color: Color(0xff03C9BD),
                                      child: Center(
                                          child: Text(
                                        '-',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35,
                                          color: Colors.white,
                                        ),
                                      )),
                                    ),
                                  )),
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            "$personCunt",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      child: InkWell(
                                    onTap: () {
                                      personCunt++;
                                      upDateValueo();
                                    },
                                    child: Container(
                                      color: Color(0xff03C9BD),
                                      child: Center(
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ))
                      ],
                    ))),
          ],
        ),
      ),
    );
  }

  void upDateValueo() {
    if (amtControler.text.toString() != "") {
      var amtBill = int.parse(amtControler.text.toString());

      var mTip = amtBill * tipPerson;

      var mBill = amtBill + mTip;

      totalBill = mBill.toStringAsFixed(2);

      totalTip = mTip.toStringAsFixed(2);

      amountperson = (mBill / personCunt).toStringAsFixed(2);
      setState(() {});
    }
  }
}
