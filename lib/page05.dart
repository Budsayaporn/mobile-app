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
      home: Page05(title: 'ส้มตำ'),
    );
  }
}

class Page05 extends StatefulWidget {
  const Page05({super.key, required this.title});

  final String title;

  @override
  Page03State createState() => Page03State();
}

class Page03State extends State<Page05> {
  // ฟังก์ชันเปิด YouTube ลิงก์
  void _launchYouTube() async {
  final Uri url = Uri.parse(
      'https://www.youtube.com/watch?v=hcBwVPBaoZ0&pp=ygUe4Liq4Lit4LiZ4LiX4Liz4Liq4LmJ4Lih4LiV4Liz');
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 92, 4, 4), // สีพื้นหลังของ AppBar
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
                  'images/ส้มตำ.jpg',
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
                    'ส้มตำ',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 134, 72, 24),
                    ),
                  ),
                  SizedBox(height: 10),
                  // คำอธิบายเมนูอาหาร
                  Text(
                    'ส้มตำ เป็นอาหารปรุงมาจากการทำตำมะละกอ คือการทำให้เปรี้ยวและเผ็ด ',
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
                    'ธรรมดา 60 บาท / พิเศษ 80 บาท',
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
