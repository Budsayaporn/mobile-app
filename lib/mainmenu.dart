import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodAndSnackApp(),
  ));
}

class FoodAndSnackApp extends StatelessWidget {
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
                    'https://www.maggi.co.th/sites/default/files/styles/home_stage_944_531/public/srh_recipes/9f922d8fe6344f4a8b641ebd716be4cd.jpg?h=4f5b30f1&itok=KRUdjO7X', 'ข้าวผัด',
                    context,
                    true,
                    'ข้าวผัด เป็นอาหารจานเดียวแบบพื้นฐานของเอเชีย เป็นการนำข้าวสวยลงไปผัดคลุกกับซอส หรือน้ำพริก หรือเครื่องปรุงรสต่างๆ เพื่อให้ได้รสชาติ \ส่วนประกอบ ข้าวสวยหุงสุก 1 ถ้วย / ไข่ไก่ 2 ฟอง /ต้นหอม 1 ช้อนโต๊ะ /เกลือ ½ ช้อนชา /พริกไทย 1 ช้อนชา /น้ำมันพืช 3 ช้อนโต๊ะ  ',
                    
                  ),
                  _item(
                    'https://scontent-bkk1-2.xx.fbcdn.net/v/t1.6435-9/59879576_1060321497497461_7300709229352976384_n.jpg?stp=dst-jpg_p180x540&_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeHX8ntrKJ5-bdqVeGy9SCDrvBiT10URIxC8GJPXRREjEOYQHt2wshSaRNt663R2wkHfea213N-mpfTOoN7rElxY&_nc_ohc=K7FKTf0Yq0IQ7kNvgFsR1VK&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=AmIOqFd2XWJmROPu_LOhO3M&oh=00_AYBa3jco1Ww8dAAoSKgPs5R6AWs_Ak9_B2fdtluBC0lswA&oe=675A2273', 'ต้มยำกุ้ง',
                    context,
                    true,
                    'ต้มยำกุ้ง เป็นอาหารไทยภาคกลางประเภทต้มยำ ซึ่งเป็นที่นิยมรับประทานไปทุกภาคในประเทศไทย เป็นอาหารที่รับประทานกับข้าว มีรสเปรี้ยวและเผ็ดเป็นหลักผสมเค็มและหวานเล็กน้อย แบ่งออกเป็น 2 ประเภท คือ ต้มยำน้ำใส และ ต้มยำน้ำข้น ส่วนประกอบ /ตะไคร้ 3 ต้น /ข่า 1 แข่ง /หอมแดง 3 ลูก /ใบมะกรูดฉีก /น้ำพริกเผา 2 ช้อนโต๊ะ /เห็ดฟาง /พริกขี้หนูสวน /พริกแดจินดา /น้ำปลา /กุ้งสด /ผักชีฝรั่ง',
                  ),
                  _item(
'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/222739677_3025009214413040_663717706205644787_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeFOS8JtgzzSxhb9qISpwyOqXMjz4vissKFcyPPi-KywoY2V2qLAQ6ym_esaEgQsUATbt2__8kK0eKw4MNmM6D2A&_nc_ohc=iTj2j7FYcJoQ7kNvgGavuJr&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AHu-YXLmMA0l2-1S8N-18nD&oh=00_AYDLVpq2I6FQMMocQChPLabFtcvhGVWQs-PvkihWpusalw&oe=6741AE1D', 'แกงฮังเล',
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
                    'https://kanomsiam.com/cdn/shop/products/kanomsiam_PandanSweetmeltdessertbangkok1.jpg?v=1666590203', 'ขนมครก',
                    context,
                    false,
                    'ขนมครก เป็นขนมไทยโบราณชนิดหนึ่ง ทำจากแป้งน้ำตาลและกะทิ แล้วเทลงบนเตาหลุม เวลาจะรับประทานต้องแคะออกมาเป็นแผ่นวงกลม แล้วมักวางประกบกันตอนรับประทาน ส่วนประกอบ /1. แป้งข้าวเจ้า 200 กรัม 2. แป้งข้าวเหนียว 25 กรัม 3. หัวกะทิ 1 ½ ถ้วยตวง 4. น้ำร้อนจัด 1 ½ ถ้วยตวง 5. น้ำตาลทราย 1 ช้อนโต๊ะ 6. เกลือ 1 ช้อนชา 7. น้ำมันพืช 2 ช้อนโต๊ะ (สำหรับทาเตาขนมครก)', 
                  ),
                  _item(
                    'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/326501508_724667255911394_2278174093115887314_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeHHeC2pK_90PYC3zYwMLfluMEwbWA66PEswTBtYDro8S2gBX6KMdMFj9y2lVAPpFSvgBlkTWN1URJuhDYIkvpRj&_nc_ohc=dBs42zOWQewQ7kNvgGgqGH9&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=A9eW2QX3S9lJuZaFt0Xrbm4&oh=00_AYAqAC0e5ioEPZy-zSN4ypDmfrwIPgrC-6SXBEvDXbNCzw&oe=6741D286 ', 'ติ่มซัม',
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
                    'https://scontent-bkk1-2.xx.fbcdn.net/v/t39.30808-6/406775435_18401528230027296_4610293317037104377_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeF9Dggok_gsRBuu8tUqSm9AzH-j6m-A5ODMf6Pqb4Dk4J3-enP51PjU9j_zgMtoyJhLouSA0YRW7tRWi5_N3nSU&_nc_ohc=mgu54QxQMuQQ7kNvgF7FAD_&_nc_zt=23&_nc_ht=scontent-bkk1-2.xx&_nc_gid=ApUMAm0NBbjmxiJEprz-5Qu&oh=00_AYBbhAr5XP3J2eTkwUXZL3bsUAa6hwe09PqmAfZuh4FBKA&oe=6741C109 ', 'ขนมปังสังขยาโทสต์',
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
       bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {
                  print("Navigated to Home");
                },
                icon: Icon(Icons.home, color: Colors.purple[200]),
                label: Text('Home', style: TextStyle(color: Colors.purple)),
              ),
              TextButton.icon(
                onPressed: () {
                  print("Navigated to Favorites");
                },
                icon: Icon(Icons.favorite, color: Colors.red[200]),
                label: Text('Favorites', style: TextStyle(color: Colors.red)),
              ),
              TextButton.icon(
                onPressed: () {
                  print("Navigated to Profile");
                },
                icon: Icon(Icons.person, color: Colors.blue[200]),
                label: Text('Profile', style: TextStyle(color: Colors.blue)),
               
    ),
              ],
            ),
          ),
         ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("ไปหน้าต่อไป");
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.green[400],
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

  FoodDetailPage({required this.foodName, required this.imageUrl, required this.description});

  @override
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
        title: Text('${widget.foodName}'),
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

  SnackDetailPage({required this.snackName, required this.imageUrl, required this.description});

  @override
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

