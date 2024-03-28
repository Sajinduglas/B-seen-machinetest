import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nomadic",
                style: GoogleFonts.frederickaTheGreat(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 32)),
              ),
              Text(
                "tribe",
                style: GoogleFonts.kaushanScript(
                    textStyle: TextStyle(color: Colors.red[400], fontSize: 30)),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                        "Remote sikkim your next life changeing experience",
                        style: GoogleFonts.sacramento(
                          textStyle: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ))),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/Thrilling-Sikkim image1.jpg"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "India is one of the most overwhelming countries in the world. A place of immense beauty that will leave you with everlasting memories. Its aromas, colours, flavours, wonderful landscapes, chaotic cities and peaceful rural areas, but above all, the friendly and smiling people. Your vision of the world will not be the same after visiting this incredible country.",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/image2.jpg"),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Sadly,at Nomadic Tribe , we have put reservations on standby due to the terrible pandemic that affects us all , but especially India at the moment. Our hopes and eishes are with all of them, with our collaborators and with our tribes.",
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We are confident that we will  travel again soon, our itineraries to India ,unique and and tailor made for us ,will be the experience of lifetimefor our adventurers",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Sikkim,your next destinatiom",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/image3.jpg"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Bordered by China,Nepal,Bhutan Sikkim was a monarchy before merging with India in 1975.Today it takes pride in being the only state of this country that practices 100% organic food production some of the leading tribes of Sikkim are Limbu,Lepcha and Bhutia',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The unique itinearies that you can experience with Nomadic Tribe in this small state in NortH East India will let you discover the daily lives of these tribes.Enjoy the delicious cusine, local dances and music, customs and traditions, festivals, agrarian practices, religion, environement and much more.",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Our tours will be conducted so that they will have a positive social economic  and environmental  impact ,helping  local communities recover from the tremendous crisis caused by the pandemic .The revenue generated from Stakeholders,thus providing ongoing support and well being people in many local communities are trained in hospitality to provide them with an alternative income",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Live like a local",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "From the first day of arriavl in Kolakata you will live in local homes to learn homes to lrarn about their traditions first hand. Starting with a bengali fmily,you will learn the actual ytricks of tradiyional cusine, customs and the way of life of urban tribes."),
                Image.asset("assets/images/image4.webp"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "In the following days, travel to Bagdogra to continue your journey through the Sikkim region and meet some local tribes .with Nomadic Tribe,you can choose whether to visit the Limba and  the Lepchu or the Buthia .After experiencing one itinerary ,you will most likely be so in love with this place that you will want to meet the other tribes in the future",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "...with the Buthia",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/image5.jpg"),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "If you choose  to visit the Buthia ,you can enjoy Spending free time chatting with the community and perhaps sharing a glass of their local millet based wine"),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "during your stay tribe members will teach you about the forest herbs  and how they are used while you learn to cook a delicious dinner .you can learn about the local festivals and customs of the village"),
                Text(
                    style: TextStyle(fontSize: 17),
                    "Your hosts will introduce you to other villagers and take you to remarkable Buddhist monasteries .you may even meet the Lama if he is available ,who might tell you some local legends you can visit the handicrafts centre and learn about wood carving,carpet, shawl making  out of sheep wool.The handicrafts centre is an initiative by local self help groups to provide an alternate source of living for villege men and women.we will facilitate a brief interaction with the local craftspeople .the artisans can be wary of people but very friendly once they open up"),
                Text(
                    style: TextStyle(fontSize: 17),
                    "Sikkim is well known as a trekking destination ,so take some time to explore the landscapes with your hosts ,as well as visiting the maenam wildlife ,sanctuary,where you will see deer,fox,and  the red panda"),
                Image.asset("assets/images/image6.jpg"),
                Text(
                    style: TextStyle(fontSize: 17),
                    "Without a doubt, the most fun will be to dance the Bhutia cultural dance in a starry evening with the community families and relax with a traditional herbal bath at sunset.This is a traditional Bhutanese body healing bath where the water is prepared by soaking herbs and heating over hot stones it is excellent for relaxing the muscles and was used by Bhutia farmers after long days working on the farms"),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "...with the Limbu and lepcha",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/image7.jpg"),
                Text(
                    style: TextStyle(fontSize: 17),
                    "With your Limbu family you will have a hands on farming experience just the way they do. Depending upon the reason, they will involve you in sowing, harvesting or processing black cardamom, potatoes, or maize which are the main crop of this area."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "You will also visit the local shaman in the evening and learn about the local region that worships the chief god,Niwa Buma, and mountain and river deities."),
                Text(
                    style: TextStyle(fontSize: 17),
                    "Do not worry because it will be not allowed work, and they will also take you for a walk to visit the rabdentse which was the second capital of Sikkim until the Neppalis Kingdoms raised it.Further ,there will be time to visit the Permayangtse monastery ,where you might see the monks studying on  monastic school or the prayers in progress ."),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "But our itineraries to Sikim offer you much more than that ... ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "During the trip,you will also have time to discover beautiful cities such a Kolkataor charming Gangtok,the capital of Sikkim,here you can enjoy the ancient markets and unforgettable landmarks .you will also have free time to relax and reflect on the feelings and learningsfrom your experience"),
                Image.asset("assets/images/image8.jpg"),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "But above all you can have the peace of mind that these itinearies are socially sustatinable.Beacuse we amke sure that the hoemstays consitinelty contribute towards the sustainbale development of the community.Our village experinces are based on 'stoarytelling' rather than sightseeing.We encourage the participation of women in decison making and entrepreuneurship and we facilitate the interaction of our travellers with local artisians."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "We also make sure these trips are environmentally friendly, making sure that the vehicleswe use are complaint with the latest emission standards in india.we use recyclable materials vvand we encourage plastic free trips.whereever solar power isn 't available ,we encourage energy -efficient LED lights and all the raw materials we use for cooking is  sourced locally"),
                Image.asset("assets/images/image9.webp"),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(fontSize: 17),
                    "If you want to know more about our itineraries visit our travel and tribes sections .there you  will find all the details of these unique experiences and much more information about our ethical practices"),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Get ready to travel  to Sikkim soon!",
                        style: TextStyle(fontSize: 17))),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Nomadic Tribe team",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    textScaleFactor: 1.3,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Photo by  /  ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'PRATAP CHHETHRI',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: ' \ton ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: '\nUnsplash',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: ' . Sikkim',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
