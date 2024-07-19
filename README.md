# json_parsing


## What is JSON?
- JSON stands for ```JavaScript Object Notation```
- ```JSON is a lightweight format for storing and transporting data```
- JSON is often used when data is sent from a server to a web page
- JSON is "self-describing" and easy to understand

### Example :
```
{
"employees": [
    {"firstName":"John", "lastName":"Doe"},
    {"firstName":"Anna", "lastName":"Smith"},
    {"firstName":"Peter", "lastName":"Jones"}
  ]
}
```
## How to Access Json Data Using Provider :
### Provider class

```base

class HomeProvider extends ChangeNotifier {
  List<PhotoModel> jsonDataList = [];

  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/jsonData.json');
    List jsonList = jsonDecode(json);
    return jsonList;
  }

  Future<void> fromList() async {
    List jsonList = await jsonParsing();
    jsonDataList = jsonList.map((e) => PhotoModel.fromMap(e)).toList();
    notifyListeners();
  }

  HomeProvider() {
    fromList();
  }
}

```

### Model class

```bash
class PhotoModel {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  PhotoModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory PhotoModel.fromMap(Map m1) {
    return PhotoModel(
      albumId: m1['albumId'],
      id: m1['id'],
      title: m1['title'],
      url: m1['url'],
      thumbnailUrl: m1['thumbnailUrl'],
    );
  }
}

```
### Show Data on Screen :

```bash

 body: ListView.builder(
        itemCount: homeProvider.jsonDataList.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              homeProvider.jsonDataList[index].url,
            ),
          ),
          title: Text(
            homeProvider.jsonDataList[index].title,
          ),
        ),
      ),

```

</div>

 <h1 align="center"> 8.1 What is JSON & JSON Parsing ? </h1>

<div align="center">
  <img src="https://github.com/user-attachments/assets/11583ef9-d71c-4302-9f19-5fe87de74388" height ="550">

</div>

