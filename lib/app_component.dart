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

  void showTable() {
    if(numValue > 100 || numValue < 2) {
      error = true ;
      show = false;
    } else {
      list = List<int>.generate(numValue, (i) => i + 1);
      show = true;
      error = false;
    }
  }

  getAlphabet(i) {
    if(i < 27) {
      return String.fromCharCode(i+64);
    } else if ( i< 53) {
      return 'A' + String.fromCharCode(i - 26 +64);
    } else if ( i < 79) {
      return 'B' + String.fromCharCode(i - 52 +64);
    } else return 'C' + String.fromCharCode(i - 78 +64);
  }

  highlightRowCol(i) {
    var colIndex = i-1;
    var rowIndex = i%numValue;

    // not sure if this is a requirement in the test as it was not specifically mentioned in the description
  }
}

