import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: researchTF(),
    );
  }
}

class researchTF extends StatelessWidget {
  const researchTF({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 175,
        ),
        Center(
          child: Container(
            width: 300,
            height: 35,
            child: AppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Color.fromARGB(255, 162, 163, 162),
              actions: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.5, left: 25),
                      child: Text(
                        'search...',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    IconButton(
                        padding: EdgeInsets.only(right: 260),
                        onPressed: () {
                          showSearch(
                            context: context,
                            delegate: CustomSearchDelegate(),
                          );
                        },
                        icon: const Icon(
                          Icons.search,
                          size: 20,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'kasbah of algiers',
    'Notre Dame Afrique',
    'Botanical Garden of El-Hamma',
    'Memorial of Martyrs ',
    'Le Bastion',
    ' Casbah Museum',
    'Algiers corniche',
    'Bab el Oued Beach',
    'National Museum of Fine Arts of Algiers',
    'Algiers Waterfront',
    'Bardo Museum',
    'Cape Djinet Beach',
    'Tamentfoust',
    'Boumerdes cornich',
    'Cevital paradise Beach ',
    'Corso Sablette',
    'Soumàa Forest',
    'Dellys old town',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var places in searchTerms) {
      if (places.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(places);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var places in searchTerms) {
      if (places.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(places);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
