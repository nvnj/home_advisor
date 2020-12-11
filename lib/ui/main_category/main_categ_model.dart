/// next : 1
/// previous : 1
/// results : [{"id":2,"name":"Maintenance","name_ar":"اعمال صيانة","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"https://home-advisor-app.herokuapp.com/media/category/icons/232-2328152_engineer-engineer-icon-png-transparent-png_11V7RRn.png","banner":"null","subcategory":[{"id":1,"name":"Cleaning","name_ar":"تنظيف","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png.png","banner":"/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_gVFgGds.jpg","category":2},{"id":2,"name":"Painting","name_ar":"لوحة","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png_4yTaxut.png","banner":"/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_wz2acj0.jpg","category":2},{"id":3,"name":"Gardening","name_ar":"الحدائق","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png_85nKvRa.png","banner":"/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_X72eTmn.jpg","category":2}]}]

class MainCategResponse {
  int _next;
  int _previous;
  List<MainCategory> _results;

  int get next => _next;
  int get previous => _previous;
  List<MainCategory> get results => _results;

  MainCategResponse({int next, int previous, List<MainCategory> results}) {
    _next = next;
    _previous = previous;
    _results = results;
  }

  MainCategResponse.fromJson(dynamic json) {
    _next = json["next"];
    _previous = json["previous"];
    if (json["results"] != null) {
      _results = [];
      json["results"].forEach((v) {
        _results.add(MainCategory.fromJson(v));
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

/// id : 2
/// name : "Maintenance"
/// name_ar : "اعمال صيانة"
/// description : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"
/// description_ar : "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني"
/// icon : "https://home-advisor-app.herokuapp.com/media/category/icons/232-2328152_engineer-engineer-icon-png-transparent-png_11V7RRn.png"
/// banner : "null"
/// subcategory : [{"id":1,"name":"Cleaning","name_ar":"تنظيف","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png.png","banner":"/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_gVFgGds.jpg","category":2},{"id":2,"name":"Painting","name_ar":"لوحة","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png_4yTaxut.png","banner":"/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_wz2acj0.jpg","category":2},{"id":3,"name":"Gardening","name_ar":"الحدائق","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting","description_ar":"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني","icon":"/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png_85nKvRa.png","banner":"/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_X72eTmn.jpg","category":2}]

class MainCategory {
  int _id;
  String _name;
  String _nameAr;
  String _description;
  String _descriptionAr;
  String _icon;
  String _banner;
  List<Subcategory> _subcategory;

  int get id => _id;
  String get name => _name;
  String get nameAr => _nameAr;
  String get description => _description;
  String get descriptionAr => _descriptionAr;
  String get icon => _icon;
  String get banner => _banner;
  List<Subcategory> get subcategory => _subcategory;

  MainCategory(
      {int id,
      String name,
      String nameAr,
      String description,
      String descriptionAr,
      String icon,
      String banner,
      List<Subcategory> subcategory}) {
    _id = id;
    _name = name;
    _nameAr = nameAr;
    _description = description;
    _descriptionAr = descriptionAr;
    _icon = icon;
    _banner = banner;
    _subcategory = subcategory;
  }

  MainCategory.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _nameAr = json["name_ar"];
    _description = json["description"];
    _descriptionAr = json["description_ar"];
    _icon = json["icon"];
    _banner = json["banner"];
    if (json["subcategory"] != null) {
      _subcategory = [];
      json["subcategory"].forEach((v) {
        _subcategory.add(Subcategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["name_ar"] = _nameAr;
    map["description"] = _description;
    map["description_ar"] = _descriptionAr;
    map["icon"] = _icon;
    map["banner"] = _banner;
    if (_subcategory != null) {
      map["subcategory"] = _subcategory.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1
/// name : "Cleaning"
/// name_ar : "تنظيف"
/// description : "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"
/// description_ar : "لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لصنع كتاب عينة من النوع. لقد نجا ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني"
/// icon : "/media/subcategory/icons/232-2328152_engineer-engineer-icon-png-transparent-png.png"
/// banner : "/media/service/banners/c-dustin-91AQt9p4Mo8-unsplash_1_gVFgGds.jpg"
/// category : 2

class Subcategory {
  int _id;
  String _name;
  String _nameAr;
  String _description;
  String _descriptionAr;
  String _icon;
  String _banner;
  int _category;

  int get id => _id;
  String get name => _name;
  String get nameAr => _nameAr;
  String get description => _description;
  String get descriptionAr => _descriptionAr;
  String get icon => _icon;
  String get banner => _banner;
  int get category => _category;

  Subcategory(
      {int id,
      String name,
      String nameAr,
      String description,
      String descriptionAr,
      String icon,
      String banner,
      int category}) {
    _id = id;
    _name = name;
    _nameAr = nameAr;
    _description = description;
    _descriptionAr = descriptionAr;
    _icon = icon;
    _banner = banner;
    _category = category;
  }

  Subcategory.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _nameAr = json["name_ar"];
    _description = json["description"];
    _descriptionAr = json["description_ar"];
    _icon = json["icon"];
    _banner = json["banner"];
    _category = json["category"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["name_ar"] = _nameAr;
    map["description"] = _description;
    map["description_ar"] = _descriptionAr;
    map["icon"] = _icon;
    map["banner"] = _banner;
    map["category"] = _category;
    return map;
  }
}
