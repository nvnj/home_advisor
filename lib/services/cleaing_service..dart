import 'package:home_advisor/models/cleaning_types.dart';

class CleaningCategoryService {



  List<CleaningCategory> getdifferrentTypesOfCleaningServices() {  
    List<CleaningCategory> cleaningTypes = [
      CleaningCategory(
        type: "floor cleaning",
        image:
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
      ),
      CleaningCategory(
        type: "Kitchen Hood",
        image: "https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHw%3D&w=1000&q=80",
      ),
      CleaningCategory(
        type: "floor cleaning",
        image: "https://i.pinimg.com/originals/ca/76/0b/ca760b70976b52578da88e06973af542.jpg",
      ),
      CleaningCategory(
        type: "Wall Cleaning",
        image: "https://i.pinimg.com/originals/af/8d/63/af8d63a477078732b79ff9d9fc60873f.jpg",
      ),
      CleaningCategory(
        type: "Bathroom Cleaing",
        image: "https://images.unsplash.com/photo-1503803548695-c2a7b4a5b875?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&w=1000&q=80",
      ),
    ];

    return cleaningTypes;
  }
}
