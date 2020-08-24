import 'package:flutter/material.dart'; //material Design을 import 함.

void main() {
  //앱 시작 부분
  runApp(MyApp());
}

//시작 클래스. 머터리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(), //표시할 화면의 인스턴스
    );
  }
}

//시작 클래스가 실제로 표시하는 클래스. 앱 화면부분

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// ignore: slash_for_doc_comments
/**
    위 MyHomePage 클래스의 상태를 나타내는 State 클래스
    주로 _MyHomePageState에 모든 코드를 작성함!
 **/

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; //페이지 인덱스 0, 1, 2
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  //화면에 UI를 그리는 메서드. 그려질 위젯을 반환
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //머터리얼 디자인 기본 뼈대 위젯(상단 앱바같은거 들어감)
      appBar: AppBar(
        backgroundColor: Colors.white, //배경색을 흰색으로
        title: Text(
          '복잡한 UI',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true, //타이틀(제목)을 가운데로 설정함
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.black, //전체 앱 테마를 수정했다면 작성하지 않아도 됨
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index; //선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index, //선택된 index
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('홈'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('이용서비스'),
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            title: Text('내 정보'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '홈페이지 입니다.',
        style: TextStyle(color: Colors.blueAccent, fontSize: 20),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Text(
        '서비스가 준비중이에요!',
        style: TextStyle(color: Colors.blueGrey, fontSize: 20),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보',
        style: TextStyle(color: Colors.blue, fontSize: 40),
      ),
    );
  }
}
