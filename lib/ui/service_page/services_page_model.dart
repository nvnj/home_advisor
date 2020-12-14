/// next : 1
/// previous : 1
/// results : [{"id":3,"name":"Kitchen Hood","name_ar":"شفاط المطبخ","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/service/icons/download_1.png","sub_category":{"id":1,"name":"Cleaning","name_ar":"تنظيف","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png.png","banner":"https://home-advisor-app.herokuapp.com/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_gVFgGds.jpg","category":{"id":2,"name":"Maintenance","name_ar":"اعمال صيانة","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/category/icons/232-2328152_engineer-engineer-icon-png-transparent-png_11V7RRn.png","banner":""}}},null]

class ServicesPageModel {
  int _next;
  int _previous;
  List<Serve> _results;

  int get next => _next;
  int get previous => _previous;
  List<Serve> get results => _results;

  ServicesPageModel({int next, int previous, List<Serve> results}) {
    _next = next;
    _previous = previous;
    _results = results;
  }

  ServicesPageModel.fromJson(dynamic json) {
    _next = json["next"];
    _previous = json["previous"];
    if (json["results"] != null) {
      _results = [];
      json["results"].forEach((v) {
        _results.add(Serve.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["next"] = _next;
    map["previous"] = _previous;
    if (_results != null) {
      map["results"] = _results.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 3
/// name : "Kitchen Hood"
/// name_ar : "شفاط المطبخ"
/// description : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"
/// description_ar : "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني"
/// icon : "https://home-advisor-app.herokuapp.com/media/service/icons/download_1.png"
/// sub_category : {"id":1,"name":"Cleaning","name_ar":"تنظيف","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png.png","banner":"https://home-advisor-app.herokuapp.com/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_gVFgGds.jpg","category":{"id":2,"name":"Maintenance","name_ar":"اعمال صيانة","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/category/icons/232-2328152_engineer-engineer-icon-png-transparent-png_11V7RRn.png","banner":""}}

class Serve {
  int _id;
  String _name;
  String _nameAr;
  String _description;
  String _descriptionAr;
  String _icon;
  SubCategory _subCategory;

  int get id => _id;
  String get name => _name;
  String get nameAr => _nameAr;
  String get description => _description;
  String get descriptionAr => _descriptionAr;
  String get icon => _icon;
  SubCategory get subCategory => _subCategory;

  Serve(
      {int id,
      String name,
      String nameAr,
      String description,
      String descriptionAr,
      String icon,
      SubCategory subCategory}) {
    _id = id;
    _name = name;
    _nameAr = nameAr;
    _description = description;
    _descriptionAr = descriptionAr;
    _icon = icon;
    _subCategory = subCategory;
  }

  Serve.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _nameAr = json["name_ar"];
    _description = json["description"];
    _descriptionAr = json["description_ar"];
    _icon = json["icon"];
    _subCategory = json["sub_category"] != null
        ? SubCategory.fromJson(json["sub_category"])
        : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["name_ar"] = _nameAr;
    map["description"] = _description;
    map["description_ar"] = _descriptionAr;
    map["icon"] = _icon;
    if (_subCategory != null) {
      map["sub_category"] = _subCategory.toJson();
    }
    return map;
  }
}

/// id : 1
/// name : "Cleaning"
/// name_ar : "تنظيف"
/// description : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"
/// description_ar : "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني"
/// icon : "https://home-advisor-app.herokuapp.com/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png.png"
/// banner : "https://home-advisor-app.herokuapp.com/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_gVFgGds.jpg"
/// category : {"id":2,"name":"Maintenance","name_ar":"اعمال صيانة","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/category/icons/232-2328152_engineer-engineer-icon-png-transparent-png_11V7RRn.png","banner":""}

class SubCategory {
  int id;
  String name;
  String nameAr;
  String description;
  String descriptionAr;
  String icon;
  String banner;
  Category category;

  SubCategory(
      {this.id,
      this.name,
      this.nameAr,
      this.description,
      this.descriptionAr,
      this.icon,
      this.banner,
      this.category});

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      id: json['id'],
      name: json['name'],
      nameAr: json['name_ar'],
      description: json['description'],
      descriptionAr: json['description_ar'],
      icon: json['icon'],
      banner: json['banner'],
      category: json['category'] != null
          ? new Category.fromJson(json['category'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['description'] = this.description;
    data['description_ar'] = this.descriptionAr;
    data['icon'] = this.icon;
    data['banner'] = this.banner;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    return data;
  }
}

/// id : 2
/// name : "Maintenance"
/// name_ar : "اعمال صيانة"
/// description : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"
/// description_ar : "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني"
/// icon : "https://home-advisor-app.herokuapp.com/media/category/icons/232-2328152_engineer-engineer-icon-png-transparent-png_11V7RRn.png"
/// banner : ""

class Category {
  int id;
  String name;
  String nameAr;
  String description;
  String descriptionAr;
  String icon;
  String banner;

  Category(
      {this.id,
      this.name,
      this.nameAr,
      this.description,
      this.descriptionAr,
      this.icon,
      this.banner});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      nameAr: json['name_ar'],
      description: json['description'],
      descriptionAr: json['description_ar'],
      icon: json['icon'],
      banner: json['banner'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['description'] = this.description;
    data['description_ar'] = this.descriptionAr;
    data['icon'] = this.icon;
    data['banner'] = this.banner;
    return data;
  }
}
