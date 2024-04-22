import 'package:flutter/material.dart';
import 'package:flutter_ui_study/listview_20240421/animal_page.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

//상태가 변경되어야 하므로 StatefulWidget 으로 생성
class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalImagePath = [
    'image/bear.png',
    'image/camel.png',
    'image/deer.png',
    'image/fox.png',
    'image/kangaroo.png',
    'image/koala.png',
    'image/lion.png',
    'image/tiger.png'
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea'
  ];

  //List들로 새로운 List를 생성시킴
  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
          animalName[index], animalLocation[index], animalImagePath[index]));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Listview')),
        body: ListView.builder(
            itemCount: animalData.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(animalData[index].name),
                  leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(animalData[index].imgPath)),
                  onTap: () {
                    //클릭시 AnimalPage 페이지로 이동 하고 인자값으로 선택한 animalData[index] 객체를 넘긴다.
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            AnimalPage(animal: animalData[index])));
                    //debugPrint(animalData[index].name); Console에 표시
                  },
                ),
              );
            }));
  }
}
