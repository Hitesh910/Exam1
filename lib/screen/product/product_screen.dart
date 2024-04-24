import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopink_app/utils/global.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff1A2531),
          title: Text(
            "Product",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      '${m1['image']}',
                      height: 250,
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 448,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Color(0xff1A2531),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${m1['name']}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Men's footware",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text('${m1['rate']}',style: TextStyle(color: Colors.white,fontSize: 25),),

                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all(color: Colors.amber,width: 2),shape: BoxShape.circle),
                              child: Text("32",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),shape: BoxShape.circle),
                              child: Text("33",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),shape: BoxShape.circle),
                              child: Text("34",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),shape: BoxShape.circle),
                              child: Text("35",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),shape: BoxShape.circle),
                              child: Text("36",style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),shape: BoxShape.circle),
                              child: Text("37",style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Slip into the future with the PUMA Scorch Runner V2 Men's Shoes perfect for the urban runner on the go. "
                              " The SOFTFOAM+ sockliner provides a plush feel underfoot, while the PUMA Formstrip adds a touch of edge "
                              " PUMA Cat Logo on the toe box, PUMA Wordmark at tongue and heel, PUMA Formstrip on lateral side",style: TextStyle(color: Colors.white),),
                        ),
                        // SizedBox(height: ,),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween
                            ,
                            children: [
                              Text('${m1['price']}',style: TextStyle(color: Colors.white,fontSize: 32),),
                              ElevatedButton(onPressed: () {
                                cartList.add(m1);
                                Navigator.pop(context);
                              }, child: Text("Add to cart")),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
