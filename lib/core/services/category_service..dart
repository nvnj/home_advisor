import 'package:home_advisor/core/models/service_types.dart';

class CategoryService {
  List<ServicesCategory> getdifferrentTypesOfServices() {
    List<ServicesCategory> types = [
      ServicesCategory(
        type: "floor cleaning",
        image:
            "https://biohomecares.com/wp-content/uploads/shutterstock_1013383711.jpg",
      ),
      ServicesCategory(
        type: "Kitchen Hood",
        image:
            "https://marketingplatform.vivial.net/sites/default/files/inline_images/kahului-hi-cabinets-2.jpg",
      ),
      ServicesCategory(
        type: "Furnitures and Carpets",
        image:
            "https://www.kiwiservices.com/images/furniture-upholstery-cleaning.jpg",
      ),
      ServicesCategory(
        type: "Wall Cleaning",
        image:
            "https://www.servicemasterclean.com/images/articles/4fc16fa6ab42461ca31221b759d5fa09.jpg",
      ),
      ServicesCategory(
        type: "Bathroom Cleaing",
        image:
            "https://www.thespruce.com/thmb/8LmztV1SC-YGc028Cxgw29VsCA8=/1885x1414/smart/filters:no_upscale()/Womancleaningbathroommirror-GettyImages-950404846-a9eea2b01ca1403eab7d8efe21bec073.jpg",
      ),
    ];

    return types;
  }
}
