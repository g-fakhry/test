import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'my-app',
  directives: [coreDirectives, formDirectives],
  templateUrl: 'app_component.html'
)
class AppComponent {
  var numValue = 0;
  var list ;
  var show = false;
  var error = false ;

  void showTable(val) {
    var x = int.tryParse(val);
    if (x != null) {
      if(x <= 100 || x >= 2) {
        numValue = x;
        list = List<int>.generate(x, (i) => i + 1);
        error = false ;
        show = true;
      }
    }
     else {
      show = false;
      error = true;
    }
  }

  getAlphabet(index) {
    if(index < 27) {
      return String.fromCharCode(index+64);
    } else if ( index % 26 == 0) {
      return getAlphabet((index/26).floor()-1) + 'Z';
    } else {
      return getAlphabet((index / 26).floor()) + '' + getAlphabet(index % 26);
    }
  }

  getBackgroundColor(index)
  {
    var range = (numValue*2)-2;
    var gradient = ((index-1)*255/range).floor() ;
    gradient = (255 - gradient).toString();
    return 'rgb(255,'+ gradient + ',' + gradient + ')';
  }

}

