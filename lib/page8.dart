import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิดแถบ Debug Banner
      home: Page8(title: 'ติ่มซัม'),
    );
  }
}

class Page8 extends StatefulWidget {
  const Page8({super.key, required this.title});

  final String title;

  @override
  Page03State createState() => Page03State();
}

class Page03State extends State<Page8> {
  // ฟังก์ชันเปิด YouTube ลิงก์
  void _launchYouTube() async {
  final Uri url = Uri.parse(
      'https://www.youtube.com/watch?v=1xXT6jle1UA&pp=ygUk4Liq4Lit4LiZ4LiX4Liz4LiV4Li04LmI4Lih4LiL4Lix4Lih');
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 255, 195, 98), // สีพื้นหลังของ AppBar
      ),
      body: Column(
        children: [
          // รูปภาพแสดงผลแบบเต็มหน้าจอ (ครึ่งบน)
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8), // มุมโค้งมนให้รูปภาพ
                child: Image.asset(
                  'images/ติ่มซัม.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // ข้อมูลแสดงผล (ครึ่งล่าง)
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ชื่อเมนูอาหาร
                  Text(
                    'ติ่มซัม',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 227, 166, 109),
                    ),
                  ),
                  SizedBox(height: 10),
                  // คำอธิบายเมนูอาหาร
                  Text(
                    'ติ่มซำ เป็นอาหารว่างหรืออาหารเรียกน้ำย่อยของจีน มักเป็นอาหารจำพวกปรุงด้วยการนึ่ง',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  // ส่วนประกอบ
                  Text(
                    'ราคา',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepOrange),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'ติ่มซำราคาต่อเข่งละ 30 บาท',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 20),
                  // ปุ่มไปที่ YouTube
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: _launchYouTube,
                      icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
                      label: Text('ดูวิธีทำใน YouTube'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // สีพื้นหลังของปุ่ม
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // ปุ่ม FloatingActionButton
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ปุ่ม Like สีเขียว
              FloatingActionButton(
                heroTag: 'like_button',
                backgroundColor: Colors.green,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('คุณชอบเมนูนี้!')),
                  );
                },
                tooltip: 'Like',
                child: Icon(Icons.thumb_up, color: Colors.white),
              ),
              SizedBox(width: 20), // ระยะห่างระหว่างปุ่ม
              // ปุ่ม Dislike สีแดง
              FloatingActionButton(
                heroTag: 'dislike_button',
                backgroundColor: Colors.red,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('คุณไม่ชอบเมนูนี้!')),
                  );
                },
                tooltip: 'Dislike',
                child: Icon(Icons.thumb_down, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 20),
          // เพิ่มไอคอนตัวอย่างด้านล่าง
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
