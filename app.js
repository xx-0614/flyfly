const express=require('express');
var server=express();
//引入路由器
var productRouter=require('./routes/index.js')
server.listen(8080);

server.use(cors({
    origin:"http://127.0.0.1:5500"
}))
//使用body-parser中间件将post请求的数据格式化为对象
server.use(bodyParser.urlencoded({
    extended:false
    
    }));
//托管静态资源到public下
server.use(express.static('public'));
//使用路由器(挂载)
server.use('/product',productRouter);

