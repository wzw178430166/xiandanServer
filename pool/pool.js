//引入mysql模块1111111
const mysql=require('mysql');
//创建连接池
var pool=mysql.createPool({
  host:'w.rdc.sae.sina.com.cn',
port:'3306',
user:'owk22kj2om',
  password:'zy44xj51jyl3152zhh15kmxyy43yz2jm0iyh1ylm',
database:'app_huiwww',
connectionLimit:20 //设置连接池的大小
});
 //冻结连接池 不能修改
  Object.freeze(pool);
//导出连接池对象
  module.exports=pool;
  //s4203306 / upDG59caBP