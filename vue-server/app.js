const express=require('express');
const bodyParser = require('body-parser');
//引入路由器
var index=require('./routes/index.js');
var three=require('./routes/three.js');


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
server.use('/three',three);



