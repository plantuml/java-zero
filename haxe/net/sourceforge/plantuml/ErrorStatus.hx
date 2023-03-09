// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class ErrorStatus {
    public var noData: Bool;
    public var hasErrors: Bool;
    public var hasOk: Bool;



    // net.sourceforge.plantuml.ErrorStatus()
    public function new() {
this.noData = true;
    }




    // init()[14]
    public static function init_0(): ErrorStatus {
return new ErrorStatus();
    }


    // goWithError()[22]
    public function goWithError_0(): Void {
this.hasErrors = true;
this.noData = false;
    }


    // goOk()[27]
    public function goOk_0(): Void {
this.hasOk = true;
this.noData = false;
    }


    // hasError()[32]
    public function hasError_0(): Bool {
return hasErrors;
    }


    // isNoData()[36]
    public function isNoData_0(): Bool {
return noData;
    }


    // getExitCode()[40]
    public function getExitCode_0(): Int {
if (isNoData_0()) {
return 100;
}

if (hasErrors) {
return 200;
}

return 0;
    }

}
