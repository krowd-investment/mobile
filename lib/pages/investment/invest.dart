import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:krowd_invesment_footer/config/ultility.dart';
import 'package:krowd_invesment_footer/data/wallet.dart';

class Invest extends StatefulWidget {
  const Invest({super.key});

  @override
  _InvestState createState() => _InvestState();
}
String selectedCategory = '';

  List<Project> projects = [
    Project(
      title: 'Project 1',
      category: 'Education',
      progress: 75,
      target: '100,000',
    ),
    Project(
      title: 'Project 2',
      category: 'Business',
      progress: 50,
      target: '200,000',
    ),
    Project(
      title: 'Project 3',
      category: 'Healthcare',
      progress: 30,
      target: '150,000',
    ),
  ];

  List<Project> filteredProjects = [];

class _InvestState extends State<Invest> {

  void filterProjectsByCategory(String category) {
    setState(() {
      selectedCategory = category;
      if (category.isEmpty) {
        filteredProjects = projects;
      } else {
        filteredProjects = projects.where((project) => project.category == category).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    filteredProjects = projects;
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crowd Funding'),
      ),
      body: const SafeArea(
        maintainBottomViewPadding: true,
        child: Column(
          children: [
            // _project(filteredProjects, selectedCategory),
          ],
        ),
      ),
    );
  }
}



Padding _project(List<Project> filteredProjects, String selectedCategory){
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryButton(
                  title: 'Education',
                  selected: selectedCategory == 'Education',
                  onPressed: () => _InvestState().filterProjectsByCategory('Education'),
                ),
                CategoryButton(
                  title: 'Business',
                  selected: selectedCategory == 'Business',
                  onPressed: () => _InvestState().filterProjectsByCategory('Business'),
                ),
                CategoryButton(
                  title: 'Healthcare',
                  selected: selectedCategory == 'Healthcare',
                  onPressed: () => _InvestState().filterProjectsByCategory('Healthcare'),
                ),
                CategoryButton(
                  title: 'Coffee',
                  selected: selectedCategory == 'Healthcare',
                  onPressed: () => _InvestState().filterProjectsByCategory('Healthcare'),
                ),
                CategoryButton(
                  title: 'Healthcare',
                  selected: selectedCategory == 'Healthcare',
                  onPressed: () => _InvestState().filterProjectsByCategory('Healthcare'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProjects.length,
              itemBuilder: (context, index) {
                final project = filteredProjects[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {
                      // Handle project details
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/f.png', // Replace with your project image
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                project.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 8),
                              LinearProgressIndicator(
                                value: project.progress / 100,
                              ),
                              const SizedBox(height: 8),
                              Text('Target: \$${project.target}'),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle invest button click
                                },
                                child: const Text('Invest'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
}


Padding _mywallet() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
    child: Column(
      children: [
        SizedBox(
          height: 142,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: walletList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(right: 10),
                height: 142,
                width: 300,
                decoration: BoxDecoration(
                    color: HexColor('${walletList[index].color}')
                        .withOpacity(0.12),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage:
                              NetworkImage('${walletList[index].iconUrl}'),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${walletList[index].symbol?.name}',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '${walletList[index].name}',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '${walletList[index].price}',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Iconsax.arrow_up_1,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${walletList[index].change}',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}


class CategoryButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onPressed;

  const CategoryButton({super.key,
    required this.title,
    required this.selected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: selected ? Colors.blue : null,
      ),
      child: Text(title),
    );
  }
}

class Project {
  final String title;
  final String category;
  final int progress;
  final String target;

  Project({
    required this.title,
    required this.category,
    required this.progress,
    required this.target,
  });
}
