import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
	const HomePage({super.key});

    static const IconData search = IconData(0xe567, fontFamily: 'MaterialIcons');
    static const IconData arrowForwardIosRounded = IconData(0xf579, fontFamily: 'MaterialIcons', matchTextDirection: true);
    static const IconData moreHoriz = IconData(0xe402, fontFamily: 'MaterialIcons');

    Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

	@override
	Widget build(BuildContext context) {
		return Scaffold(
            backgroundColor: Colors.white,
			appBar: AppBar(
				title: const Text(
                    "Breakfast", 
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                ),
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.white,
                
                leading: GestureDetector(
                    onTap: () {
                        
                    },
                    child: Container(
                        margin: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: hexToColor("#F7F8F8"),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Transform.rotate(
                            angle: 180 * math.pi / 180,
                            child: const Icon(
                                arrowForwardIosRounded, 
                                size: 20,
                            ),
                        )
                    ),
                ),
                actions: [
                    GestureDetector(
                        onTap: () {
                            final snackBar = SnackBar(
                                content: const Text('Yay! A SnackBar!'),
                                behavior: SnackBarBehavior.floating,
                                action: SnackBarAction(
                                label: 'Hide',
                                onPressed: () {
                                    // Some code to undo the change.
                                },
                                ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: hexToColor("#F7F8F8"),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            margin: const EdgeInsets.only(right: 8.0),
                            padding: const EdgeInsets.all(8.0),
                            child: const Icon(moreHoriz, size: 28,),
                        ),
                    ),  
                ],
			),
            
		);
	}
}
