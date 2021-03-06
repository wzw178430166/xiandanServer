const express=require("express")
//创建商品列表路由  商品列表导航   尽量一次性请求完商品列表页所需要的数据 prouct_list.html
const product=express.Router();
const pool=require("../pool/pool.js")

//服务端接口地址http://localhost:3000/details
//客户端请求时:
//http://localhost:3000/details?lid=1
product.get("/",(req,res)=>{
  var lid=req.query.lid;
 // console.log(lid,666);
  var output={
    product:{},
    productList:[],
    pics:[],
  }
  if(lid!==undefined){
    var sql1=`select * from wy_product where lid=?`;
    pool.query(sql1,[lid],(err,result)=>{
      if(err) console.log(err);
      output.product=result[0];
     // console.log(output+1);
      //var family_id=output.product["family_id"];
      var sql2=`select * from wy_index_product where laptop_list=?`;
      pool.query(sql2,[lid],(err,result)=>{
        if(err) console.log(err);
        output.productList=result;
//        console.log(output);
        var sql3=`select * from wy_laptop_pic where laptop_id=?`
        pool.query(sql3,[lid],(err,result)=>{
          if(err) console.log(err);
          output.pics=result;
//          console.log(output);
          res.send(output);
        })
      })
    })
  }else{
    res.send(output);
  }
})

     //商品列表接口
     product.get("/add",(req,res)=>{
      var sql=`SELECT details_img,subtitle,price,details,inventory_msg FROM wy_product where index_cont=5`;
  pool.query(sql,(err,result)=>{
      if(err){
     // console.log(err);
      res.send({code:0});
  }else{
      res.send(result);
     
  }
  })
  })

  //    商品的分页显示
product.get("/paging",(req,res)=>{
  //-参数
  var pno = req.query.pno;  //第几页
  var ps = req.query.pageSize;   //每页的个数
  // -设置默认值
  if(!pno){pno=1}
  if(!ps){ps=4}
  //-创建第一条 sql语句 当前页
  var obj = {code:1,msg:"查询成功"};
  var sql = "SELECT lid,price";
  sql+=" ,subtitle,details_img,details,inventory_msg";
  sql+=" FROM wy_product";
  sql+=" LIMIT ?,?";
  var off = (pno-1)*ps;  //开始页
  ps = parseInt(ps);    //整型  每页显示的行数
  pool.query(sql,[off,ps],(err,result)=>{
      if(err)throw err;
      obj.data = result;
      var sql = "SELECT count(*) AS c FROM wy_product";
      pool.query(sql,(err,result)=>{
        if(err)throw err;
        var pc = Math.ceil(result[0].c/ps);
        obj.pc = pc;   //总共有多少页
        res.send(obj);
      })
  });
});  


  //商品列表价格升序  由小到大
  product.get("/paixu",(req,res)=>{
    var sql=`SELECT * FROM wy_product ORDER BY price DESC;`;
pool.query(sql,(err,result)=>{
    if(err){
   // console.log(err);
    res.send({code:0});
}else{
    res.send(result);  
}
})
})

//商品列表价格降序   由大到小  
product.get("/paixuxiao",(req,res)=>{
  var sql=`SELECT * FROM wy_product ORDER BY price ASC;`;
pool.query(sql,(err,result)=>{
  if(err){
 // console.log(err);
  res.send({code:0});
}else{
  res.send(result);  
}
})
})
//导出商品列表路由  /product
module.exports=product;