/**
 * Default configuration using vim as editor.
 */
EDITOR = "vim";
host = db.serverStatus().host;

prompt = function () {
  return db + "@" + host + "$ ";
};
