import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollableSummary extends StatelessWidget{
  const ScrollableSummary(this.summary,{super.key});

  final List<Map<String,Object>> summary;
  Color statusColor(data){
    if (data!='Correct Answer')
    return Colors.grey;
    else return Colors.green;
  }
  @override
  Widget build(context){
    return SizedBox(
      height: 400,
      child: Expanded(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: summary.map((data) {
              return Row(
                children: [
                  const SizedBox(width: 3,),
                  Container(
                    width: 40.0, // Diameter of the circle
                    height: 40.0, // Diameter of the circle
                    decoration: BoxDecoration(
                      color: statusColor(data['Status']), // Background color of the circle
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),blurRadius: 5)]
                       // Makes the container circular
          ),
                    child: Center(child: Text(((data['quesNo'] as int)).toString()))),
                    const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['quesText'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lora(
                          color: Colors.white,
                          fontSize: 15
                        ),),
                        Text(data['Status'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lora(
                          color: statusColor(data['Status']),
                          fontSize: 15
                        ),),
                        Text(data['selectedAns'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lora(
                          color: Colors.white,
                          fontSize: 15
                        ),),
                        const SizedBox(height: 20,)
                      ],
                    ),
                  )
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}