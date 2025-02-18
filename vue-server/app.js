const express=require('express');
const bodyParser = require('body-parser');
//引入路由器
var index=require('./routes/index.js');
var second=require('./routes/second.js');
var three=require('./routes/three.js');
var four=require('./routes/four.js');
var five=require('./routes/five.js');
var six=require('./routes/six.js');
var eight=require('./routes/eight.js');
var details=require('./routes/details.js');
var search=require('./routes/search.js');


const cors=require("cors");
var server=express();
server.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}));
server.listen(3000);
//使用body-parser中间件将post请求的数据格式化为对象
server.use(bodyParser.urlencoded({
    extended:false
    
    }));
//托管静态资源到public下
server.use(express.static('public'));
//使用路由器(挂载)
server.use('/index',index);
server.use('/second',second);
server.use('/three',three);
server.use('/four',four);
server.use('/five',five);
server.use('/six',six);
server.use('/eight',eight);
server.use('/details',details);
server.use('/search',search);



