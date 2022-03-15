import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(AlaqsaScreen());
}

class AlaqsaScreen extends StatelessWidget {
  List<String> titles = [
    'الاسم',
    'المساحة',
    'السكان',
    'الدولة',
    'اسم الطالب',
  ];
  List<String> desc = [
    'القدس',
    '125 كم',
    '358000 نسمة',
    'فلسطين',
    'حمزة مممتاز ابو جراد',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('عاصمة فلسطين'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade400,
        ),
        body: Column(
          children: [
            Image.asset('assets/alaqsq.jpg'),
            Text(
              'مدينة القدس',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: double.infinity,
              height: 440,
              child: ListView.separated(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 360,
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.brown.shade200),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 100,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Center(child: Text(desc[index])),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 360 / 3,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Center(child: Text(titles[index])),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },itemCount: titles.length,
              separatorBuilder: (context,index){
                return SizedBox(height: 14,);
              }),
            )
          ],
        ),
      ),
    );
  }
}
