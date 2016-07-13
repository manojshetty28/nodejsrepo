var express = require('express');
var ip = require('ip');
var os = require('os');
var app = express();
var interfaces = os.networkInterfaces();


app.get('/',function(req,res){
var addressis = ip.address(); 
res.send("IP address of container  :  " + addressis );
});

app.listen(3000);



