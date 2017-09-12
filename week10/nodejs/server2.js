var http = require('http');

var fs = require('fs'); // fs is an object

var buffer = fs.readFileSync('about.html')

var app = function(request, response) {
  //todo
  //req.url
  // if the path is /about
    if (request.url === '/about') {
      response.write(buffer);
      response.end();
    } else {
        response.write('/index')
        response.end()
  }
}

var server = http.createServer(app);
server.listen(9000);
