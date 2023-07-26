var runner = require("child_process");

var phpScriptPath = "C:\Users\BN GAMING\Desktop\IPL-Indian-Premier-League-cricket-dbms-mini-project-master\index.php";
var argsString = "value1,value2,value3";
runner.exec("php " + phpScriptPath + " " +argsString, function(err, phpResponse, stderr) {
 if(err) 
   console.log(err); /* log error */
   console.log( phpResponse );
});