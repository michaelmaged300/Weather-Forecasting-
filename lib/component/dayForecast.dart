import 'package:flutter/material.dart';

class Dayforecast extends StatefulWidget {
  final String day;
  final IconData iconState;
  final String degree;
  final String state;

  Dayforecast({super.key,required this.day,required this.iconState,required this.degree,required this.state});

  @override
  State<Dayforecast> createState() => _Dayforecast();
}
class _Dayforecast extends State<Dayforecast> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
                  padding: EdgeInsets.all(10),
                  margin:  EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff2c2e4e),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     Expanded(child: Text(widget.day, style: TextStyle(color: Colors.white,
                        fontSize: 18,fontWeight: FontWeight.bold,),),),
                      Expanded(child: Icon(widget.iconState, color: Colors.orange, size: 35)),

                      Expanded(child: Row(
                        children: [
                          Text(widget.degree, style: TextStyle(color: Colors.white, fontSize: 17,),),
                          Text(widget.state, style: TextStyle(color: Colors.grey[400], fontSize: 15,),),
                        ],
                      ),)
                    ],
                  ),
                ),
    );


  }
}