import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopink_app/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShoes = true;
  bool isSandal = false;
   // RangeValues rangeValues = RangeValues(10000, 1000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2531),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A2531),
        title: const Text(
          "Shopink",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        // centerTitle: true,
        actions: [
          IconButton.outlined(
              onPressed: () {
                Navigator.pushNamed(context, 'cart');
              },
              icon: const Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.4)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.8), fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/Images/offer.jpg",
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isShoes = true;
                        isSandal = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 60,
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        "All",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      categoryList.length,
                      (index) => InkWell(
                        onTap: () {
                          setState(() {
                            if (categoryList[index] == "Shoes") {
                              isShoes = true;
                              isSandal = false;
                            } else if (categoryList[index] == "Sandal") {
                              isShoes = false;
                              isSandal = true;
                            } else {
                              isShoes = false;
                              isSandal = false;
                            }
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 80,
                          margin: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            categoryList[index],
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Text("${rangeValues.start.toInt()}-${rangeValues.end.toInt()}",style: TextStyle(color: Colors.white,fontSize: 20),),
            // RangeSlider(
            //   values: rangeValues,
            //   divisions: 20,
            //   max: 100000,
            //   onChanged: (value) {
            //     setState(() {
            //       rangeValues = value;
            //     });
            //   },
            // ),
            Visibility(
              visible: isShoes,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      shoesList.length,
                       (index) =>
                       //shoesList[index]['price'] >=
                      //             rangeValues.start &&
                      //         shoesList[index]['price'] >= rangeValues.end
                         // ?
                       InkWell(
                              onTap: () {
                                Map m1 = shoesList[index];
                                Navigator.pushNamed(context, 'product',
                                    arguments: m1);
                              },
                              child: Container(
                                height: 235,
                                width: 170,
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        shoesList[index]['image'],
                                        fit: BoxFit.cover,
                                        height: 140,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      shoesList[index]['name'],
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          shoesList[index]['rate'],
                                          style: const TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      shoesList[index]['price'],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          //: Container()
                    ),
                ),
              ),
            ),
            Visibility(
              visible: isSandal,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      shoesList.length,
                      (index) => InkWell(
                            onTap: () {
                              Map m1 = sandalList[index];
                              Navigator.pushNamed(context, 'product',
                                  arguments: m1);
                            },
                            child: Container(
                              height: 235,
                              width: 170,
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      sandalList[index]['image'],
                                      fit: BoxFit.cover,
                                      height: 140,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    sandalList[index]['name'],
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 0,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        sandalList[index]['rate'],
                                        style: const TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    sandalList[index]['price'],
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
