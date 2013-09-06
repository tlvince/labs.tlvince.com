var connect = require('connect'),
    port = process.env.PORT || 3000,
    oneDay = 86400000;

var build = __dirname + '/build';

connect.createServer(
  connect.compress(),
  connect.logger('dev'),
  connect.favicon(build + '/favicon.ico'),
  connect.static(build, { maxAge: oneDay })
).listen(port);
