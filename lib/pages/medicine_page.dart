import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newproject/model/medicine_model.dart';
import 'package:svg_flutter/svg.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({super.key});

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  List<Model>medicine=[
    Model(name: 'Insulin', code: '#2441789', availability: 'hospital', manufacturer: 'Biotie'),
    Model(name: 'Insulin', code: '#2441789', availability: 'hospital', manufacturer: 'Biotie'),
    Model(name: 'Insulin', code: '#2441789', availability: 'hospital', manufacturer: 'Biotie'),
    Model(name: 'Insulin', code: '#2441789', availability: 'hospital', manufacturer: 'Biotie')
  ];
  List number = [
    '1',
    '2',
    '3',
    '4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 4,
                  spreadRadius: 3,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          color: HexColor('#C4CDD5'), shape: BoxShape.circle),
                      child: Center(child: Text(number[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: HexColor('#212B36')),)),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/edit.svg'),
                        const SizedBox(width: 5,),
                        SvgPicture.asset('assets/trash.svg'),
                        const SizedBox(width: 5,),
                        SvgPicture.asset('assets/info-circle.svg')
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Title:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor('#212B36')),),
                  Text(medicine[index].name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: HexColor('#637381')),)
                ],
                ),
                const SizedBox(height: 16,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Code:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor('#212B36')),),
                    Text(medicine[index].code,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: HexColor('#637381')),)
                  ],
                ),
                const SizedBox(height: 16,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Availability:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor('#212B36')),),
                    Text(medicine[index].availability,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: HexColor('#637381')),)
                  ],
                ),
                const SizedBox(height: 16,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Manufacturer:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: HexColor('#212B36')),),
                    Text(medicine[index].manufacturer,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: HexColor('#637381')),)
                  ],
                ),

              ],
            ),
          ),
        );
      },
      itemCount: number.length,
    ));
  }
}
