EDITOR = "vi";
host = db.serverStatus().host;

prompt = function () {
  return db + "@" + host + "$ ";
};
