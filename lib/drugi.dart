
import 'package:flutter/material.dart';
import 'package:domaci4/treci.dart';


class DrugiWidget extends StatefulWidget{

  
  const DrugiWidget({Key? key}) : super(key: key);

@override
  State<DrugiWidget> createState() => _MyAppState();
}
 class _MyAppState extends State<DrugiWidget>{   


  int _selectedIndex = 0;



goToPage(context){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TreciWidget()),
  );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Blog post"),
          backgroundColor: Colors.brown.shade400,
        ),
      
              drawer: Drawer(
          child: ListView(
            children:  <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Text("Destinacije", 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
          ),
              InkWell(
                child: const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Turska'),
              ),
              onTap: (){
                setState(() {
                  _selectedIndex = 0;
                });
              },
              ),
              InkWell(
                child: const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Italija'),
              ),
              onTap: (){
                setState(() {
                  _selectedIndex = 1;
                   
                });
              },
              ),
              InkWell(
                child: const ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Španija'),
              ),
              onTap: (){
                setState(() {
                  _selectedIndex = 2;
                });
              },
              ),
              InkWell(
                child: const ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('Vratite se na prethodnu stranu'),
              ),
              onTap: (){
                 Navigator.of(context).pop();
              },
              ),
InkWell(
                child: const ListTile(
                leading: Icon(Icons.arrow_forward),
                title: Text('Idite ne sledecu stranicu'),
              ),
              onTap: (){
                  goToPage(context);
              },
              ),
            ],
          ),
        ),
      body: 
      items.elementAt(_selectedIndex)

     ),
    );
  
  }
  
  static  List<Widget> items = <Widget>[
    ListView(
      children:  [
       Card(
          child: Row(
          children: [
            //ISTAMBUL
                Image.network(
            "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",height: 300.0,width: 500.0,),
         const Expanded(
        child: Text('Istanbul, Turkish İstanbul, formerly Constantinople, ancient Byzantium, largest city and principal seaport of Turkey. It was the capital of both the Byzantine Empire and the Ottoman Empire. The name Byzantium may derive from that of Byzas, leader of the Greeks from the city of Megara who, according to legend, captured the peninsula from pastoral Thracian tribes and built the town about 657 bce. In 196 ce, having razed the town for opposing him in a civil war, the Roman emperor Septimius Severus rebuilt it, naming it Augusta Antonina in honour of his son. In 330 ce, when Constantine the Great dedicated the city as his capital, he called it New Rome. The coinage, nevertheless, continued to be stamped Byzantium until he ordered the substitution of Constantinopolis. At the end of the 1st millennium, Greek speakers were reported to refer to trips there as eis tēn polin, “into the City,” rather than “to Constantinople.” By the 13th century this Greek phrase had become an appellation for the city: Istinpolin. Through a series of speech permutations over a span of centuries, this name became Istanbul. Until the Turkish Post Office officially changed the name in 1930, however, the city continued to bear the millenary name of Constantinople. Pop. (2007) 10,757,327; (2017 est.) urban agglom., 14,744,519.', maxLines: 15,
       textAlign: TextAlign.center),
   ),
            ],
          ),
        ),
        Card(
          child: Row(
            //KAPADOKIJA
          children: [
                     const Expanded(
        child: Text('Cappadocia, ancient district in east-central Anatolia, situated on the rugged plateau north of the Taurus Mountains, in the centre of present-day Turkey. The boundaries of the region have varied throughout history. Cappadocia’s landscape includes dramatic expanses of soft volcanic rock, shaped by erosion into towers, cones, valleys, and caves. Rock-cut churches and underground tunnel complexes from the Byzantine and Islamic eras are scattered throughout the countryside. Neolithic pottery and tools found in Cappadocia attest to an early human presence in the region. Excavations at the modern town of Kültepe have uncovered the remains of the Hittite-Assyrian city of Kanesh, dating from the 3rd millennium bce. The tens of thousands of clay tablets recovered from the remains of an Assyrian merchant colony at Kanesh are among the oldest written documents discovered in Turkey. Stone formations and cave city in Cappadocia, Turkey. The earliest appearance of the name of Cappadocia dates from the 6th century bce, when Cappadocia’s feudal nobility was dominated by a Persian satrapy and Zoroastrian temple cults were widespread. Because of its rugged terrain and modest agricultural output, the area remained underdeveloped in antiquity, with only a few significant cities.', maxLines: 15,
       textAlign: TextAlign.center),
   ),
             Image.network(
            "https://images.unsplash.com/photo-1505783638529-f3fdc62e1bb1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",height: 300.0,width: 500.0,),

            ],
          ),
        ),
        Card(
          child: Row(
            //ALANJA
          children: [
                      Image.network(
            "https://images.unsplash.com/photo-1628029338883-61644ec68475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",height: 300.0,width: 500.0,),
         const Expanded(
        child: Text('Alanya, a seaside town on the southern coast of Turkey, offers a unique mix of relaxation, history, and adventure. Squeezed between the dazzling Mediterranean and Taurus Mountains, the historical heart of Alanya sits on a rocky peninsula with an impressive 13thcentury castle overlooking sweeping beaches.Before my trip, I was trying to find as much information about Alanya as possible.  With all the varied attractions that Turkey has to offer, there was not too much space dedicated to Alanya. In the 400-page Turkey guidebook I got, only four pages were dedicated to Alanya. Yet, this small region exceeded my expectations by a long shot. Sometimes it is worth it to take a chance on a destination! So, what to do in Alanya? I have spent altogether 10 amazing days in Alanya together with my boyfriend, exploring the local sights and taking as many day trips as possible. This post is covering the tours and activities in detail, and I hope it will help you to plan your own trip. The nearest airport is located in Gazipasa, about 30 minutes from Alanya. It’s a relatively small airport, so you might need to transfer in Istanbul. Use my favourite tool favorite tool Kiwi.com to find the best flight. Alternatively, it is possible to fly to Antalya airport, but then you still have 120 km to go. There are shuttle buses, but it’s a two-hour trip.', maxLines: 15,
       textAlign: TextAlign.center),
   ),

            ],
          ),
        ),
        ],
    ),
     ListView(
      children:  [
      Card(
          child: Row(
          children: [
            //VENECIJA
                      Image.network(
            "https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80",height: 300.0,width: 500.0,),
         const Expanded(
        child: Text('Venice, Italian Venezia, city, major seaport, and capital of both the provincia (province) of Venezia and the regione (region) of Veneto, northern Italy. An island city, it was once the centre of a maritime republic. It was the greatest seaport in late medieval Europe and the continent’s commercial and cultural link to Asia. Venice is unique environmentally, architecturally, and historically, and in its days as a republic the city was styled la serenissima (“the most serene” or “sublime”) It remains a major Italian port in the northern Adriatic Sea and is one of the world’s oldest tourist and cultural centres. Since the fall of the Venetian republic in 1797, the city has held an unrivaled place in the Western imagination and has been endlessly described in prose and verse. The luminous spectacle of ornate marbled and frescoed palaces, bell towers, and domes reflected in the sparkling waters of the lagoon under a blue Adriatic sky has been painted, photographed, and filmed to such an extent that it is difficult to distinguish the real city from its romantic representations. The visitor arriving in Venice is still transported into another world, one whose atmosphere and beauty remain incomparable.', maxLines: 15,
    
       textAlign: TextAlign.center),
   ),
            ],
          ),
        ),
        Card(
          child: Row(
          children: [
            //FIRENCA
                     const Expanded(
        child: Text('Florence, Italian Firenze, Latin Florentia, city, capital of Firenze provincia (province) and Toscana (Tuscany) regione (region), central Italy. The city, located about 145 miles (230 km) northwest of Rome, is surrounded by gently rolling hills that are covered with villas and farms, vineyards, and orchards. Florence was founded as a Roman military colony about the 1st century bce, and during its long history it has been a republic, a seat of the duchy of Tuscany, and a capital (1865–70) of Italy. During the 14th–16th century Florence achieved preeminence in commerce and finance, learning, and especially the arts. The present glory of Florence is mainly its past. Indeed, its historic centre was inscribed on UNESCO’s World Heritage List in 1982. The buildings there are works of art abounding in yet more works of art, and the splendours of the city are stamped with the personalities of the individuals who made them. The geniuses of Florence were backed by persons of towering wealth, and the city to this day gives testimony to their passions for religion, for art, for power, or for money. Among the most famous of the city’s cultural giants are Leonardo da Vinci, Michelangelo, Dante, Machiavelli, Galileo, and its most-renowned rulers, generations of the Medici family.', maxLines: 15,
       
       textAlign: TextAlign.center),
   ),
  Image.network(
            "https://images.unsplash.com/photo-1541370976299-4d24ebbc9077?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1333&q=80",height: 300.0,width: 500.0,),

            ],
          ),
        ),
        Card(
          child: Row(
            //RIM
          children: [

              Image.network(
            "https://images.unsplash.com/photo-1529154036614-a60975f5c760?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80",height: 300.0,width: 500.0,),
         const Expanded(
        child: Text('Rome, Italian Roma, historic city and capital of Roma provincia (province), of Lazio regione (region), and of the country of Italy. Rome is located in the central portion of the Italian peninsula, on the Tiber River about 15 miles (24 km) inland from the Tyrrhenian Sea. Once the capital of an ancient republic and empire whose armies and polity defined the Western world in antiquity and left seemingly indelible imprints thereafter, the spiritual and physical seat of the Roman Catholic Church, and the site of major pinnacles of artistic and intellectual achievement, Rome is the Eternal City, remaining today a political capital, a religious centre, and a memorial to the creative imagination of the past. Area city, 496 square miles (1,285 square km); province, 2,066 square miles (5,352 square km). Pop. (2011) city, 2,617,175; province, 3,997,465; (2007 est.) urban agglom., 3,339,000; (2016 est.) city, 2,873,494; province, 4,353,738. For well over a millennium, Rome controlled the destiny of all civilization known to Europe, but then it fell into dissolution and disrepair. Physically mutilated, economically paralyzed, politically senile, and militarily impotent by the late Middle Ages, Rome nevertheless remained a world power—as an idea. The force of Rome the lawgiver, teacher, and builder continued to radiate throughout Europe. Although the situation of the popes from the 6th to the 15th century was often precarious, Rome knew glory as the fountainhead of Christianity and eventually won back its power and wealth and reestablished itself as a place of beauty, a source of learning, and a capital of the arts.', maxLines: 15,
     
       textAlign: TextAlign.center),
   ),

            ],
          ),
        ),
        ],
    ),
     ListView(
      children:  [
        Card(
          child: Row(
          children: [
            //BARSELONA
                      Image.network(
            "https://images.unsplash.com/photo-1523531294919-4bcd7c65e216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",height: 300.0,width: 500.0,),
         const Expanded(
        child: Text('Barcelona, city, seaport, and capital of Barcelona provincia (province) and of Catalonia comunidad autónoma (autonomous community), northeastern Spain, located 90 miles (150 km) south of the French border. It is Spain’s major Mediterranean port and commercial centre and is famed for its individuality, cultural interest, and physical beauty. On his visit to the city in 1862, Hans Christian Andersen remarked that Barcelona was the “Paris of Spain.” The city is indeed a major cultural centre with a remarkable history. It abounds with archives, libraries, museums, and buildings of interest, featuring superb examples of Modernist and Art Nouveau decor and architecture. Since the late 1970s, with the official recognition of the Catalan language and the granting of significant levels of regional self-government, cultural life has been revitalized, bringing with it a new awareness of the depth and variety of Catalan culture. This vitality combines with the striking physical setting of Barcelona—between scenic mountains and the Mediterranean Sea, with a benign climate that fosters street life—and its significance as an economic power and a major port to create a city of infinite variety. Area city, 38 square miles (98 square km); metropolitan area, 1,249 square miles (3,235 square km). Pop. (2011) 1,611,013; (2018 est.) 1,620,343.', maxLines: 15,

       textAlign: TextAlign.center),
   ),
            ],
          ),
        ),
        Card(
          child: Row(
          children: [
            //MADRID
                     const Expanded(
        child: Text('Madrid’s status as the national capital reflects the centralizing policy of the 16th-century Spanish king Philip II and his successors. The choice of Madrid, however, was also the result of the city’s previous obscurity and neutrality: it was chosen because it lacked ties with an established nonroyal power rather than because of any strategic, geographic, or economic considerations. Indeed, Madrid is deficient in other characteristics that might qualify it for a leading role. It does not lie on a major river, as so many European cities do; the 16th–17th-century dramatist Lope de Vega, referring to a magnificent bridge over the distinctly unimposing waters of the Manzanares, suggested either selling the bridge or buying another river. Madrid does not possess mineral deposits or other natural wealth, nor was it ever a destination of pilgrimages, although its patron saint, San Isidro, enjoys the all-but-unique distinction of having been married to another saint. Even the city’s origins seem inappropriate for a national capital: its earliest historical role was as the site of a small Moorish fortress on a rocky outcrop—part of the northern defenses of what was then the far more important city of Toledo, located about 43 miles (70 km) south-southwest.', maxLines: 15,
       
       textAlign: TextAlign.center),
   ),
              Image.network(
            "https://images.unsplash.com/photo-1495562569060-2eec283d3391?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",height: 300.0,width: 500.0,),

            ],
          ),
        ),
        Card(
          child: Row(
          children: [
            //VALENSIJA
                        Image.network(
            "https://images.unsplash.com/photo-1556661531-dd116f264438?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80",height: 300.0,width: 500.0,),
         const Expanded(
        child: Text('Valencia, Valencian València, city, capital of both Valencia provincia (province) and the comunidad autónoma (autonomous community) of Valencia, and historical capital of the former kingdom of Valencia, eastern Spain. Located on the Mediterranean coast at the mouth of the Turia (Guadalaviar) River, it is surrounded by orchards in a region known as the Huerta de Valencia. The earliest mention (Valentia) is by the Roman historian Livy, who states that the consul Decimus Junius Brutus Callaicus settled the soldier veterans of the Lusitanian leader Viriathus there in 138 bce. It later became a prosperous Roman colony. Taken by the Visigoths in 413 ce and in 714 by the Moors, it became in 1021 the seat of the newly established independent Moorish kingdom of Valencia, which extended from Almería to the Ebro estuary. From 1089 until the final capitulation of the city in 1094, the kingdom was fought for by the Spanish soldier-hero El Cid, who eventually secured it from the Moorish Almoravids. It remained in the hands of El Cid, after whom it is sometimes called Valencia del Cid, until his death there in 1099. The Moors recovered the city (and kingdom) in 1102.', maxLines: 15,
  
       textAlign: TextAlign.center),
   ),

            ],
          ),
        ),
        ],
    ),

  ];
}


