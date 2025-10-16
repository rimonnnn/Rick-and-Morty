class Characters {
  final Info info;
  final List<Results> results;

  Characters({required this.info, required this.results});

  factory Characters.fromJson(Map<String, dynamic> json) {
    return Characters(
      info: Info.fromJson(json['info']),
      results: (json['results'] as List)
          .map((item) => Results.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'info': info.toJson(),
    'results': results.map((v) => v.toJson()).toList(),
  };
}

class Info {
  final int count;
  final int pages;
  final String next;
  final String? prev;

  Info({
    required this.count,
    required this.pages,
    required this.next,
    this.prev,
  });

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    count: json['count'],
    pages: json['pages'],
    next: json['next'],
    prev: json['prev'],
  );

  Map<String, dynamic> toJson() => {
    'count': count,
    'pages': pages,
    'next': next,
    'prev': prev,
  };
}

class Results {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Origin location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  Results({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    id: json['id'],
    name: json['name'],
    status: json['status'],
    species: json['species'],
    type: json['type'],
    gender: json['gender'],
    origin: Origin.fromJson(json['origin']),
    location: Origin.fromJson(json['location']),
    image: json['image'],
    episode: List<String>.from(json['episode']),
    url: json['url'],
    created: json['created'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'status': status,
    'species': species,
    'type': type,
    'gender': gender,
    'origin': origin.toJson(),
    'location': location.toJson(),
    'image': image,
    'episode': episode,
    'url': url,
    'created': created,
  };
}

class Origin {
  final String name;
  final String url;

  Origin({required this.name, required this.url});

  factory Origin.fromJson(Map<String, dynamic> json) =>
      Origin(name: json['name'], url: json['url']);

  Map<String, dynamic> toJson() => {'name': name, 'url': url};
}
