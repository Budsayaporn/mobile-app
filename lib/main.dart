import 'package:flutter/material.dart';
import 'page2.dart';
import 'page03.dart';
import 'page4.dart';
import 'page05.dart';
import 'page6.dart';
import 'page07.dart';
import 'page8.dart';
import 'page09.dart';
import 'page10.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิดแถบ Debug
      title: 'ร้านอาหารน้องถ่าน',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/page2': (context) => Page2(title: "ข้าวผัด"),
        '/page03': (context) => Page03(title: "ต้มยำกุ้ง"),
        '/page4': (context) => Page4(title: "แกงฮังเล"),
        '/page05': (context) => Page05(title: "ส้มตำ"),
        '/page6': (context) => Page6(title: "ยำทะเล"),
        '/page07': (context) => Page07(title: "ขนมครก"),
        '/page8': (context) => Page8(title: "ติ่มซัม"),
        '/page09': (context) => Page09(title: "นักเก็ตไก่"),
        '/page10': (context) => Page10(title: "ขนมปังสังขยาโทสต์"),
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // ข้อมูลหมวดอาหาร
    final List<Map<String, String>> foodList = [
      {"name": "ข้าวผัด", "route": "/page2", "image": "images/ข้าวผัด.jpg", "icon": "🍛"},
      {"name": "ต้มยำกุ้ง", "route": "/page03", "image": "images/ต้มยำกุ้ง.jpg", "icon": "🍤"},
      {"name": "แกงฮังเล", "route": "/page4", "image": "images/แกงฮังเล.jpg", "icon": "🍲"},
      {"name": "ส้มตำ", "route": "/page05", "image": "images/ส้มตำ.jpg", "icon": "🥗"},
      {"name": "ยำทะเล", "route": "/page6", "image": "images/ยำทะเล.jpg", "icon": "🦀"},
    ];

    // ข้อมูลหมวดของว่าง
     List<Map<String, String>> snackList = [
      {"name": "ขนมครก", "route": "/page07", "image": "images/ขนมครก.jpg", "icon": "🍡"},
      {"name": "ติ่มซัม", "route": "/page8", "image": "images/ติ่มซัม.jpg", "icon": "🥟"},
      {"name": "นักเก็ต", "route": "/page09", "image": "images/นักเก็ต.jpg", "icon": "🍗"},
      {"name": "ขนมปังสังขยา", "route": "/page10", "image": "images/ขนมปังสังขยา.jpg", "icon": "🍞"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('เมนูหลัก'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // หมวดอาหาร
            Text(
              "อาหาร",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange),
            ),
            SizedBox(height: 10),
            ...foodList.map((food) => _buildMenuItem(context, food)),

            SizedBox(height: 30),

            // หมวดของว่าง
            Text(
              "ของว่าง",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 10),
            ...snackList.map((snack) => _buildMenuItem(context, snack)),
          ],
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างรายการเมนู
  Widget _buildMenuItem(BuildContext context, Map<String, String> item) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(item["image"]!), // รูปภาพ
        ),
        title: Text(item["name"]!),
        subtitle: Text(item["icon"]!, style: TextStyle(fontSize: 20)), // ไอคอน
        trailing: Icon(Icons.arrow_forward, color: Colors.pink), // ลูกศรนำทาง
        onTap: () {
          Navigator.pushNamed(context, item["route"]!);
        },
      ),
    );
  }
}
