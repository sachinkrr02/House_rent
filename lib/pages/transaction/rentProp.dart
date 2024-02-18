import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class rentProp extends StatefulWidget {
  const rentProp({super.key});

  @override
  State<rentProp> createState() => _rentPropState();
}

class _rentPropState extends State<rentProp> {
  late var _razorpay;
  // rzp_test_IhmPUKCwbova1a key id
  // yT1hKMHHyjqGYGcYrWU8vV3F key id sceret
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = "";
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Payment Done");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("Payment Fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Transaction Summary",
            style: TextStyle(
                fontSize: 25,
                color: Color.fromRGBO(35, 78, 105, 1),
                fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(35, 78, 105, 1),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/house/build2.jpg"))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Material(
                                type: MaterialType.transparency,
                                child: Ink(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.green, width: 2),
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(
                                          50.0)), //<-- SEE HERE
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100.0),
                                    onTap: () {},
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 18.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromRGBO(35, 78, 105, 1))),
                                onPressed: () {},
                                child: Text(
                                  "Apartments",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sky Apartments",
                                softWrap: true,
                                style: TextStyle(
                                    color: Color.fromRGBO(35, 78, 105, 1),
                                    fontSize: 17),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text("4.4")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.map,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    "India",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "490",
                                    style: TextStyle(
                                        color: Color.fromRGBO(35, 78, 105, 1),
                                        fontSize: 20),
                                  ),
                                  Text("/month"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Period",
                      style: TextStyle(
                          color: Color.fromRGBO(35, 78, 105, 1),
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Color.fromRGBO(35, 78, 105, 1),
                                )),
                            SizedBox(
                              height: 50,
                              width: 100,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Check In',
                                ),
                                controller: dateController,
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101),
                                  );
                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat("yyyy-MM-dd")
                                            .format(pickedDate);

                                    setState(() {
                                      dateController.text =
                                          formattedDate.toString();
                                    });
                                  } else {
                                    print("Not selected");
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Color.fromRGBO(35, 78, 105, 1),
                                )),
                            SizedBox(
                              height: 50,
                              width: 100,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Check Out',
                                ),
                                controller: dateController,
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101),
                                  );
                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat("yyyy-MM-dd")
                                            .format(pickedDate);

                                    setState(() {
                                      dateController.text =
                                          formattedDate.toString();
                                    });
                                  } else {
                                    print("Not selected");
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Note for Owner",
                      style: TextStyle(
                          color: Color.fromRGBO(35, 78, 105, 1),
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.message_outlined,
                            color: Color.fromRGBO(35, 78, 105, 1))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Payment Detail",
                      style: TextStyle(
                          color: Color.fromRGBO(35, 78, 105, 1),
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Period Time",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            ),
                            Text(
                              "2 months",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Monthly payment",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            ),
                            Text(
                              "\$ 220",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            ),
                            Text(
                              "- \$ 88",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            ),
                            Text(
                              "\$ 352",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(35, 78, 105, 1)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      ///Make payment
                      var options = {
                        'key': "rzp_test_IhmPUKCwbova1a",
                        // amount will be multiple of 100
                        'amount': 5000, //So its pay 500
                        'name': 'Payment',
                        'description': 'Demo',
                        'timeout': 300, // in seconds
                        'prefill': {
                          'contact': '1234567890',
                          'email': 'demo123@gmail.com'
                        }
                      };
                      _razorpay.open(options);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Pay rent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
