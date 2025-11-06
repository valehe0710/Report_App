class Report {
  final String user;
  final String location;
  final String image;
  final String description;
  final String time;

  Report({
    required this.user,  
    required this.location,
    required this.image,
    required this.description,
    required this.time,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      user: json['user'],
      location: json['location'],
      image: json['image'],
      description: json['description'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() => {
        'user': user,
        'location': location,
        'image': image,
        'description': description,
        'time': time,
      };
}
