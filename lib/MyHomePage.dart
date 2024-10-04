import 'package:flutter/material.dart';

import 'component/dayForecast.dart';
import 'component/smallContainersState.dart';
import 'listIconState.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  bool temperature = false;
  bool wind= false;
  bool rain = false;
  bool notification = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child:Container(
          color:Color(0xff363a77),
          height:MediaQuery.of(context).size.height,
child: Column(
  children: [
    Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.only(top:30,left: 10,right: 10,bottom: 10),

        color:Color(0xff071133),
        child: Row(
          children: [
            ClipOval(
              child: Container(
                height: 80,
                width: 80,
                child:Image.asset("images/p1.jpeg"),
              ),
            ),
            Text(" Weather",style: TextStyle(fontWeight:FontWeight.bold,fontSize:40,color: Colors.white
            ),)

          ],
        ),
      ),
    ),
    Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Row(    //Temperature

              children: [
                Expanded(child: Row(
                  children: [
                    Icon(Icons.thermostat_outlined,color: Colors.white,size: 25,),
                    Text('Temperature Unit', style: TextStyle(color: Colors.white)),
                  ],
                )),
                 Expanded(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('  °C',style: TextStyle(color: Colors.white)),
                      Switch(         //switch button related to Celsius and Fahrenheit
                        activeColor: Colors.orange,

                        activeTrackColor:Color(0xff292d4c),
                        inactiveTrackColor:Color(0xff292d4c),
                        inactiveThumbColor: Colors.orange,
                        value: temperature,
                        onChanged: (value) {
                          setState(() {
                            temperature = value;
                          });
                        },
                      ),
                      Text('°F',style: TextStyle(color: Colors.white)),
                    ],
                                   ),
                 ),

              ],
            ),
            Container(height: 20,),
            Divider(color: Colors.white),
            Container(height: 20,),

            Row(    //wind
              children: [
                Expanded(child: Row(
                  children: [
                    Icon(Icons.air_outlined,color: Colors.white,size: 25,),
                    Text('Wind Speed Unit', style: TextStyle(color: Colors.white)),
                  ],
                )),
                 Expanded(
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('  km/h',style: TextStyle(color: Colors.white)),
                      Switch(         //switch button related to Celsius and Fahrenheit
                        activeColor: Colors.orange,

                        activeTrackColor:Color(0xff292d4c),
                        inactiveTrackColor:Color(0xff292d4c),
                        inactiveThumbColor: Colors.orange,
                        value: wind,
                        onChanged: (value) {
                          setState(() {
                            wind = value;
                          });
                        },
                      ),
                      Text('mph',style: TextStyle(color: Colors.white)),
                    ],
                                   ),
                 ),
              ],
            ),
            Container(height: 20,),
            Divider(color: Colors.white),
            Container(height: 20,),

            Row(  //rain
              children: [
                Expanded(child: Row(
                  children: [
                    Icon(Icons.cloud_outlined,color: Colors.white,size: 25,),
                    Text('Rain Unit', style: TextStyle(color: Colors.white)),
                  ],
                )),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('  mm',style: TextStyle(color: Colors.white)),
                      Switch(         //switch button related to Celsius and Fahrenheit
                        activeColor: Colors.orange,

                        activeTrackColor:Color(0xff292d4c),
                        inactiveTrackColor:Color(0xff292d4c),
                        inactiveThumbColor: Colors.orange,
                        value: rain,
                        onChanged: (value) {
                          setState(() {
                            rain = value;
                          });
                        },
                      ),
                      Text('in',style: TextStyle(color: Colors.white)),   //in=inch
                    ],
                  ),
                ),
              ],
            ),
            Container(height: 20,),
            Divider(color: Color(0xff342774),thickness: 2,),
            Container(height: 18,),

            Row(     //Notifications
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications_none,color: Colors.white,size: 30,),
                    Text(' Notifications', style: TextStyle(fontSize: 25,color: Colors.white)),
                  ],
                ),
                Switch(         //switch button related to Celsius and Fahrenheit
                  activeColor: Colors.orange,

                  activeTrackColor:Color(0xff292d4c),
                  inactiveTrackColor:Color(0xff292d4c),
                  value: notification,
                  onChanged: (value) {
                    setState(() {
                      notification = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    )
  ],
),
        ),
      ),

      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white,
            size: 30// Change the drawer icon color here
        ),

        /* Replace the word "Cairo" with the value coming from the API through the location button.*/
        title:Center(child: Text("Cairo",style: TextStyle(color: Colors.white,fontSize: 30),)),
        backgroundColor: Color(0xff352877), //black
     actions: [

      IconButton(     //لأعطاء اذن الدخول للموقع  geolocator
        hoverColor: Colors.orange,
          onPressed: (){
      }, icon: Icon(Icons.location_on_outlined))
     ],
      ),
      body: Stack(
        children: [
          Positioned(child: Image.asset("images/background.jpg",height:MediaQuery.of(context).size.height,fit: BoxFit.cover,)),

          Positioned(

            child: Container(
              // color: Color(0xff0c0c0c),

              padding:EdgeInsets.only(top: 15,left: 15,right: 15),
              child: ListView(
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 75) ,
                    height: 250,
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:Color(0xff414475),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow:[
                        BoxShadow(
                          color: Color(0xff4b4f85),
                          offset: Offset(0, 20),
                          blurRadius: 20,
                          spreadRadius: -12,
                        )
                      ]
                    ),
                    child:Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top:-75,
                            left: 0,
                            child: Image.asset(iconState[5]["image"],height: 205,width: 205,)),
                        Positioned(
                            top:25,
                            right: 44,
                            child: Text("18",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 65),)),
                        Positioned(
                            top:35,
                            right: 24,
                            child:Text('°C',style: TextStyle(color: Colors.white,fontSize: 20)),
                        ),

                        Positioned(
                          top:105,
                          right: 38,
                          child:Text(iconState[5]["state"],style: TextStyle(color: Colors.white,fontSize: 35,fontFamily: "AfacadFlux",
                            shadows:[Shadow(
                            color: Colors.grey.withOpacity(0.4),
                            offset: Offset(1, 2),
                            blurRadius: 4,
                          ),

                            ],)),
                        ),
                        Positioned(
                          top:155,
                          left: 15,
                          child: Row(
                            children: [
                              Text(
                                'Sunday, 12, May, 8:03PM',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.3),  // Shadow color with opacity
                                      offset: Offset(1, 1),  // Shadow position (x, y)
                                      blurRadius: 2,  // Blur radius for the shadow
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 35,
                              ),


                            ],
                          ),
                        ),
                        Positioned(
                          top:190,
                          left: 5,
                          child:Container(
                            decoration: BoxDecoration(
                              color: Color(0xff393c69),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Row(
                              children: [
                            Image.asset("images/temperature (1).png",height: 45,width: 45,),
                                Text('Max : ',style: TextStyle(color: Colors.grey[200],fontSize: 16)),
                                Text('30°     ',style: TextStyle(color: Colors.grey[200],fontSize: 16)),

                                // Container(
                                //   width: 40,
                                // ),
                                Image.asset("images/temperature.png",height: 45,width: 45,),
                                Text('Min :  ',style: TextStyle(color: Colors.grey[200],fontSize: 16)),
                                Text('15°',style: TextStyle(color: Colors.grey[200],fontSize: 16)),
                                Text('         Feels like ',style: TextStyle(color: Colors.grey[200],fontSize: 16)),
                                Text('16° ',style: TextStyle(color: Colors.grey[200],fontSize: 15)),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  //*********************************rowState***************************************
                  Container(
                    height: 35,
                  ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SmallContainer(iconn:(Icons.water_drop),text1:"35%",text2:"Humidity",),
                        Container(
                          width: 15,
                        ),
                        SmallContainer(iconn:(Icons.air),text1:"13km/h",text2:"Wind",),
                        Container(
                          width: 15,
                        ),
                        SmallContainer(iconn:(Icons.cloudy_snowing),text1:"26°",text2:"Rain",),

                      ],
                    ),
                  //********************************dayForecast****************************************

            Container(
              margin:  EdgeInsets.only(top: 35),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff414475),
                borderRadius: BorderRadius.circular(20),
                ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                "Day Forecast",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Container(height: 35,),
              Column(
                children: [
                  Dayforecast(day:"Sunday",iconState:(Icons.wb_sunny_outlined),degree:"35°/25° ",state:"Sunny"),
                  Dayforecast(day:"Monday",iconState:(Icons.wb_sunny_outlined),degree:"28°/18° ",state:"Rainy"),
                  Dayforecast(day:"Tuesday",iconState:(Icons.wb_sunny_outlined),degree:"30°/23° ",state:"Clearly"),
                  Dayforecast(day:"Wednesday",iconState:(Icons.wb_sunny_outlined),degree:"37°/28° ",state:"Clearly"),
                  Dayforecast(day:"Thursday",iconState:(Icons.wb_sunny_outlined),degree:"38°/25° ",state:"Sunny"),
                  Dayforecast(day:"Friday",iconState:(Icons.wb_sunny_outlined),degree:"40°/22° ",state:"Sunny"),
                  Dayforecast(day:"Saturday",iconState:(Icons.wb_sunny_outlined),degree:"42°/33° ",state:"Sunny"),

                ]
                   )
                ]
            )
                ),
                ],

              ),
            ),
          ),
        ],
      ),

    );
  }
}