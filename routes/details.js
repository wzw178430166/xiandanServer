//创建express模块
const express=require('express');
//express下创建商品详情路由器    
var details=express.Router();
//引入连接池
var pool=require('../pool/pool.js');

//商品详情轮播图
details.get("/lunbo",(req,res)=>{
  var lid=req.query.lid;
  if(lid!==undefined){
    var sql3=`select * from wy_product_pic where laptop_id=?`;
    pool.query(sql3,[lid],(err,result)=>{
      if(err) console.log(err);
      //output.pics=result;
      console.log(result);
      res.send(result);
     
    });
  }
})



details.get("/",(req,res)=>{
 //   console.log(req.query);
  var lid=req.query.lid;
 // console.log(lid);
  var output={
    products:{},
    specs:[],
    pics:[],
    size:[],
    dibu:[],
    img:[],
    velocity:[]
  }
  if(lid!==undefined){
    var sql1=`select * from wy_product where lid=?`;
    pool.query(sql1,[lid],(err,result)=>{
      if(err) console.log(err);
      output.products=result[0];
      //console.log(output);
     // var family_id=output.products["family_id"];
      var sql2=`select * from wy_meticulous where lid=?`;
      pool.query(sql2,[lid],(err,result)=>{
        if(err) console.log(err);
        output.specs=result;
        var sql4=`select yardage_a,yardage_b,yardage_c,yardage_d,yardage_e,yardage_f,yardage_g,yardage_h,yardage_i,yardage_u from wy_details_size where lid=?`;
        pool.query(sql4,[lid],(err,result)=>{
          if(err) console.log(err);
          output.size=result;
          var sql5=`select img from wy_details_pic where laptop_id=?`;
          pool.query(sql5,[lid],(err,result)=>{
            if(err) console.log(err);
            output.dibu=result;
          //  res.send(output);
          var sql6=`select img from wy_details_pic where laptop_id=?`;
          pool.query(sql6,[lid],(err,result)=>{
            if(err) console.log(err);
            output.img=result;
        //速度
        var sql7=`select yardage_a,yardage_b,yardage_c,yardage_d,yardage_e,yardage_f,yardage_g,yardage_h,yardage_i,yardage_u from wy_details_speed where lid=?`;
        pool.query(sql7,[lid],(err,result)=>{
          if(err) console.log(err);
          output.velocity=result;
          res.send(output);
        });
          });
          });
        });  
      })
    })
  }else{
    res.send(output); //如果lid没有传过来，发送的数据
  }
})

// test
details.get("/add",(req,res)=>{
  //   console.log(req.query);
     res.send('登录成功');
 })
  
//导出商品详情路由器对象   /details
module.exports=details;

