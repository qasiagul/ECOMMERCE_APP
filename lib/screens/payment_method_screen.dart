import 'package:complete_ecomerce_app/screens/shippind_address_screen.dart';
import 'package:flutter/material.dart';
  

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {

  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void iniState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Container(
                      width: 350,
                      height: 55,
                      decoration: BoxDecoration(
                        border: _type == 1
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: 1,
                                        groupValue: _type,
                                        onChanged: _handleRadio,
                                        activeColor: Color(0xffDB3022),
                                    ),
                                    Text(
                                      "Amazon Pay",
                                      style: _type == 1
                                      ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)
                                    : TextStyle(
                                        fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,)
                                    ),

                                  ],
                                ),
                                Image.asset(
                                  "images/amazon_pay.png",
                                  width: 70,
                                  height: 70,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: 350,
                      height: 55,
                      decoration: BoxDecoration(
                        border: _type == 2
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: _type,
                                      onChanged: _handleRadio,
                                      activeColor: Color(0xffDB3022),
                                    ),
                                    Text(
                                        "Cradit Card",
                                        style: _type == 2
                                            ? TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                            : TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,)
                                    ),

                                  ],
                                ),
                                Spacer(),
                                Image.asset(
                                  "images/visa.png",
                                  width: 35,
                                ),
                                SizedBox(width: 5,),
                                Image.asset(
                                  "images/mastercard.png",
                                  width: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: 350,
                      height: 55,
                      decoration: BoxDecoration(
                        border: _type == 3
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 3,
                                      groupValue: _type,
                                      onChanged: _handleRadio,
                                      activeColor: Color(0xffDB3022),
                                    ),
                                    Text(
                                        "Paypal",
                                        style: _type == 3
                                            ? TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                            : TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,)
                                    ),

                                  ],
                                ),
                                Image.asset(
                                  "images/PayPal.svg.webp",
                                  width: 70,
                                  height: 70,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: 350,
                      height: 55,
                      decoration: BoxDecoration(
                        border: _type == 4
                            ? Border.all(width: 1, color: Colors.black)
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 4,
                                      groupValue: _type,
                                      onChanged: _handleRadio,
                                      activeColor: Color(0xffDB3022),
                                    ),
                                    Text(
                                        "Goodgle pay",
                                        style: _type == 4
                                            ? TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                            : TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,)
                                    ),

                                  ],
                                ),
                                Image.asset(
                                  "images/icon2.png",
                                  width: 50,
                                  height: 50,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                          ),
                        ),
                        Text(
                          "\$300.50",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Fee",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        ),
                        Text(
                          "\$15.00",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(height: 30,color: Colors.black38,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Payment",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                          ),
                        ),
                        Text(
                          "\$380.50",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffDB3022)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => ShippingAddressScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffDB3022),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          child: Center(
                              child: Text(
                                "Confirm Payment",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,),
                              )
                          ),
                        ),

                      ),
                    ),

                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
