// Intersting alternative which counts commands.
// cmdCount = 1
// prompt=function () {
//  return (cmdCount++) + ' - ' + db+'> ';
// }

// Default configuartion using vim as editor and giving a more
// user friendly leftside indicator.
EDITOR="vim"
host = db.serverStatus().host;

prompt = function() {
             return db+"@"+host+"$ ";
         }
