class Todo{
  var id;
  var title;
  var description;
  var created;
  var isdone;

  Todo({this.id,this.title,this.description,this.created,this.isdone});

  Todo fromJson(Map<String,dynamic> json)=>Todo(
    created: json['date'].toString(),
    title: json['title'],
    description: json['description'],
    id: json['id'],
    isdone: json['isdone']
  );

  Map<String,dynamic> toJson() => {
    "id":id,
    "title":title,
    "description":description,
    "date":created.toUtc(),
    "isdone":isdone
  };

}