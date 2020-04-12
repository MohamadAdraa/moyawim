import 'package:flutter/material.dart';
import 'package:two/Data.dart';
import 'package:two/Results_Page/Results_Page.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My app",
    home: new SearchPage(),
  ));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Data extends SearchDelegate<String> {
  final jobList = jobsList;
  var searchHistory = recentSearchHistory;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return ResultsPage(
      jobName: query,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = query.isEmpty
        ? searchHistory
        : jobList.where((s) => s.startsWith(query)).toList();
    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            showResults(context);
            query = suggestion[index];
          },
          leading: Icon(Icons.verified_user),
          title: RichText(
            text: TextSpan(
                text: suggestion[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                      text: suggestion[index].substring(query.length),
                      style: TextStyle(color: Colors.grey, fontSize: 18))
                ]),
          )),
      itemCount: suggestion.length,
    );
  }
}
