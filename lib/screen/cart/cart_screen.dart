import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopink_app/utils/global.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A2531),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff1A2531),
        title: Text("cart",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(cartList.length, (index) => Container(
        
            child: Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey.shade600,borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),child: Image.asset(cartList[index]['image'],height: 100,width: 100,)),
                  SizedBox(width: 5,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartList[index]['name'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text(cartList[index]['price'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {
                    setState(() {
                      cartList.removeAt(index);
                    });
                  }, icon: Icon(Icons.delete,color: Colors.black,))
                ],
              ),
            ),
          ))
        ),
      ),
    );
  }
}
