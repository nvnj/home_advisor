import 'package:stacked/stacked.dart';

class ProfileService extends BaseViewModel {
  String _firstName = 'Ethan';
  String _lastName = 'Hunt';
  String _email = 'ethanhunt007@gmail,com';
  String _phn = '+974 9865324758';

  get name {
    return _firstName + ' ' + _lastName;
  }

  get email => _email;

  get phn => _phn;

  void setPhn(value) {
    _phn = value;
  }

  void setFirstName(value) {
    _firstName = value;
  }

  void setLastName(value) {
    _lastName = value;
  }

  void setEmail(value) {
    _email = value;
  }
}
