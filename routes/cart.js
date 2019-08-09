//创建express模块1111
const express=require('express');
//express下创建购物车路由器    
var Cart=express.Router();
//引入连接池
var pool=require('../pool/pool.js');
//引入session模块
 //配置session

   //登录后查看自己购物车的商品
 Cart.get("/cart",(req,res)=>{    //注册的时候往购物车数据表添加一个uid
   var aa=req.query.id;
    console.log(aa);
    //1:参数(无参数)
      var uid = req.session.uid;
    // console.log(uid+'niha');    //登录前
    if(!uid){
       res.send({code:-1,msg:"请先登录！"});
      return;
    }
    //2:sql  //传一个uid =  一个值 1  数据库只有1    //把session的uid存在数据库中当前的用户
    var sql = "SELECT * FROM wy_cart WHERE id=?";  //这里找不到数组
    pool.query(sql,[aa],(err,result)=>{
      console.log(result)
      if(err)throw err;
      res.send({code:1,data:result})
    })
    //3:json
  })
  
    //加入购物车   //lid   price  size  标题  小图片
    Cart.get('/add',function(req,res){
      var obj1=req.query;
      var id=req.query.id;
      var lid=req.query.lid;
      var model=req.query.model;
      var model2=req.query.model2;
      var price=req.query.price;
      var details_img=req.query.details_img;
      console.log(obj1);
      console.log(uid+'1111oo');
      var uid=req.session.uid;
      if(!uid){
        res.send({code:-1,msg:"请先登录！"});
        return;
      }   //INSERT INTO wy_cart VALUES(NULL,?,?,?,?,?,?) //id,lid,model,model2,price,details_img
      pool.query('INSERT INTO wy_cart SET?',[obj1],function(err,result){
        if(err) throw err;
        if(result.affectedRows>0){
      res.send({code:1,msg:'加入购物车成功'});
     }else{
      res.send('0');
     }
      })
    });
   
    //功能四:删除购物车中商品
    Cart.get("/delItem",(req,res)=>{
  //1:参数购物车id
  var id = req.query.lid;
  //2:sql 删除指定数据
  var sql = "DELETE FROM wy_cart WHERE lid = ?";
  //3:json
  pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
    console.log(result);
    res.send({code:1,msg:"删除成功"});
  })
});
//导出购物车路由器对象   /shopping
module.exports=Cart;

