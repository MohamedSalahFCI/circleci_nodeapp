var http = require('http');

var server = http.createServer(function(request, response) {

    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end("Hello World ya salaaaaaah! from machine 164.90.217.117");

});

var port = 8080;
server.listen(port);

console.log("Server running at http://localhost:%d", port);
