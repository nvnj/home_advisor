
import 'package:stacked/stacked.dart';

class PasswordChangeModel extends BaseViewModel{

  String _oldPassword='';
  String _newPassword='';
  String _confirmPassword='';
  bool _enabled = false;
  get enabled=>_enabled;

  void old(value){
    _oldPassword=value;
  }
  void newPass(value){
    _newPassword=value;
  }

  void confirmPass(value){
    _confirmPassword=value;
    buttonEnable();
  }
  void buttonEnable(){
    if(_newPassword.isNotEmpty&&_newPassword==_confirmPassword&&_oldPassword.isNotEmpty)
      _enabled=true;
    else
      _enabled=false;
  }
  Function buttonFunction()
  {
    if(_enabled==false)
      return null;
    else
      return(){};

  }

}