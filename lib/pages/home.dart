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
            body: Stack(
                children: [
                    // background image container
                    Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/cookbg.png"),
                                fit: BoxFit.cover
                            )
                        ),
                    ),
                    // gradient overlay
                    Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                    Color.fromRGBO(64, 77, 97, 0),
                                    Colors.black,
                                ],
                            ),
                        ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                // App name and logo
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                        Container(
                                            margin: const EdgeInsets.only(right: 16.0),
                                            child: SvgPicture.asset("assets/icons/logo.svg"),
                                        ),
                                        const Text(
                                            "Cooksantara",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.w800,
                                            ),
                                        )
                                    ],
                                ),
                                // Bottom text description container
                                Container(
                                    margin: const EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
                                    child: const Text(
                                        "Cook Indonesian Food At Home Like A Professional Chef",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            

                                        ),
                                    ),
                                ),
                                Container(
                                    margin: const EdgeInsets.all(20.0),
                                    child: ElevatedButton(
                                        onPressed: () {
                                    
                                        }, 
                                        child: const Row(
                                            children: [
                                                Text(
                                                    "Let’s Start",
                                                )
                                            ],
                                        )
                                    ),
                                )
                            ],
                        )
                    ),
                ],
            ),
			// appBar: AppBar(
			// 	title: const Text(
            //         "Breakfast", 
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 20.0,
            //             fontWeight: FontWeight.bold
            //         ),
            //     ),
            //     centerTitle: true,
            //     elevation: 0,
            //     backgroundColor: Colors.white,
                
            //     leading: GestureDetector(
            //         onTap: () {
                        
            //         },
            //         child: Container(
            //             margin: const EdgeInsets.all(6),
            //             decoration: BoxDecoration(
            //                 color: hexToColor("#F7F8F8"),
            //                 borderRadius: BorderRadius.circular(8)
            //             ),
            //             child: Transform.rotate(
            //                 angle: 180 * math.pi / 180,
            //                 child: const Icon(
            //                     arrowForwardIosRounded, 
            //                     size: 20,
            //                 ),
            //             )
            //         ),
            //     ),
            //     actions: [
            //         GestureDetector(
            //             onTap: () {
            //                 final snackBar = SnackBar(
            //                     content: const Text('Yay! A SnackBar!'),
            //                     behavior: SnackBarBehavior.floating,
            //                     action: SnackBarAction(
            //                     label: 'Hide',
            //                     onPressed: () {
            //                     },
            //                     ),
            //                 );
            //                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //             },
            //             child: Container(
            //                 decoration: BoxDecoration(
            //                     color: hexToColor("#F7F8F8"),
            //                     borderRadius: BorderRadius.circular(8)
            //                 ),
            //                 margin: const EdgeInsets.only(right: 8.0),
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: const Icon(moreHoriz, size: 28,),
            //             ),
            //         ),  
            //     ],
			// ),
            
		);
	}
}
