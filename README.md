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

### Provider class

```base

class UserProvider extends ChangeNotifier {
  List<UserModel> userList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/userData.json');
    List user = jsonDecode(json);
    userList = user
        .map(
          (e) => UserModel.fromJson(e),
        )
        .toList();
  }

  UserProvider() {
    jsonParsing();
  }
}

```

### Model class

```bash

class UserModel {
  late int id;
  late String name, username, email, phone, website;
  late Address address;
  late Company company;

  UserModel(
      {required this.id,
      required this.name,
      required this.phone,
      required this.email,
      required this.username,
      required this.website,
      required this.address,
      required this.company});

  factory UserModel.fromJson(Map m1) {
    return UserModel(
      id: m1['id'],
      name: m1['name'],
      phone: m1['phone'],
      email: m1['email'],
      username: m1['username'],
      website: m1['website'],
      address: Address.fromJson(m1['address']),
      company: Company.fromJson(m1['company']),
    );
  }
}

class Address {
  late String street, suite, city, zipcode;
  late Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map m1) {
    return Address(
      street: m1['street'],
      suite: m1['suite'],
      city: m1['city'],
      zipcode: m1['zipcode'],
      geo: Geo.fromJson(
        m1['geo'],
      ),
    );
  }
}

class Geo {
  late String lat, lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.fromJson(Map m1) {
    return Geo(
      lat: m1['lat'],
      lng: m1['lng'],
    );
  }
}

class Company {
  late String name, catchPhrase, bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map m1) {
    return Company(
      name: m1['name'],
      catchPhrase: m1['catchPhrase'],
      bs: m1['bs'],
    );
  }
}


```
### Show Data on Screen :

```bash

body: ListView.builder(
        itemCount: userProvider.userList.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(userProvider.userList[index].id.toString(),style: TextStyle(fontSize: 15),),
          title: Text(userProvider.userList[index].name),
          subtitle: Text(userProvider.userList[index].address.street),
          trailing: Text(userProvider.userList[index].address.geo.lat,style: TextStyle(fontSize: 13),),
        ),
      ),

```


</div>
 <h1 align="center"> 8.2 Usre Json Data </h1>
<div align="center">
  <img src="https://github.com/user-attachments/assets/0d78106b-f6b8-4912-827c-afad71c568ea" height ="550">
</div>


</div>
 <h1 align="center"> 8.3 Json Data Parsing </h1>
<div align="center">
  <img src="https://github.com/user-attachments/assets/2d2139c5-d93f-4cf2-a5f4-27d84dfd2a97" height ="550">
    
</div>
