import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  const UiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
            Text(
              '경남통영죽림',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Text(
              '님',
              style: TextStyle(color: Colors.black54, fontSize: 20),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_alert),
            color: Colors.black,
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(189, 189, 189, 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Text(
                        '커피 쿠폰 5장 당첨!\n이벤트 대상인지 확인하기 >',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Image.asset(
                        'images/rating.png',
                        width: 60,
                        height: 60,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 250,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.fromLTRB(15, 15, 15, 0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            child: Text(
                              '결제예정금액',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.grey,
                                    backgroundColor:
                                    const Color.fromRGBO(234, 234, 234, 1.0)),
                                onPressed: () {},
                                child: const Text('바로결제'),
                              )),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: const Text(
                          'KB',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20))),
                              child: const Text(
                                '10.14',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                    const Color.fromRGBO(234, 234, 234, 1.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20))),
                                child: const Text(
                                  '11.14',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '123,456',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '원',
                              style: TextStyle(fontSize: 19),
                            ),
                            IconButton(
                                padding: EdgeInsets.zero, // 패딩설정
                                constraints: const BoxConstraints(),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 20,
                                ))
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '결제금액이 부담스럽다면\n최소결제를 이용해 보세요',
                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),
                    Image.asset(
                      'images/rating.png',
                      width: 70,
                      height: 70,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '09월 이용대금명세서',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: const Text(
                          '작성기준일 22.09.26',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        children: [
                          const Text(
                            '0',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '원',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              padding: EdgeInsets.zero, // 패딩설정
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 130,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.account_circle_rounded), Text('My KB')],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.add_alert), Text('혜택')],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.info), Text('금융 카드')],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.abc_rounded), Text('더보기')],
                ),
              ],
            ),
          )),
    );
  }
}
