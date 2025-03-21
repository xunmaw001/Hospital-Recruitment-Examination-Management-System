<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>注册</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <link rel="stylesheet" href="../../xznstatic/css/login.style.css">
</head>
<body>
  <div id="app">
    <div class="main">
      <h1 id="projectName"></h1>
      <div class="login-form">
        <h2>注 册</h2>
        <div class="agileits-top">
          <form class="layui-form">
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yiyuanbianhao" name="yiyuanbianhao" placeholder="请输入医院编号" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yiyuanmingcheng" name="yiyuanmingcheng" placeholder="请输入医院名称" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yuangongrenshu" name="yuangongrenshu" placeholder="请输入员工人数" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="yiyuanyuanzhang" name="yiyuanyuanzhang" placeholder="请输入医院院长" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="chenglikeshi" name="chenglikeshi" placeholder="请输入成立科室" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="thumbsupnum" name="thumbsupnum" placeholder="请输入赞" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 0px;">
                <input type="text" id="crazilynum" name="crazilynum" placeholder="请输入踩" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
            <div class="layui-form-item" style="margin-bottom: 0;">
              <div class="layui-input-block" style="margin-left: 0;">
                <button class="layui-btn btn-submit layui-btn-fluid layui-btn-primary" lay-submit lay-filter="register">注册</button>
              </div>
            </div>
            <div class="wthree-text" style="margin-top: 1em">
              <ul>
                <li><a href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a></li>
              </ul>
              <div class="clear"></div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>
  <script src="../../js/validate.js"></script>

  <script>
    layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
      var layer = layui.layer;
      var element = layui.element;
      var carousel = layui.carousel;
      var form = layui.form;
      var http = layui.http;
      var jquery = layui.jquery;

      var tablename = http.getParam('tablename');

      jquery('#projectName').text(projectName);
              
      // 注册
      form.on('submit(register)', function(data) {
        data = data.field;
        if(!data.yiyuanbianhao){
          layer.msg('医院编号不能为空', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!data.yiyuanmingcheng){
          layer.msg('医院名称不能为空', {
            time: 2000,
            icon: 5
          });
          return false
        }
                                                                        if(!isIntNumer(data.yuangongrenshu)){
          layer.msg('员工人数应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                                                                        if(!isIntNumer(data.thumbsupnum)){
          layer.msg('赞应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!isIntNumer(data.crazilynum)){
          layer.msg('踩应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        http.requestJson(tablename + '/register', 'post', data, function(res) {
          layer.msg('注册成功', {
            time: 2000,
            icon: 6
          },function(){
            // 路径访问设置
            window.location.href = '../login/login.jsp';
          });
        });
        return false
      });
    });
  </script>
</body>
</html>
