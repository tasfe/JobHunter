<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>工作寻</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
</head>

<body>
<form class="layui-form" action="doAddTask" method="POST">
    <div style="margin: 15px;">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>模板主要信息</legend>
        </fieldset>

        <div class="layui-form-item">
            <label class="layui-form-label">模板名称</label>
            <div class="layui-input-inline">
                <input type="text" name="templateName" lay-verify="required" autocomplete="off" placeholder="任务名称" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">模板链接</label>
            <div class="layui-input-inline">
                <input type="text" name="url" lay-verify="required" autocomplete="off" placeholder="任务链接" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">城市参数</label>
            <div class="layui-input-inline">
                <input type="text" name="cityKey" lay-verify="required" placeholder="城市参数名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">关键字参数</label>
            <div class="layui-input-inline">
                <input type="text" name="keyWordKey" lay-verify="required" placeholder="关键字参数名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">工作经验</label>
            <div class="layui-input-inline">
                <input type="text" name="experienceKey" lay-verify="required" placeholder="关键字参数名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">页数</label>
            <div class="layui-input-inline">
                <input type="text" name="pageKey" lay-verify="required" placeholder="页数参数名" autocomplete="off" class="layui-input">
            </div>
        </div>

        <br/>
        <br/>
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>职位参数(Jquery选择器风格)</legend>
        </fieldset>

        <div class="layui-form-item">
            <label class="layui-form-label">职位列表</label>
            <div class="layui-input-inline">
                <input type="text" name="jobList" lay-verify="required" placeholder="职位列表" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">职位名</label>
            <div class="layui-input-inline">
                <input type="text" name="jobName" lay-verify="required" placeholder="职位名" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">职位链接</label>
            <div class="layui-input-inline">
                <input type="text" name="urlQuery" lay-verify="required" placeholder="职位名" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">公司名</label>
            <div class="layui-input-inline">
                <input type="text" name="companyName" lay-verify="required" placeholder="职位名" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">职位地点</label>
            <div class="layui-input-inline">
                <input type="text" name="jobAddress" lay-verify="required" placeholder="职位地点" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">发布时间</label>
            <div class="layui-input-inline">
                <input type="text" name="placeTime" lay-verify="required" placeholder="发布时间" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">薪资范围</label>
            <div class="layui-input-inline">
                <input type="text" name="maxMoney" placeholder="薪资范围" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea class="layui-textarea layui-hide" name="remark" lay-verify="content" id="LAY_demo_editor"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form(),
                layer = layui.layer,
                layedit = layui.layedit,
                laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function(value) {
                if(value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            content: function(value) {
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data) {

            console.log(typeof data.field);

            $.ajax({
                type:'POST',
                url: 'doAddTemplate',
                timeout: 3000,
                data: JSON.stringify(data.field),
                dataType: 'json',
                contentType: 'application/json;charse=UTF-8',
                success: function(data){
                    if(data.status == 1){
                        showInfo(data.info);
                        window.location.href="main";
                    }else{
                        showInfo(data.info);
                    }
                }
            });
            return false;
        });
    });

    function showInfo(info) {

        layer.alert(info, {
            title: '最终的提交信息'
        });
    }
</script>
</body>

</html>