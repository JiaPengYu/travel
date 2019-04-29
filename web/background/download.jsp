<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page import="java.io.*" %>
<html>


<head>
    <title>Title</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
        String classPath = (String.valueOf(Thread.currentThread().getContextClassLoader().getResource(""))).replaceAll("file:/", "").replaceAll("%20", " ").trim();
    %>
    <%
        //得到文件名字和路径
        String filepath = request.getParameter("path");
        String filename = request.getParameter("pdfName");

//设置响应头和下载保存的文件名
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment;  filename=\"" + filename + "\"");

//打开指定文件的流信息
        OutputStream outputStream = response.getOutputStream();
        InputStream inputStream = new FileInputStream(filepath + filename);
        byte[] buffer = new byte[1024];
        int i = -1;
        while ((i = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, i);
        }
        outputStream.flush();
        outputStream.close();
        inputStream.close();
        outputStream = null;
        out.clear();
        out = pageContext.pushBody();
    %>
    <a target="_blank" download="aa" href="img/XD201607000023.gif" rel="external nofollow" rel="external nofollow"
       download="aa">下载</a>
</head>
<body>
</body>
</html>