<%@ page import="com.beans.DAO" %>
<%@ page import="com.beans.Information" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 86130
  Date: 2021/10/19
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中艺星源教育-编导艺考培训</title>
    <link href="major_direct.css" type="text/css" rel="stylesheet">
    <link rel="icon"       type="text/css" href="images/brand.png">
    <script type="text/javascript">
        function submit_success(){
            window.alert("提交成功!");
            return true;
        }
    </script>
</head>
<body>
<%@include file="navigation.jsp" %>
<%--主题栏--%>
<div id="profession_poster">
    <img src="images/theme_pic_direct.jpg" >
    <%--<div class="appointment_box">--%>
    <%--    <div class="appointment_title">｜免费测评｜</div>--%>
    <%--    <div class="appointment_title_res">请填写您的个人信息，<br>将由专业的老师为您免费测评</div>--%>
    <%--    <div id="evaluation_appointment">--%>
    <%--        <form method="post" action="submit_order.jsp">--%>
    <%--            <input type="text" placeholder="&nbsp;姓名" name="name">--%>
    <%--            <input type="text" placeholder="&nbsp;电话\QQ\微信" name="tel_or_wx">--%>
    <%--            <select name="classify">--%>
    <%--                <option value="未选择" selected disabled>课程分类</option>--%>
    <%--                <option value="播音艺考培训">播音艺考培训</option>--%>
    <%--                <option value="编导艺考培训">编导艺考培训</option>--%>
    <%--                <option value="表演艺考培训">表演艺考培训</option>--%>
    <%--                <option value="音乐艺考培训">音乐艺考培训</option>--%>
    <%--                <option value="美术艺考培训">美术艺考培训</option>--%>
    <%--                <option value="舞蹈艺考培训">舞蹈艺考培训</option>--%>
    <%--                <option value="书法艺考培训">书法艺考培训</option>--%>
    <%--                <option value="空乘艺考培训">空乘艺考培训</option>--%>
    <%--            </select>--%>
    <%--            <input type="text" placeholder="&nbsp;问题描述" name="question">--%>
    <%--            <input type="submit" id="button" value="立刻预约" onclick="return submit_success()">--%>
    <%--        </form>--%>
    <%--    </div>--%>
    <%--</div>--%>
</div>
<%--高考优势栏--%>
<div class="box_style1" id="advantage_box">
    <div class="introduce_box">
        <div class="theme_title">编导高考有哪些优势</div>
        <div class="theme_title_EN">— ADVANTAGE —</div>
        <div class="detail">学生通过编导艺考，专业通过联考、校考后，以相对较低的高考分数被中国传媒大学、浙江传媒学院等重点大学录取，毕业后就业前景广阔。</div>
    </div>
    <%@include file="examination_advantages.jsp" %>
</div>
<%--班型设计栏--%>
<div class="box_style2" id="class_define_box">
    <div class="introduce_box">
        <div class="theme_title">多种班型定制</div>
        <div class="theme_title_EN">— MULTIPLE CLASS TYPES —</div>
        <div class="detail">可根据学生的情况为学生推荐相应的班级，实现精准教学</div>
    </div>
    <%@include file="class_types.jsp" %>
</div>
<%--量身定制栏--%>
<div class="box_style1" id="tailored_define_box">
    <div class="introduce_box">
        <div class="theme_title">量身定制</div>
        <div class="theme_title_EN">— TAILORED —</div>
        <div class="detail">入学前老师会与学生交流并进行小测试，综合学生自身的条件，兴趣爱好和报考学校意向、专业基础、性格等进行综合评估。为其量身定制专属学习规划书，让老师、家长共同督促孩子进步。</div>
    </div>
    <%@include file="tailored_service.jsp" %>
</div>
<%--报考大学栏--%>
<div class="box_style2" id="college_define_box">
    <div class="introduce_box">
        <div class="theme_title">编导生可以报考哪些大学</div>
        <div class="theme_title_EN">— UNIVERSITY —</div>
        <div class="detail">全国编导主持专业院校超过一百三十所，除以中国传媒大学、浙江传媒学院为代表的专业艺术院校外，全国985、211及普通本科综合性院校均开设有编导类专业，学生可根据自己兴趣特长、院校特色专业进行针对性报考。</div>
    </div>
    <%@include file="college_box.jsp" %>
</div>
<%--特色区域栏--%>
<div class="box_style1" id="college_define_box">
    <div class="introduce_box">
        <div class="theme_title">培训特色</div>
        <div class="theme_title_EN">— CHARACTERISTIC —</div>
        <div class="detail">中艺星源艺术学校在23年办学过程中不断总结教学精髓，和各大知名出版社自研出版了数十套编导教学教案，内容涵盖历年考题、专业学习要点等，能帮助学生短时间内掌握学习方法，提高学习效率。</div>
    </div>
    <%@include file="advantages_detail.jsp" %>
</div>
<%--艺考资讯区域栏--%>
<div class="box_style2" id="information_define_box">
    <%
        DAO dao = new DAO();
        ArrayList<Information> arrayList = dao.ShowInformation();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        int size = 5; if (arrayList.size() < 5) size = arrayList.size();
    %>
    <div class="sign_information">
        <div class="little_theme">
            <div class="theme_title">实时资讯紧跟艺考步伐</div>
            <div class="theme_title_EN">— TIME-INFORMATION —</div>
        </div>
        <% for (int i = 0; i < size; i++) { %>
        <a href="article.jsp?title=<%=arrayList.get(i).getInformation_title()%>"><div class = "information-block">
            <p class = "information-p">|</p>
            <div class = "title-and-content">
                <div class = "information-title"><%=arrayList.get(i).getInformation_title()%></div>
                <div class = "information-content" style="width: 750px;"><%=arrayList.get(i).getInformation_content()%></div>
            </div>
            <div class = "information-time"><%=formatter.format(arrayList.get(i).getInformation_time())%></div>
        </div></a>
        <% } %>
    </div>
</div>
<%--报名区域栏--%>
<%@include file="sign_box.jsp"%>
<%--联系方式栏--%>
<%@include file="address_and_copyright.jsp"%>
</body>
</html>
