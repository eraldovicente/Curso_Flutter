class Cast {

  List<Actor> actores = new List();

  Cast.fromJsonList( List<dynamic> jsonList ) {

    if( jsonList == null ) return;

    jsonList.forEach((item) {
      
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }
}

class Actor {
  int castId;
  String character;
  String creditId;
  String name;
  int gender;
  int id;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.name,
    this.gender,
    this.id,
    this.order,
    this.profilePath,
  });

  Actor.fromJsonMap( Map<String, dynamic> json ) {

    castId      = json['cast_id'];
    character   = json['character'];
    creditId    = json['credit_id'];
    name        = json['name'];
    gender      = json['gender'];
    id          = json['id'];
    order       = json['order'];
    profilePath = json['profile_path'];
  }

   getFoto() {

    if ( profilePath == null ) {
      return 'https://radaraereo.com.br/forum/styles/canvas/theme/images/no_avatar.jpg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }

}