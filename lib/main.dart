import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';
void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet Recipe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Moons Recipe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
Widget buildRecipeCard(Recipe recipe) {
  // 1
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    // 2
    child: Padding(
      padding: const EdgeInsets.all(10.0),
     child: Column(
      // 3
      children: <Widget>[
        // 4
        Image(image: AssetImage(recipe.imageUrl)),
        // 5
        const SizedBox(
          height: 14.0,
        ),
        Text(recipe.label,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),),
      ],
    ),),
     );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(

            child: ListView.builder(
              // 5
              itemCount: Recipe.samples.length,
              // 6
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  // 8
                    onTap: () {
                      // 9
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            // 10
                            // TODO: Replace return with return RecipeDetail()
                            return  RecipeDetail(recipe: Recipe.samples[index]);;
                          },
                        ),
                      );
                    },
                 child: buildRecipeCard(Recipe.samples[index]),
                );
              },
            ),

        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
