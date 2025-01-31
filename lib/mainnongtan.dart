import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodAndSnackApp(),
  ));
}

class FoodAndSnackApp extends StatelessWidget {
  const FoodAndSnackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ร้านอาหารน้องถ่าน'),
        backgroundColor: Colors.purple[200],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // ส่วนอาหาร
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'อาหารแนะนำ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _item(
                    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/455356371_3768267923412999_2797470450728805737_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=aa7094&_nc_eui2=AeG9WB9KSorpwZ9-dZEC6F4E2VW17gWkYkDZVbXuBaRiQKzk9F6SSmFNoMl744K64JHogUkBvmCEkWmcsIbzekUE&_nc_ohc=N0Q9NVtrKT0Q7kNvgGMMjmJ&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=A4j7f6xnM4Oc2HgmpnjPPvP&oh=00_AYDzswLc38EeNvpvfYVdDfLJpq5_dFhviNorodB50r2Sjw&oe=673893F4', 'ข้าวผัด',
                    context,
                    true,
                    'ข้าวผัด เป็นอาหารจานเดียวแบบพื้นฐานของเอเชีย เป็นการนำข้าวสวยลงไปผัดคลุกกับซอส หรือน้ำพริก หรือเครื่องปรุงรสต่างๆ เพื่อให้ได้รสชาติ ส่วนประกอบ ข้าวสวยหุงสุก 1 ถ้วย / ไข่ไก่ 2 ฟอง /ต้นหอม 1 ช้อนโต๊ะ /เกลือ ½ ช้อนชา /พริกไทย 1 ช้อนชา /น้ำมันพืช 3 ช้อนโต๊ะ  ',
                    
                  ),
                  _item(
                    'https://scontent-bkk1-2.xx.fbcdn.net/v/t1.6435-9/59879576_1060321497497461_7300709229352976384_n.jpg?stp=dst-jpg_p180x540&_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeHX8ntrKJ5-bdqVeGy9SCDrvBiT10URIxC8GJPXRREjEOYQHt2wshSaRNt663R2wkHfea213N-mpfTOoN7rElxY&_nc_ohc=K7FKTf0Yq0IQ7kNvgFsR1VK&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=AmIOqFd2XWJmROPu_LOhO3M&oh=00_AYBa3jco1Ww8dAAoSKgPs5R6AWs_Ak9_B2fdtluBC0lswA&oe=675A2273', 'ต้มยำกุ้ง',
                    context,
                    true,
                    'ต้มยำกุ้ง เป็นอาหารไทยภาคกลางประเภทต้มยำ ซึ่งเป็นที่นิยมรับประทานไปทุกภาคในประเทศไทย เป็นอาหารที่รับประทานกับข้าว มีรสเปรี้ยวและเผ็ดเป็นหลักผสมเค็มและหวานเล็กน้อย แบ่งออกเป็น 2 ประเภท คือ ต้มยำน้ำใส และ ต้มยำน้ำข้น ส่วนประกอบ /ตะไคร้ 3 ต้น /ข่า 1 แข่ง /หอมแดง 3 ลูก /ใบมะกรูดฉีก /น้ำพริกเผา 2 ช้อนโต๊ะ /เห็ดฟาง /พริกขี้หนูสวน /พริกแดจินดา /น้ำปลา /กุ้งสด /ผักชีฝรั่ง',
                  ),
                  _item(
'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/300835023_503635711765924_4603401074820300015_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEi_EXosskgw_mnBDdWHQTnqqP5mZlv8-Kqo_mZmW_z4kaZud0zySlBrBgnUj_bchxv8HYoxIhvxYR6uTjaHIgu&_nc_ohc=Y1Is7dlVwF4Q7kNvgFlpa-j&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=A0Aw4NqZg0UDFCmCRIIDKzI&oh=00_AYA-M9pmuUiKjTzc5XoZQjOLpyJbJ97m0Otmy5YH0S1lfQ&oe=6738956F', 'แกงฮังเล',
                    context,
                    true,
                    'แกงฮังเล หรือ แกงฮินเล เป็นอาหารไทยภาคเหนือประเภทแกงรสชาติเค็ม-เปรี้ยว ส่วนประกอบ /เนื้อสันคอหมูหั่นเต๋า 300 กรัม /เนื้อหมูสามชั้นหั่นเต๋า 200 กรัม /น้ำตาลทราย น้ำมะขามเปียก 3 ช้อนโต๊ะ /ขิงซอย 1/2 ถ้วย /กระเทียม 1/2 ถ้วย /ถั่วลิสงคั่ว 2 ช้อนโต๊ะ /สับปะรด 2 ช้อนโต๊ะ ',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU8Jc8b-JwTvRg_T9Rys6z0mpJUtyj9kQkaA&s', 'ส้มตำ',
                    context,
                    true,
                    'ส้มตำ เป็นอาหารปรุงมาจากการทำตำส้ม คือการทำให้เปรี้ยวและเผ็ด ในลาวและอีสานจะเรียกว่าตำหมากหุ่ง ส่วนประกอบ /เส้นมะละกอสับ /มะเขือเทศ /พริกสด /มะนาว /กระเทียม /มะกอก /น้ำปลาร้า /น้ำปลา /น้ำตาลทราย /ผงชูรส  /เมล็ดกระถิน (สำหรับโรยหน้า) /แคบหมู และผักบุ้ง (สำหรับกินแกล้ม)',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGnwg-IsdXaqyHOzGwZVfC7kdWKclrfcI6EQ&s', 'ยำทะเล',
                    context,
                    true,
                    'ส่วนประกอบ /กุ้งขาว 300 กรัม /ปลาหมึก 300 กรัม  /มะเขือเทศ 50 กรัม  /น้ำปลาร้า 1 ทัพพี  /น้ำปลา 2-3 ช้อนโต๊ะ  /มะนาว 2-3 ลูก /น้ำตาลปี๊บ 2 ช้อนโต๊ะ /พริกแห้ง ตามชอบ /พริกสด ตามชอบ  /หอมแขก 1 หัว /ผักชีใบเลื่อย 1-2 ต้น ',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // ส่วนของว่าง
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ของว่างแนะนำ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _item(
                    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/278231357_135772125691236_1151168430232808784_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=aus7NgNzav0Q7kNvgFssChP&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AEhb0iWj0SW3OEslG5d9Joq&oh=00_AYAjAnhudmyrSij_36_5XE60UCOovM-vI7aRhHrHF8_PrQ&oe=6739FB5A ', 'ขนมครก',
                    context,
                    false,
                    'ขนมครก เป็นขนมไทยโบราณชนิดหนึ่ง ทำจากแป้งน้ำตาลและกะทิ แล้วเทลงบนเตาหลุม เวลาจะรับประทานต้องแคะออกมาเป็นแผ่นวงกลม แล้วมักวางประกบกันตอนรับประทาน ส่วนประกอบ /1. แป้งข้าวเจ้า 200 กรัม 2. แป้งข้าวเหนียว 25 กรัม 3. หัวกะทิ 1 ½ ถ้วยตวง 4. น้ำร้อนจัด 1 ½ ถ้วยตวง 5. น้ำตาลทราย 1 ช้อนโต๊ะ 6. เกลือ 1 ช้อนชา 7. น้ำมันพืช 2 ช้อนโต๊ะ (สำหรับทาเตาขนมครก)', 
                  ),
                  _item(
                    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/465845016_997637262397769_1528613625136591438_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=833d8c&_nc_ohc=BJgDRG4AaIwQ7kNvgEqG689&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AaChZfULoeNu_vdFeIOThsA&oh=00_AYBwQeIIE6inboC_1hPFm2g-H3-gSLL3Mx7BM19B_oymjQ&oe=6739C5EC ', 'ติ่มซัม',
                    context,
                    false,
                    'ติ่มซำ เป็นอาหารว่างหรืออาหารเรียกน้ำย่อยของจีน นิยมรับประทานกับน้ำชา ที่เป็นที่รู้จักกันทั่วโลก เป็นคำเรียกรวมอาหารหลายอย่าง มักเป็นอาหารจำพวกปรุงด้วยการนึ่ง เช่น ขนมจีบ, ซาลาเปา, ฮะเก๋า, เกี๊ยวซ่า เป็นต้น  ',
                  ),
                  _item(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRstXfqomXRtNjII_CVGNn25li8w9bgStZGLQ&s ', 'นักเก็ตไก่',
                    context,
                    false,
                    'นักเก็ตไก่เป็นผลิตภัณฑ์อาหารที่ประกอบด้วยเนื้อไก่เลาะกระดูกชิ้นเล็กๆ ที่ชุบเกล็ดขนมปังหรือชุบแป้ง แล้วนำไปทอดหรืออบ ส่วนประกอบ  /ไก่บด 500 กรัม /พริกไทยป่น 2 ช้อนโต๊ะ  /ซีอิ๊วขาว 2 ช้อนโต๊ะ /ซอสหอยนางรม 2 ช้อนโต๊ะ /เกลือ 2 ช้อนชา /แป้งข้าวโพด 4 ช้อนโต๊ะ  /แป้งสาลีอเนกประสงค์ 200 กรัม /ไข่ไก่ 2 ฟอง  /เกล็ดขนมปัง 200 กรัม /น้ำมันสำหรับทอด ',
                  ),
                   _item(
                    'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/406775435_18401528230027296_4610293317037104377_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=fjjsREWXnhYQ7kNvgGU52zz&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=AB7hUxc7SSPUj7qDfxX6gR1&oh=00_AYBWDXoYIqvmcIBXwwpu15TwEkj77I1mntJNrZIzhPDJ8Q&oe=6739D809 ', 'ขนมปังสังขยาโทสต์',
                    context,
                    false,
                    'ไข่ไก่ 2 ฟอง /นมสด 1 ถ้วย (หรือกะทิ) /น้ำตาลทราย 3/4 ถ้วย /น้ำใบเตยคั้นเข้มข้น 2 ช้อนชา /กลิ่นวานิลลา 1 ช้อนชา (ใส่หรือไม่ใส่ก็ได้) /นมข้นจืด 1/4 ถ้วย (และเตรียมไว้สำหรับราดด้านบนก่อนเสิร์ฟด้วย) /ท็อปปิ้ง ได้แก่ น้ำผึ้ง (สำหรับราด), ไอศกรีมวานิลลา, อัลมอนด์สไลซ์ (โรยหน้า), กล้วยหอมสไลซ์ และวิปปิ้งครีม (สำหรับแต่ง) ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print("ไปหน้าต่อไป");
          }
        },
        backgroundColor: Colors.green[400],
        child: Icon(Icons.arrow_forward),
      ),
    );
  }

  // ฟังก์ชันสร้าง item ที่รวมอาหารและของว่าง
  Widget _item(String imageUrl, String name, BuildContext context, bool isFood, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => isFood
                ? FoodDetailPage(foodName: name, imageUrl: imageUrl, description: description)
                : SnackDetailPage(snackName: name, imageUrl: imageUrl, description: description),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.network(imageUrl, width: 150, height: 150, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => isFood
                        ? FoodDetailPage(foodName: name, imageUrl: imageUrl, description: description)
                        : SnackDetailPage(snackName: name, imageUrl: imageUrl, description: description),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// หน้าแสดงรายละเอียดอาหาร
class FoodDetailPage extends StatefulWidget {
  final String foodName;
  final String imageUrl;
  final String description;

  const FoodDetailPage({super.key, required this.foodName, required this.imageUrl, required this.description});

  @override
  // ignore: library_private_types_in_public_api
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int _likeCount = 0;
  int _dislikeCount = 0;

  void _incrementLike() {
    setState(() {
      _likeCount++;
    });
  }

  void _incrementDislike() {
    setState(() {
      _dislikeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.foodName),
        backgroundColor: Colors.blue[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.foodName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.network(widget.imageUrl, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text('วัตถุดิบ ${widget.foodName}', textAlign: TextAlign.center),
            SizedBox(height: 16),
            Text(widget.description),
            SizedBox(height: 30),

            // ปุ่มไลค์และดิสไลค์
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  color: Colors.green,
                  onPressed: _incrementLike,
                ),
                Text('$_likeCount', style: TextStyle(fontSize: 18)),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.thumb_down),
                  color: Colors.red,
                  onPressed: _incrementDislike,
                ),
                Text('$_dislikeCount', style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// หน้าแสดงรายละเอียดของว่าง
class SnackDetailPage extends StatefulWidget {
  final String snackName;
  final String imageUrl;
  final String description;

  const SnackDetailPage({super.key, required this.snackName, required this.imageUrl, required this.description});

  @override
  // ignore: library_private_types_in_public_api
  _SnackDetailPageState createState() => _SnackDetailPageState();
}

class _SnackDetailPageState extends State<SnackDetailPage> {
  int _likeCount = 0;
  int _dislikeCount = 0;

  void _incrementLike() {
    setState(() {
      _likeCount++;
    });
  }

  void _incrementDislike() {
    setState(() {
      _dislikeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.snackName} รายละเอียด'),
        backgroundColor: Colors.pink[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'รายละเอียดเกี่ยวกับ ${widget.snackName}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Image.network(widget.imageUrl, height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(widget.description, textAlign: TextAlign.center),
            SizedBox(height: 30),

            // ปุ่มไลค์และดิสไลค์
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  color: Colors.green,
                  onPressed: _incrementLike,
                ),
                Text('$_likeCount', style: TextStyle(fontSize: 18)),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.thumb_down),
                  color: Colors.red,
                  onPressed: _incrementDislike,
                ),
                Text('$_dislikeCount', style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
