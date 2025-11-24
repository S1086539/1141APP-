import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final tabs=[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource("1.mp3"));
    return Scaffold(
      appBar: AppBar(
        title: Text("我的自傳"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
                             type: BottomNavigationBarType.fixed,
                             backgroundColor: Colors.blue,
                             selectedItemColor: Colors.white,
                             selectedFontSize: 18,
                             unselectedFontSize: 14,
                             iconSize: 30,
                             currentIndex: currentIndex,
                             items: [
                               BottomNavigationBarItem(icon: currentIndex==0? Image.asset('assets/a1.jpg', width: 40, height: 40,):Image.asset('assets/a11.png', width: 30, height: 30,), label:"自我介紹",),
                               BottomNavigationBarItem(icon: currentIndex==1? Image.asset('assets/a2.png', width: 40, height: 40,):Image.asset('assets/a21.png', width: 30, height: 30,), label:"學習歷程",),
                               BottomNavigationBarItem(icon: currentIndex==2? Image.asset('assets/a3.jpg', width: 40, height: 40,):Image.asset('assets/a31.jpg', width: 30, height: 30,), label:"學習計畫",),
                               BottomNavigationBarItem(icon: currentIndex==3? Image.asset('assets/a4.png', width: 40, height: 40,):Image.asset('assets/a41.png', width: 30, height: 30,), label:"專業方向",),
                             ],
                             onTap: (index) {
                               setState(() {
                                 previousIndex=currentIndex;
                                 currentIndex=index;
                                 if (index==0) {
                                    if (previousIndex==currentIndex) player.resume();
                                    player.stop();
                                    player.play(AssetSource("1.mp3"));
                                 }
                                 if (index==1) {
                                   if (previousIndex==currentIndex) player.resume();
                                   player.stop();
                                   player.play(AssetSource("2.mp3"));
                                 }
                                 if (index==2) {
                                   if (previousIndex==currentIndex) player.resume();
                                   player.stop();
                                   player.play(AssetSource("3.mp3"));
                                 }
                                 if (index==3) {
                                   if (previousIndex==currentIndex) player.resume();
                                   player.stop();
                                   player.play(AssetSource("4.mp3"));
                                 }
                               });
                             },
                           ),
    );
  }
}


class Screen1 extends StatelessWidget {
  Screen1({super.key});

  final String s1 = "我出生在雲林的一個純樸小鄉村，父親從事農業，母親原本是會計師，在結婚後選擇辭職與父親一同經營農場。自我有記憶以來，父母總是忙於農務，清晨出門、深夜才回家，因此照顧我與姐姐的責任便落在奶奶身上。奶奶雖然文化程度不高，但總是以最簡單卻最深刻的方式教導我們兩件事：第一，無論如何都要照顧好身體，因為「身體若倒了，什麼事情都沒有辦法做」；第二，遇到不懂的事要勇敢向他人請教，不分年紀、性別，只要是好的、正向的知識，都要有「敢開口」的勇氣。這些教誨一直伴隨我成長，也成為我面對困難時最重要的信念。""在小學階段的我個性外向、活潑，常常參加各式各樣的校外比賽，也投入校內的藝術社團。課業表現雖稱不上頂尖，但一直保持穩定、認真。升上國中後，我意外被分入資優班。初進新環境時，由於班級競爭氣氛強烈，加上與同學不熟悉，使得原本外向的我變得較為內斂。然而，隨著彼此在課業上的切磋與合作，我慢慢找回學習的熱忱，國中三年也始終維持在中上程度。""接觸資訊領域是一次意想不到的契機。當時學校有名額有限的聯合社團可以申請，而因為我變得較被動，沒有主動報名。直到同學向我分享參與的內容與收穫，我才第一次真正對資訊產生興趣。於是，在填寫高中志願時，我將具有資訊科的學校排在前幾志願之中。雖然最後未能順利進入資訊科，而是錄取台中高工電子科，但我仍努力適應新環境。""國中念女校，高中一下子進入幾乎全新的氣氛與文化，使我一度相當不適應。然而我始終在課業上盡全力學習，在眾多科目中，我最喜歡的課程是「數位邏輯」。這門課不依賴複雜公式，而是透過推理與結構化思考就能得出答案。這讓我感受到「思考」本身的魅力，也再次喚起我對資訊領域的興趣與信心。""回頭看這段求學歷程，從鄉村長大的踏實，到資優班磨練出的學習態度，再到電子科重新適應新環境的勇氣，這些經驗都讓我學會更加自律、更加堅持，也更加願意主動追求知識。我相信，這些特質將成為我未來繼續成長與挑戰自我的重要基礎。";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //標題
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Text("Who am I",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFFEEBFD),
                  Color(0xFFE1F5FE),
                  Color(0xFFE0F7FA),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(color: Colors.pink.shade100, width: 3),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade50.withOpacity(0.8),
                  offset: const Offset(6, 6),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Text(s1, style: const TextStyle(fontSize: 20, color: Colors.black87)),
          ),
          const SizedBox(height: 15),

          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFFFE0B2),
                  Color(0xFFD1C4E9),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/a1.jpg'),
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  final List<Map<String, dynamic>> historyData = const [
    {
      'year': '2024',
      'title': '大學課程：人工智慧與大型語言模型（LLM）',
      'description':
      '修習人工智慧概論與 LLM 相關課程，理解 Transformer、RNN、注意力機制等基礎概念，並使用開源模型進行簡易文本分類與推論練習，奠定 AI 領域的基礎能力。',
      'skills': ['LLM 基礎', 'AI 概論', 'Python', '資料前處理'],
    },
    {
      'year': '2023',
      'title': '大學課程：Java 程式設計與物件導向開發',
      'description':
      '完成 Java 物件導向課程，熟悉類別、繼承、多型與例外處理等觀念，並以小組專題實作一個基本的資料管理系統，加強程式架構與系統化思考能力。',
      'skills': ['Java', 'OOP', '軟體架構', 'Git 協作'],
    },
    {
      'year': '2022',
      'title': '大學課程：C 語言與底層程式設計',
      'description':
      '透過 C 語言課程建立紮實的程式基礎，理解指標、記憶體管理與結構體等核心概念，並完成多個課內小專案如迷宮遊戲與資料排序工具。',
      'skills': ['C 語言', '記憶體觀念', '資料結構基礎'],
    },
    {
      'year': '2019.09',
      'title': '高中電子科：邏輯電路與資訊興趣萌芽',
      'description':
      '在電子科課程中接觸數位邏輯，因其強調推理與邏輯思考而開始真正產生興趣，也在課餘自學 Python 入門作為之後資訊領域探索的第一步。',
      'skills': ['數位邏輯', 'Python 入門', '自主學習能力'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '我的學習歷程',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pinkAccent),
        ),
        backgroundColor: const Color(0xFFFEEBFD),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0F7FA), Color(0xFFFEEBFD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: historyData.length,
          itemBuilder: (context, index) {
            final item = historyData[index];
            return TimelineItem(
              year: item['year']!,
              title: item['title']!,
              description: item['description']!,
              skills: item['skills'] as List<String>,
              isFirst: index == 0,
              isLast: index == historyData.length - 1,
            );
          },
        ),
      ),
    );
  }
}

class TimelineItem extends StatelessWidget {
  final String year;
  final String title;
  final String description;
  final List<String> skills;
  final bool isFirst;
  final bool isLast;

  const TimelineItem({
    required this.year,
    required this.title,
    required this.description,
    required this.skills,
    this.isFirst = false,
    this.isLast = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 左側：時間軸線和圓點
        Column(
          children: [
            // 上半部線條
            Container(
              width: 2,
              height: isFirst ? 10 : 40,
              color: isFirst ? Colors.transparent : Colors.pink.shade200,
            ),
            // 時間節點圓點
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            // 下半部線條
            Container(
              width: 2,
              height: isLast ? 10 : 80,
              color: isLast ? Colors.transparent : Colors.pink.shade200,
            ),
          ],
        ),
        const SizedBox(width: 20),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.pink.shade100, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 時間標籤
                    Text(
                      year,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.pink.shade400),
                    ),
                    const SizedBox(height: 8),

                    // 標題
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 10),

                    Text(description, style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: skills.map((skill) => Chip(
                        label: Text(skill, style: const TextStyle(fontSize: 12, color: Colors.white)),
                        backgroundColor: Colors.blueAccent.shade200,
                      )).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  final List<Map<String, dynamic>> studyPlan = const [
    {
      'period': '大一時期',
      'color': Colors.blue,
      'goals': [
        {'task': '建立程式基礎：學好 C 與 Java 語言', 'progress': 0.8},
        {'task': '奠定 AI/LLM 概念，完成至少 1 個課堂小專案', 'progress': 0.7},
        {'task': '加強英文閱讀能力（能閱讀技術文件）', 'progress': 0.65},
        {'task': '培養自學習慣，固定練習 LeetCode / 基礎演算法', 'progress': 0.75},
      ],
    },
    {
      'period': '大二時期',
      'color': Colors.pink,
      'goals': [
        {'task': '完成進階 Java / Python 作品，強化程式架構能力', 'progress': 0.8},
        {'task': '開始接觸 Web/App 技術（Flutter 或前端框架）', 'progress': 0.7},
        {'task': '修習資料結構與演算法強化課程', 'progress': 0.75},
        {'task': '探索資訊方向（AI、後端、前端等），確立未來方向', 'progress': 0.6},
      ],
    },
    {
      'period': '大三時期',
      'color': Colors.pinkAccent,
      'goals': [
        {'task': '整合 LLM / 後端 / App 等能力，製作完整專題作品', 'progress': 0.8},
        {'task': '開始準備研究所或求職（履歷、作品集、面試準備）', 'progress': 0.7},
        {'task': '學習雲端運算 (AWS / GCP) 並完成至少一個部署練習', 'progress': 0.6},
        {'task': '完成畢業專題初版並持續迭代優化', 'progress': 0.8},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '未來學習規劃',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
        backgroundColor: const Color(0xFFE0F7FA),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFEEBFD), Color(0xFFE0F7FA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: studyPlan.map((plan) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: buildGoalExpansionTile(plan),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  // 建立 ExpansionTile Widget
  Widget buildGoalExpansionTile(Map<String, dynamic> plan) {
    List<Map<String, dynamic>> goals = plan['goals'] as List<Map<String, dynamic>>;
    Color primaryColor = plan['color'] as Color;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: primaryColor.withOpacity(0.3), width: 2),
      ),
      child: ExpansionTile(
        initiallyExpanded: plan['period'].contains('大一'),
        title: Text(
          plan['period'] as String,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: primaryColor,
          ),
        ),
        children: goals.map((goal) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  goal['task'] as String,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 5),
                // 進度條
                LinearProgressIndicator(
                  value: goal['progress'] as double,
                  backgroundColor: Colors.grey.shade300,
                  color: primaryColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(5),
                ),
                const SizedBox(height: 15),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

const int _kapokRedPrimary = 0xFFE44534;
const MaterialColor KapokRed = MaterialColor(
  _kapokRedPrimary,
  <int, Color>{
    50: Color(0xFFFAEBEB),
    100: Color(0xFFF5B6B3),
    200: Color(0xFFEE8A85),
    300: Color(0xFFE85F56),
    400: Color(0xFFE44534),
    500: Color(_kapokRedPrimary),
    600: Color(0xFFD93B2B),
    700: Color(0xFFC73325),
    800: Color(0xFFB52A1E),
    900: Color(0xFF901C12),
  },
);

class Screen4 extends StatelessWidget {
  const Screen4({super.key});
  final List<Map<String, dynamic>> domains = const [
    {
      'title': '前端與移動開發',
      'description': '專注於使用者介面設計、交互邏輯與跨平台應用開發。',
      'interest_level': 0.85,
      'color': Colors.blueAccent,
      'keywords': ['Flutter', 'Dart', 'UI/UX', 'API Integration'],
    },
    {
      'title': '數據科學與機器學習',
      'description': '學習數據分析、演算法設計，並應用於解決實際問題。',
      'interest_level': 0.75,
      'color': Colors.green,
      'keywords': ['Python', 'TensorFlow', 'Pandas', '線性代數'],
    },
    {
      'title': '後端與系統架構',
      'description': '鑽研伺服器端邏輯、資料庫設計、雲端服務與系統擴展性。',
      'interest_level': 0.60,
      'color': Colors.orange,
      'keywords': ['Node.js', 'Firebase', 'SQL', '系統設計'],
    },
    {
      'title': '硬體與計算機原理',
      'description': '深入理解計算機底層運作原理、作業系統與網路基礎。',
      'interest_level': 0.70,
      'color': Colors.purple,
      'keywords': ['計算機組織', '作業系統', '網路協定', 'C/C++'],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '我的專業方向',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),
        ),
        backgroundColor: const Color(0xFFE0F7FA),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFEEBFD), Color(0xFFE0F7FA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(15.0),
          children: domains.map((domain) {
            return DomainCard(
              title: domain['title'] as String,
              description: domain['description'] as String,
              level: domain['interest_level'] as double,
              color: domain['color'] as Color,
              keywords: domain['keywords'] as List<String>,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class DomainCard extends StatelessWidget {
  final String title;
  final String description;
  final double level;
  final Color color;
  final List<String> keywords;

  const DomainCard({
    required this.title,
    required this.description,
    required this.level,
    required this.color,
    required this.keywords,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: color.withOpacity(0.3), width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    value: level,
                    strokeWidth: 8,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                  ),
                  Text(
                    '${(level * 100).toInt()}%',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: color),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF006466),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 4.0,
                    children: keywords.map((keyword) => Chip(
                      label: Text(keyword, style: const TextStyle(fontSize: 11, color: Colors.white)),
                      backgroundColor: KapokRed,
                    )).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
