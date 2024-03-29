
import 'package:b_seen_machinetest/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';class HomeScreen extends StatefulWidget {
  // const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    fetchData();
  }

  void fetchData() async {
    Provider.of<NomadicController>(context, listen: false).fetchNomadicData();
  }

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
                      textStyle:
                          TextStyle(color: Colors.red[400], fontSize: 30)),
                )
              ],
            ),
            centerTitle: true,
          ),
          body: Consumer<NomadicController>(
            builder: (context, provider, child) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(provider.nomadicModel!.title.toString(),
                            style: GoogleFonts.sacramento(
                              textStyle: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            ))),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Hiking in Morocco is an incredible experience, that goes well beyond the pure pleasure of admiring the landscape.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "There's something truly special about trekking in Morocco, something that is hard to pin down and that you'd have to see to believe. Going deep into the Atlas Mountains - considered one of the hidden gems of Morocco- is a fantastic way not only to appreciate nature - picture snow capped peaks, creeks flowing through lush valleys, forests and much more - but also to get to know a very unique culture - that of the Amazigh communities, commonly referred to as Berbers (a term which, to be fair, they dislike as they find it insulting).",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                             SizedBox(
                      height: 10,
                    ),
                    Text(
                        "You can follow various trails to experience the beauty of the Atlas. One of the best around starts in Amizmiz, and takes the very few foreigners that venture there through the tiny villages scattered in this part of the country. Amizmiz is at a mere one hour drive from the busy Marrakech, but already feels like a world apart.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        "${provider.nomadicModel.media![7].media?.original.toString()}"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "With its 11000 inhabitants, Amizmiz is by and large the most populated town in this part of the Atlas. This should set the mood for what you may experience should you decide to venture in a land where foreign visitors are as rare as they are welcome, and were ancestral customs are still very much a thing.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "recently had the chance to go hiking in Morocco Atlas Mountains, and it was a fantastic experience. In the course 5 days I managed to appreciate the beauty and solitude of the Atlas Mountains; I crossed a multitude of tiny villages; encountered the most friendly locals; enjoyed their culture and gorged on the delicious local food.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "For those of you who are interested in experiencing the same, I have put together this post which contains a detailed itinerary, with what plenty of practical information about the distances and difficulties, about the sights and what you can expect, and finally where you can eat and sleep along the way.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "However, please beware that although this itinerary is very detailed and with plenty of useful information, I do not recommend hiking this multi-day trek independently and even less so to do it alone: the trail is often tricky to follow, and you'll be crossing villages where, should you not have some connection and not speak the local language, you'll have a hard time getting a place to stay and eat for the night.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "The best option to go hiking in Morocco is then to go on an organized adventurous trip such as that organized by Nomadic Tribe, a new tour operator which strives to promote a new way of traveling by facilitating encounters between adventurous travelers and indigenous communities around the world.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("A 5 Days Itinerary For Hiking In Morocco",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        "${provider.nomadicModel.media![3].media?.original.toString()}"),
                    SizedBox(
                      height: 20,
                    ),
                     Text("**Day 1 - from Amizmiz to Ait Irghit**",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Text(
                        "The first day on this itinerary for hiking in Morocco Atlas Mountain is spent walking from Amizmiz to Ait Irghit. You'll be leaving the small town to get more and more into the mountains, where you'll get increasingly immersed in nature and blissfully isolated.\n\nYou'll come across very few people during your walk - some shepherds, a few women with their children, and sheep and at times cows enjoying their pasture.\n\nThe walking time between Amizmiz and Amezi, where you will be having lunch, is about 2 and a half hours.\n\nOnce in Amezi, you'll have the first proper encounter with a local family, with the chance to learn a bit about the local customs and way of life - including the ritual of tea and washing hands before eating.\n\nYour lunch spot varies depending on the guide's choice, who picks a different family every time and usually makes it a point to help the family most in need. My group stopped at the very modest home of a widower and her beautiful children.\n\nAfter lunch you'll continue walking towards Ait Irghit, where you'll spend the night. It's a pleasant uphill walk and you'll arrive to your final destination in time for sunset. Once there, you will have the chance of visiting local families for tea and snacks and to get to know their way of life.\n\nOverall walking distance: 12 km\n\nOverall walking time: 6 and a half hours, including lunch break and several stops for photos.\n\nHighest point: 1724 meters above sea level.\n\nLunch break: the typical arrangement throughout this 5 day hike is such that meals are consumed at local homes and they usually consist of traditional food such as Tajine or Cous cous. On the first day, lunch will be eaten at a tiny Amazigh village called Amezi (Tidli).\n\nThe views throughout your first day of hiking in Morocco are beautiful. As you cross the green fields, you'll have views of the valley as well as the snow capped mountains, and on occasions you'll encounter men or women working alone in the fields.\n\nThe villages you'll cross are very modest - dirt streets, clay homes with little comforts - but give the overall landscape a nice touch.\n\nOnce you get to Ait Irghit, if the day is clear you'll have the chance to admire sunset.\n\nThis day is meant to ease you into the rest of the hike, so that you can adjust to the altitude. There won't be any major challenge. The trail is easy to follow and the terrain mostly good as you will usually be walking on a dirt road. The uphill walking will be more persistent after lunch, but it's nothing to worry about. You won't meet many people - on occasion, a few persons working in the field, a couple of kids on a donkey.\n\nMake sure to carry enough water for the day and some snacks to munch on before lunch, as on this day your lunch break will be rather late.\n\n",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    Image.network(
                        "${provider.nomadicModel.media![2].media?.original.toString()}"),
                    SizedBox(
                      height: 10,
                    ),
                      Text("Day 2 - from Ait Irghit to Infag.",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "The second day of your hiking in Morocco itinerary will be spent walking from Ait Irghit to Infag, with a lunch break in Ait Ahmed.\n\nAfter breakfast, you'll have the chance to say goodbye to your host and their children, and then start walking out of the village and towards a thick, beautiful and pristine forest.\n\nThough the distance is slightly shorter and most of the day you'll be going downhill, the trail is very narrow in places and you'll have to pay close attention to where you put your feet, making the overall walking time slightly longer than the previous day.\n\nIf you didn't meet many people on your first day of hiking in Morocco, your second day will be even more peaceful. You'll only see people once you get close to your lunch spot, in the village of Ait Ahmed which you will be approaching from above, thus having beautiful panoramic views.\n\nThe walking time between Ait Irghit and Ait Ahmed, where you will be having lunch, is about 3 and a half hours. The village is larger than Amezi, where you have lunch on your first day, and the overall impression is that locals are more accustomed at seeing travelers.\n\nAfter lunch you'll continue walking towards Infag, a small village built along the side of the\n\nOverall walking distance: 11.3 km\n\nOverall walking time: 7 hours, including plenty of time for photos and lunch.\n\nHighest point: 1704 meters above sea level.\n\nLunch break: with a local family in Ait Ahmed.\n\nIn terms of views, this is probably the most interesting day of the itinerary. You will be walking through the forest, reaching some tiny waterfalls which are perfect for a photo break; and as you will approach the village where you'll have your lunch break from above, you'll be offered an incredible sight.\n\nYet, the best view is that of the snow capped mountains from the meadows where lonely shepherds take their cows to graze. It's an absolutely mighty and beautiful sight.\n\nAfter lunch, you'll continue walking mostly on a dirt road. The landscape will be a bit mode desolate and dry and approach various clay villages that look well hidden in the mountains.\n\nWhat to expect.\n\nThere are no major difficulties during your second day hiking in Morocco, other than the fact that the trail is at times quite narrow and not easy to follow - but this is hardly a concern since you'll be with an expert local guide at all times. You meet even less people than on the previous day - it is all about getting close to nature.\n\nCarry a power bank for your phone or make sure your camera is fully charged as there will be plenty of good photo opportunities.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    Image.network(
                        "${provider.nomadicModel.media![4].media?.original.toString()}"),
                    SizedBox(
                      height: 10,
                    ),
                      Text("Day 3 - from Infag to Tizgga.",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "On your third day you will be walking from Infag to Tizgga and your lunch break will be in Imi Ourmer.\n\nYou'll start walking soon after breakfast, making your way out of the village and towards the valley. Walking along the dirt road, you'll come to a river and you'll have to continue walking along that on a narrow but easy trail.\n\nAs you'll be crossing several villages, you'll get to meet more people and you'll be able to observe local life a bit more. In Imi Ourmer, your lunch spot, you'll have the chance of visiting a cooperative where local women dedicate their time to the art of traditional carpet weaving.\n\nThe walking time between Infag and Imi Ourmer is short around 2 and a half hours.\n\nAfter lunch, you'll cross a couple of villages until the trail becomes a steep uphill until your final destination, the village of Tizgga, the highest point you'll reach during your time hiking in Morocco. The village has some pretty views over the mountains, but it is incredibly modest.\n\nOverall walking distance: 13.5 km\n\nOverall walking time: 7 hours, including lunch break and various stops.\n\nHighest point: 1953 meters above sea level.\n\nLunch break: at a local house in Imi Ourmer.\n\nThe views on your third day of hiking in Morocco are stunning. Soon after getting out of Infag, you'll reach a valley with a river flowing through it, and a viewpoint from where you can enjoy an encompassing view of your surroundings up until the snow capped mountains.\n\nThe village of Imi Ourmer, where you'll be having lunch, is set scenically along the river. Along the river there is a channel system used by local women to do laundry in the traditional way, and that is a nice thing to observe. This is one of the villages you're likely to enjoy the most, as the host family where you'll be having lunch has a nice, comfortable home (by local standards) and it is very welcoming.\n\nTizgga, where you will spending the night, is a village of very modest people who are however absolutely friendly. They will make it a point to show you the most intricate traditional clothes and even offer you to try them on to pose for photos.\n\nThough the first part of the day is fairly easy and the walk is pleasant, the walk up to Tizgga can be challenging as you'll be at a bit of an elevation, and the road you'll be walking along quite steep. Other than that, it is an absolutely pleasant walk.\n\nYou'll be tempted to buy a carpet from the women's cooperative there and then, but keep in mind that you'll be going through the same village on day 4 of this hiking itinerary, so you may want to spare yourself (or the mules) the effort of having to carry extra weight for at least one day.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    Image.network(
                        "${provider.nomadicModel.media![6].media?.original.toString()}"),
                    SizedBox(
                      height: 10,
                    ),
                      Text("Day 4 - from Infag to Imintala.",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "On your fourth day you will walk back down on the same trail you followed the day before, reaching the village of Imi Ourmer by lunch time.\n\nAfter lunch you will walk towards Imintala, one of the largest villages in the area, where you'll be hosted in a beautiful, very large traditional home that compared to the others where you'll be staying will feel significantly more comfortable - this is the only night where you'll be sleeping on a bad, though with your sleeping bag.\n\nThe village itself is more lively compared to the others and one of the most interesting one you'll be coming across when hiking in Morocco, and chances are you'll come across group of kids engaged in ball games who'll be glad to involve you, or other youngsters walking around for errands.\n\nOverall walking distance: 12.8 km\n\nOverall walking time: 6 hours, including lunch break.\n\nHighest point: 1939 meters above sea level.\n\nLunch break: at a local house in Imi Ourmer.\n\nFor the first half of the day, the sights will be the same of those of the previous afternoon. After lunch, as you'll be walking towards Imintala, you'll have views of the mountains and of the small villages scattered along the way. Unfortunately, there isn't much of a sunset view from Imintala or in its immediate surroundings, but it's still nice to get out a bit and admire the views.\n\nWhat to expect\n\nThis is one of the easiest days of walking - for those who prefer going downhill. There are no major challenges along the way, and you will be happy to know that once in Imintala you will be able to enjoy a proper hammam.\n\n",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    Image.network(
                        "${provider.nomadicModel.media![1].media?.original.toString()}"),
                    SizedBox(
                      height: 10,
                    ),
                      Text("Day 5 - from Imintala to Amizmiz.",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Your final day of hiking in Morocco will also be the longest one, but you won't encounter many challenges. The first part of the day will be spent walking towards Sidi Hssayn, where you will have lunch at a local home. After that, you'll make your way towards Amizmiz, the initial point of this hiking itinerary, where a car will be waiting for you to take you back to Marrakech.\n\nOverall walking distance: 20 km.\n\nOverall walking time: 7 hours, including lunch break.\n\nHighest point: 1486 meters above sea level.\n\nLunch break: at a local house in Sidi Hssayn.\n\nSimilar to the previous days, you will be looking at dry mountains where you will be able to spot several Amazigh villages.\n\nWhat to expect\n\nThis is a long day - not so much in terms of challenges, but in terms of the distance you'll be walking, almost all of it on dirt road. Be prepared with snacks and plenty of water to keep your energy flowing.\n\n**General Information And Tips To Enjoy Hiking In Morocco**\n\nThe best tip I can give you if you plan to go hiking in Morocco is to get prepared for uncomfortable conditions. The hikes aren't strenuous per se, and although you won't be camping throughout this trail, you'll be sleeping at local homes (more about it below) which are as far as it can be from luxurious - in some cases, you won't even have a sink to wash your hands and brush your teeth before going to bed.\n\nThis is definitely not a trip for people who expect modern day comforts and who can't let a day go by without getting online.\n\nI recommend giving yourself enough time to follow the itinerary and add a few days in Marrakech at the end, so that you can enjoy a proper shower, rest in a good hotel and then move on to your next destination.\n\nYou may not be able to get a map of the trails but you can definitely download the tracks on Wikiloc, even more so as they work offline. Though - as I have stressed throughout this post - you shouldn't be walking this trail alone, having a trail with a map that you can follow will also give you an idea of your daily challenges.\n\nContinue reading for more tips on how to make the most of your time when hiking in Morocco.\n\nThe best starting point for hiking in Morocco Atlas Mountains is Marrakech, which is very well connected to other countries in Europe and beyond via flights with major and budget airlines. Marrakech Menara Airport is at just 10 km from the city center, but with traffic it may take you more than 30 minutes to reach your hotel.\n\nTaxis are easily available right outside the terminal, but in case you don't want to fiddle with money or worry about having to haggle a price, you can book a private transfer\n\nWhere to sleep in Marrakech.\n\nChances are you'll have to spend at least one night in Marrakech before you start your hiking trip. I actually recommend spending a few days afterwards as well, to explore the city - which has a lot to offer - and rest. The good news is that there are some excellent hotels in town, for all tastes and budgets.\n\nThe center of Marrakech is easy enough to explore. The nicest part is the Medina - though rumor has it that the Medina of Fez is even better. I recommend getting lost in the narrow alleys to look at the small shops, sipping tea, having a snack here and there, enjoying local life and grabbing all the photo opportunities you can think of.\n\nIf your time in the city is limited, you may want to go on one or two guided tours to make the most of it.\n\nReaching the Atlas Mountains and the beginning of the trail\n\nIt takes about one hour by car (or two on a combination of local buses and shared taxi) to get from Marrakech to Amizmiz, where your hike will start. Nomadic Tribe will take care to arrange your transfer.\n\nWhen to go hiking in Morocco Atlas Mountains\n\nThe best time to visit Morocco Atlas Mountains is between March and November, when there is no snow. Summer months tend to be hot, though much cooler than in the rest of Morocco. I generally don't recommend hiking in the summer, so if you are planning a hiking trip to the Atlas you should go between March and May, before it gets too hot; or in October and November, before it starts snowing.\n\nI visited Morocco and hiked the Atlas Mountains in mid April and days were sunny, with pleasant temperatures that dropped at night, when it became rather cold and warm clothes were a must.\n\nAnother factor to keep in mind is Ramadan, a month during which Muslims fast during the day. Personally, I wouldn't recommend visiting at that time of the year - mostly out of respect for locals who will be fasting. In 2020, Ramadan will be between April and May.\n\nSeveral companies organized hikes throughout the Atlas Mountains, but I can only comment the one I used.\n\nMy multi-day hike in Morocco was organized by Nomadic Tribe, a new tour operator which strives to promote responsible adventure travel and whose mission is to connect travelers with indigenous communities throughout the world, whether they want to travel alone, with friends or want to join an already formed group.\n\nVia the Nomadic Tribe app you'll be able to find information about the indigenous communities you may want to visit, read the itinerary of the trip, see if there is a tour leaving and book it. You will also be able to share your experience - much like on other social media - with photos and posts.\n\nBefore I go on to describe what your accommodation will be like while hiking in Morocco, let me reassure you that the lack of comfort during the hike will be made up by the incredible company of like minded people and by the smiles of the local families, who will go our of their way to make you feel welcome (I don't think I have ever met such, and of their children who are absolutely adorable.\n\nThroughout your hike in Morocco Atlas Mountains, accommodation will be pre-arranged for you and you will be sleeping in tiny Berber villages, in local homes which are very modest by our standards, but where families often rent out one or two rooms (usually the living room) to visitors and prepare their meals.\n\nWhile the food is delicious throughout, the sleeping arrangements are modest, but in a way they contribute to creating a special bond with among the group members.",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                    Image.network(
                        "${provider.nomadicModel.media![5].media?.original.toString()}"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Don't expect any luxury: you'll be provided a sleeping bag and some blankets to keep you warm at night, and you're likely going to sleep either on the floor on thin mattresses, or on the (very hard) couches. Usually, the entire group shares the room. During my hike, we slept in a bed (with our sleeping bags on tops, as linen was not provided) only on the last night of the trek.\n\nNone of the houses where you'll be staying will have a bathroom as you know it. In most cases, you'll have a squat toilet and, at best, a sink to wash your hands and brush your teeth - in some cases not even that.\n\nShowers are not a thing in the villages of the Atlas Mountains - you'll be able to use a traditional hammam a couple of times, and that will feel enormously recharging.\n\nMake the life of those mules as easy as possible by packing light.\n\nThe first thing you should consider when packing for a hiking trip to Morocco is that you have to be comfortable during the day, and comfortable and warm at night. You also have to show respect for the local customs. While women won't be asked to cover their head, both men and women should be dressed modestly, covering their shoulders, chest and legs - much like locals do.\n\nThis packing guide reflects the fact that you won't really have a chance to shower and get changed that much - keep whatever you pack at a minimum, and please remember that mules will be the ones carrying most of the weight and you should strive to make their lives as easy as possible.\n\nTry not to carry more than 7 kg with you - spread between your daypack and the backpack that the mules will be carrying.\n\nHaving said so, there are some items you should take with you and some things you are better off leaving in storage at your hotel in Marrakech.\n\nHere's what you should take:\n\nWet wipes - you'll need them to wash yourself, your face, your hands any time water is not readily available (which will be often). Hand sanitizer - for the reasons I have just said. A small bar of soap - for the one time you'll be able to use the hammam. Deodorant. A hat, a scarf and gloves. Good hiking boots such as Salomon 4D 3 GTX A pair of flip flops or, even better, walking sandal so that you can rest your feet at the end of the day. A pair of hiking pants (which you'll wear during the day) and a pair of leggings to wear at night. For pants, I love Kuhl Cliffside Convertible. Three t-shirts - one to wear, one as a change of clothes, one to wear at night. I am a fan of the Kuhl Sora&lt; t-shirt and the Kuhl Wunderer shirt, both long sleeves. For short sleeves, you can opt for something like Kuhl Kyra and Kuhl Sora. A fleece such as Kuhl Alska and a good jacket such as Firefly Hoody. A daypack such as Osprey Daylite Plus which you will carry during the day, and a slightly larger one such as Osprey Tempest 40. A refillable water bottle, with a filter, such as Lifestraw A small quick-dry towel. A change or two of underwear and socks.\n\nAnd here what you should leave in storage at your hotel in Marrakech:\n\nShampoo, conditioner, make up - you'll honestly be lucky if you have a chance to use the hammam, and if you do so, you have to keep it quick. Anything dressy, jeans, nice shoes - you won't have a chance of wearing any of that. Laptop - you won't have any opportunity to plug it in! Swimsuit.\n\nThere will be many occasions as you will be hiking in Morocco that will make you raise your eyebrow in disbelief or concern. Below are a few things you should consider, and a few easy things you can do to encourage change.\n\nUsing mules to carry weights is a common practice in Morocco, and part of the local culture. Chances are that even though you may decide to carry your backpack throughout the hike, mules will accompany the group to carry things such as sleeping bags, toilet paper and even bottles of water.\n\nThe easiest thing to do to make the life of these animals easier is to pack as little as possible and to ask the local company who is in charge of organizing the logistical support to not carry water, and suggest that you'll be using a water filter such as life straw for your water bottle, which you can refill regularly.\n\nDespite the fact that Morocco is doing better than the neighboring countries when it comes to renewable energy, there is little doubt that it has major issues when it comes to waste disposal.\n\nYou'll probably notice that there are various often very close to the villages you'll be walking through. Waste collection is sadly not a thing in the most remote villages of Morocco Atlas Mountains and more often than not the only way to get rid of waste is to burn it - with terrible consequences for the environment, and toxic effect to the air.\n\nWhile recycling waste policies have yet to be implemented in Morocco there are a couple of things you can do to minimize your impact - the main being to avoid using plastic. Using a filter for your water bottle is one of them, so that you can avoid buying plastic bottles.\n\nThe Amazigh are nothing short of welcoming. In each village you will be visiting throughout this hiking itinerary, you'll meet with local families - not only the ones where you will be having lunch or where you'll be sleeping, but also their neighbors, relatives, as well as small shop owners. They will all show curiosity towards the visitors, and an interest in interacting.\n\nKeep in mind that:\n\nThe Amazigh are Sunni muslims, both men and women wear traditional clothes; their main source of income is cattle and agriculture (which is why they share worries for climate change, as it emerged in conversation my group had with them); they live in clay houses with little modern comforts; and donkeys and mules are often the only means of transportation they use to move from one village to the other.\n\nThe language barrier (the communities you'll be visiting speak Tamazigh, and only on occasion they will know a few words of French) will be such that you will need your guide to act as interpreter - that's why having a good guide is fundamental.\n\nMake sure to ask show respect for the Amazigh at all times, by dressing modestly and by asking for permission to take photos - you'll soon realize that most people are happy to pose for photos.\n\nInteracting with local children.\n\nAs you cross the villages of the Atlas Mountains, you'll meet many children. They are , welcoming and absolutely funny, and they will want to show you their tricks and play with you. They will also ask you for presents - small things such as pens, or - more often - candy or snacks.\n\nI encourage you not to give children things that may have a detrimental effect for their health - I saw lots of children with cavities and very bad teeth - or to the environment. Chances are that if you offer them a snack, they will unwrap it immediately and throw the plastic wherever they are.\n\nA better idea may be to make a donation to the school - books, paper, pens and even money would be welcome.\n\nWhile alcohol is easily available in Marrakech, where all the best restaurants and hotels serve wine, beer and cocktails, this is absolutely not a thing among the Berber communities that live in the Atlas. You'll be drinking water, a lot of Moroccan tea and the occasional (instant) coffee.\n\nI always recommend getting a good travel insurance, wherever you go and even more so if you are going on a long distance hike!\n\nYou can find more information on this itinerary for hiking in Morocco, quotes for the trip and even get a chance to join a group or put together one on Nomadic Tribe app.\n\nLegal Disclaimer: I was a guest of the Nomadic Tribe during my trip to Morocco and I was thrilled to be one of the first to test this itinerary. Needless to say, the views expressed in this post remain my own.\n\nCLAUDIA TAVANI\n\n[My Adventures Across the World](https://myadventuresacrosstheworld.com/)",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}