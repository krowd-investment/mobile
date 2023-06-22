import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Invest extends StatefulWidget {
  const Invest({super.key});

  @override
  _InvestState createState() => _InvestState();
}

double fem = 1;

String selectedCategory = '';

class _InvestState extends State<Invest> {
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invest'),
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _field(),
              _listProject(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _field() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CarouselSlider(
      options: CarouselOptions(
        height: 50.0,
        viewportFraction: 0.3,
      ),
      items: ['All', 'Education', 'Technology', 'Market'].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 100, // Adjust the width as needed
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(
                      255, 65, 90, 234), // Set the desired border color
                  width: 1.0, // Set the desired border width
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0), // Set the desired padding
                child: FittedBox(
                  // Wrap the TextButton with FittedBox
                  fit: BoxFit.scaleDown,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      i,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 65, 90, 234),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    ),
  );
}

Container _listProject() {
  return Container(
    // donationf8a (102:946)
    margin: EdgeInsets.fromLTRB(4.5 * fem, 0 * fem, 5.5 * fem, 0 * fem),
    width: double.infinity,
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      _projectEach(),
    ]),
  );
}

Widget _projectEach() {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
    ),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xfff6f6f6)),
        color: Color.fromARGB(255, 94, 22, 22),
        borderRadius: BorderRadius.circular(18 * fem),
        boxShadow: [
          BoxShadow(
            color: const Color(0x3f000000),
            offset: Offset(0 * fem, 4 * fem),
            blurRadius: 2 * fem,
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        _part1(),
        _part2(),
      ]),
    ),
  );
}

Widget _part1() {
  return Column(
    children: [
      Container(
        // unsplashol3nxdewfniHQr (102:915)
        padding: EdgeInsets.fromLTRB(300 * fem, 8 * fem, 15.45 * fem, 8 * fem),
        width: double.infinity,
        height: 142 * fem,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18 * fem),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://th.bing.com/th/id/R.fea708e57f125afaa85009cbc2703a0b?rik=5ljfmSKZo2rF7g&riu=http%3a%2f%2f4.bp.blogspot.com%2f-Efqfbgak8TY%2fT7MSEAvAXxI%2fAAAAAAAABIQ%2fVYaJwfe-Qsk%2fs1600%2fhinh-nen-dep-63.jpg&ehk=BfvlkoWARSdwNv00LnTk3ue7j%2fv87GTvwyT8lR%2f1ngs%3d&risl=&pid=ImgRaw&r=0'),
          ),
        ),
      ),
      Container(
        // margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 102.13 * fem),
        width: double.infinity,
        height: 23.87 * fem,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5 * fem),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(
              11.78 * fem, 4.79 * fem, 11.78 * fem, 1.08 * fem),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff3eb489),
            borderRadius: BorderRadius.circular(5 * fem),
          ),
          child: Text(
            'Active',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12 * fem,
              fontWeight: FontWeight.w500,
              height: 1.5 * fem / fem,
              color: const Color(0xffffffff),
            ),
          ),
        ),
      ),
    ],
  );
}

Container _part2() {
  return Container(
    padding: EdgeInsets.fromLTRB(15.5 * fem, 8 * fem, 12 * fem, 10 * fem),
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color(0xffffffff),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _titleInvest(),
      SizedBox(
        height: 10 * fem,
      ),
      sideBar(),
      SizedBox(
        height: 9 * fem,
      ),
      lastRowProject(),
    ]),
  );
}

Widget _titleInvest() {
  return SizedBox(
    width: double.infinity,
    height: 48 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 58.5 * fem, 0 * fem),
            constraints: BoxConstraints(
              maxWidth: 204 * fem,
            ),
            child: Text(
              ' Project Title',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16 * fem,
                fontWeight: FontWeight.w600,
                height: 1.5 * fem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 9 * fem),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 76 * fem,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7 * fem),
                  gradient: const LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0xffff607d), Color(0xb2ff607d)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Invest',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14 * fem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * fem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget sideBar() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 14 * fem,
            fontWeight: FontWeight.w400,
            height: 1.6428571429 * fem / fem,
            letterSpacing: 0.5 * fem,
            color: const Color(0xff78858f),
          ),
          children: [
            TextSpan(
              text: '\$150k',
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 14 * fem,
                fontWeight: FontWeight.w500,
                height: 1.6428571429 * fem / fem,
                letterSpacing: 0.5 * fem,
                color: const Color(0xff0a66c2),
              ),
            ),
            TextSpan(
              text: ' fund raised from \$500k',
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 14 * fem,
                fontWeight: FontWeight.w500,
                height: 1.6428571429 * fem / fem,
                letterSpacing: 0.5 * fem,
                color: const Color(0xff78858f),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 9 * fem,
      ),
      Container(
        // group33621g9U (102:927)
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12 * fem),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://th.bing.com/th/id/R.272a7788575b354074a9fb5b429afd39?rik=1AYBEj844F8C2A&pid=ImgRaw&r=0',
            ),
          ),
        ),
        child: Align(
          // rectangle421hY (102:929)
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 99.3 * fem,
            height: 7 * fem,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12 * fem),
                color: const Color(0xff407bff),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget lastRowProject() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        height: 25 * fem,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // group336274vi (102:939)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 23.31 * fem, 0 * fem),
              width: 66.2 * fem,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0x33407bff),
                borderRadius: BorderRadius.circular(9 * fem),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x19000000),
                    offset: Offset(0 * fem, 2 * fem),
                    blurRadius: 8 * fem,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'EdTech',
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontSize: 14 * fem,
                    fontWeight: FontWeight.w500,
                    height: 1.3025 * fem / fem,
                    color: const Color(0xff0052ce),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        // kinvestorsDh8 (102:931)
        margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 27.96 * fem, 0 * fem),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14 * fem,
              fontWeight: FontWeight.w500,
              height: 1.3025 * fem / fem,
              color: const Color(0xff78858f),
            ),
            children: [
              TextSpan(
                text: '117K',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 14 * fem,
                  fontWeight: FontWeight.w500,
                  height: 1.3025 * fem / fem,
                  color: const Color(0xff0052ce),
                ),
              ),
              const TextSpan(
                text: ' investor’s',
              ),
            ],
          ),
        ),
      ),
      Container(
        // daysleft7AE (102:932)
        margin: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14 * fem,
              fontWeight: FontWeight.w500,
              height: 1.3025 * fem / fem,
              color: const Color(0xff78858f),
            ),
            children: [
              TextSpan(
                text: '28',
                style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 14 * fem,
                  fontWeight: FontWeight.w500,
                  height: 1.3025 * fem / fem,
                  color: const Color(0xff0052ce),
                ),
              ),
              const TextSpan(
                text: ' days left',
              ),
            ],
          ),
        ),
      ),
    ],
  );
}


// Padding _project(List<Project> filteredProjects, String selectedCategory) {
//   return Padding(
//     padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               CategoryButton(
//                 title: 'Education',
//                 selected: selectedCategory == 'Education',
//                 onPressed: () =>
//                     _InvestState().filterProjectsByCategory('Education'),
//               ),
//               CategoryButton(
//                 title: 'Business',
//                 selected: selectedCategory == 'Business',
//                 onPressed: () =>
//                     _InvestState().filterProjectsByCategory('Business'),
//               ),
//               CategoryButton(
//                 title: 'Healthcare',
//                 selected: selectedCategory == 'Healthcare',
//                 onPressed: () =>
//                     _InvestState().filterProjectsByCategory('Healthcare'),
//               ),
//               CategoryButton(
//                 title: 'Coffee',
//                 selected: selectedCategory == 'Healthcare',
//                 onPressed: () =>
//                     _InvestState().filterProjectsByCategory('Healthcare'),
//               ),
//               CategoryButton(
//                 title: 'Healthcare',
//                 selected: selectedCategory == 'Healthcare',
//                 onPressed: () =>
//                     _InvestState().filterProjectsByCategory('Healthcare'),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: filteredProjects.length,
//             itemBuilder: (context, index) {
//               final project = filteredProjects[index];
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: MaterialButton(
//                   onPressed: () {
//                     // Handle project details
//                   },
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Image.asset(
//                           'images/f.png', // Replace with your project image
//                           height: 100,
//                           width: 100,
//                         ),
//                       ),
//                       Expanded(
//                         flex: 2,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               project.title,
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             LinearProgressIndicator(
//                               value: project.progress / 100,
//                             ),
//                             const SizedBox(height: 8),
//                             Text('Target: \$${project.target}'),
//                             const SizedBox(height: 8),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Handle invest button click
//                               },
//                               child: const Text('Invest'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),

//       ],
//     ),
//   );
// }

// Padding _mywallet() {
//   return Padding(
//     padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//     child: Column(
//       children: [
//         SizedBox(
//           height: 142,
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: walletList.length,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) => InkWell(
//               onTap: () {},
//               child: Container(
//                 padding: const EdgeInsets.all(12),
//                 margin: const EdgeInsets.only(right: 10),
//                 height: 142,
//                 width: 300,
//                 decoration: BoxDecoration(
//                     color: HexColor('${walletList[index].color}')
//                         .withOpacity(0.12),
//                     borderRadius: BorderRadius.circular(16)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         CircleAvatar(
//                           radius: 24,
//                           backgroundImage:
//                               NetworkImage('${walletList[index].iconUrl}'),
//                         ),
//                         const SizedBox(width: 8),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               '${walletList[index].symbol?.name}',
//                               style: GoogleFonts.poppins(
//                                   fontSize: 16, fontWeight: FontWeight.w600),
//                             ),
//                             Text(
//                               '${walletList[index].name}',
//                               style: GoogleFonts.poppins(
//                                   fontSize: 14, fontWeight: FontWeight.w400),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     const SizedBox(height: 12),
//                     Text(
//                       '${walletList[index].price}',
//                       style: GoogleFonts.poppins(
//                           fontSize: 18, fontWeight: FontWeight.w600),
//                     ),
//                     const SizedBox(height: 6),
//                     Row(
//                       children: [
//                         const Icon(
//                           Iconsax.arrow_up_1,
//                           size: 18,
//                         ),
//                         const SizedBox(width: 4),
//                         Text(
//                           '${walletList[index].change}',
//                           style: GoogleFonts.poppins(
//                               fontSize: 12, fontWeight: FontWeight.w400),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//     ),
//       ],
//     ),
//   );
// }
