
class Cast {
  List<Actor> actors = new List();

  Cast.fromJsonList(List<dynamic> jsonList) {

    if (jsonList == null) return;

    jsonList.forEach((item) {
      final actor = Actor.fromJsonMap(item);
      actors.add(actor);
    });
  }
}


class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.gender,
    this.id,
    this.name,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  Actor.fromJsonMap(Map<String, dynamic> json) {
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    gender = json['gender'];
    id = json['id'];
    name = json['name'];
    order = json['order'];
    profilePath = json['profile_path'];
  }

  getPhoto() {

    if (profilePath != null) {
      return "https://image.tmdb.org/t/p/w500/$profilePath";
    } else {
      return 'https://www.cnij.com/wp-content/uploads/2018/09/not-available.jpg';
    }

  }
}
