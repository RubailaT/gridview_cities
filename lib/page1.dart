 import 'package:flutter/material.dart';
import 'package:gridview_cities/modelpage.dart';

class GridCities extends StatelessWidget {
  const GridCities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List Cities=[
      ModelCities(img: "images/redfort.png", Tex1:'Delhi', Tex2:'India', Tex3: 'Population: 19 mill'),
      ModelCities(img: "images/download.jpeg", Tex1:'London', Tex2:'Britain', Tex3: 'Population:8 mill'),
      ModelCities(img: "images/Vancouver.png", Tex1:'Vancouver', Tex2:'Canada', Tex3: 'Population:2.4 mill'),
      ModelCities(img: "images/newyork.jpg", Tex1:'NewYork', Tex2:'USA', Tex3: 'Population:8.1 mill'),
      ModelCities(img: "images/swiss.jpg", Tex1:'Switzerland', Tex2:'Bern', Tex3: 'Population:8.7 mill'),
      ModelCities(img: "images/images (4).jpeg", Tex1:'Dubai', Tex2:'Abudhabi', Tex3: 'Population:3.3 mill'),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color(0xcfEFAF0C),
        title: Text("Cities Around World",style:
          TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(

          itemCount: Cities.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3/4,



            ),
            itemBuilder: (context,index) {
              return Container(
                width:500,
                height: 500,
                child: Card(

                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),


                  child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        height: 100,
                        child: Image(image: AssetImage(Cities[index].img),
                        fit: BoxFit.cover,
                        ),

                      ),
                      Text(Cities[index].Tex1,style:
                      TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      Text(Cities[index].Tex2),
                      Text(Cities[index].Tex3),
                    ],
                  ),

                ),
              );


            }
              ),
      ),
          );
          }



}
