import 'package:flutter/material.dart';
import 'package:app_oxkintok/generated/l10n.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context)!.planVisitaOxkintok,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 20)),
        backgroundColor: Color(0xFF2F9D70),
        elevation: 8,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, size: 22, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _buildRecommendations(context),
    );
  }

  Widget _buildRecommendations(BuildContext context) {
    return _buildExpandableList([
      {
        'title': S.of(context)!.daysAndHours,
        'icon': Icons.access_time,
        'content': [
          S.of(context)!.recommendation1,
          S.of(context)!.recommendation2,
          S.of(context)!.recommendation3
        ]
      },
      {
        'title': S.of(context)!.bestTimeToVisit,
        'icon': Icons.sunny,
        'content': [
          S.of(context)!.recommendation4,
          S.of(context)!.recommendation5,
          S.of(context)!.recommendation6
        ]
      },
      {
        'title': S.of(context)!.transport,
        'icon': Icons.directions_car,
        'content': [
          S.of(context)!.recommendation7,
          S.of(context)!.recommendation8,
          S.of(context)!.recommendation9
        ]
      },
      {
        'title': S.of(context)!.weather,
        'icon': Icons.wb_sunny,
        'content': [
          S.of(context)!.recommendation10,
          S.of(context)!.recommendation11,
          S.of(context)!.recommendation12
        ]
      },
      {
        'title': S.of(context)!.localGuides,
        'icon': Icons.person,
        'content': [
          S.of(context)!.recommendation13,
          S.of(context)!.recommendation14,
          S.of(context)!.recommendation15
        ]
      },
      {
        'title': S.of(context)!.nearbyAttractions,
        'icon': Icons.place,
        'content': [
          S.of(context)!.recommendation16,
          S.of(context)!.recommendation17,
          S.of(context)!.recommendation18
        ]
      },
      {
        'title': S.of(context)!.services,
        'icon': Icons.local_dining,
        'content': [
          S.of(context)!.recommendation19,
          S.of(context)!.recommendation20,
          S.of(context)!.recommendation21
        ]
      },
      {
        'title': S.of(context)!.respectSite,
        'icon': Icons.security,
        'content': [
          S.of(context)!.recommendation22,
          S.of(context)!.recommendation23
        ]
      },
    ]);
  }

  Widget _buildExpandableList(List<Map<String, dynamic>> items) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 12.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 8,
            shadowColor: Colors.black.withOpacity(0.15),
            child: ExpansionTile(
              leading: Icon(
                items[index]['icon'],
                color: Color(0xFF2F9D70),
                size: 30,
              ),
              title: Text(
                items[index]['title']!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2F9D70),
                ),
              ),
              children: [
                Column(
                  children: List.generate(items[index]['content']!.length,
                      (subIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: _buildRecommendationList(
                          items[index]['content']![subIndex]),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildRecommendationList(String content) {
    List<String> points =
        content.split('.').where((point) => point.trim().isNotEmpty).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: points.map((point) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: [
              Icon(Icons.check_circle, color: Color(0xFF2F9D70), size: 18),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  point.trim() + (point.isNotEmpty ? '.' : ''),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.6,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
