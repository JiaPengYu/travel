<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="info.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>xx旅行社</title>
</head>
<%--<%--%>
<%--if (request.getAttribute("linkList") == null) {--%>
<%--response.sendRedirect(request.getContextPath() + "/init");--%>
<%--}--%>
<%--%>--%>
<body class="skin-orange">
<!-- 头部开始 -->
<jsp:include page="header.jsp"/>
<!-- 头部结束 -->

<section class="home">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <%--<div class="headline">--%>
                <%--<div class="nav" id="headline-nav">--%>
                <%--<a class="left carousel-control" role="button" data-slide="prev">--%>
                <%--<span class="ion-ios-arrow-left" aria-hidden="true"></span>--%>
                <%--<span class="sr-only">Previous</span>--%>
                <%--</a>--%>
                <%--<a class="right carousel-control" role="button" data-slide="next">--%>
                <%--<span class="ion-ios-arrow-right" aria-hidden="true"></span>--%>
                <%--<span class="sr-only">Next</span>--%>
                <%--</a>--%>
                <%--</div>--%>
                <%--<div class="owl-carousel owl-theme" id="headline">--%>
                <%--<div class="item">--%>
                <%--<a href="#">--%>
                <%--<div class="badge">小提示!</div>--%>
                <%--测试1</a>--%>
                <%--</div>--%>
                <%--<div class="item">--%>
                <%--<a href="#">测试2</a>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>

                <!-- 轮播图开始 -->
                <%--<div class="owl-carousel owl-theme slide" id="featured">--%>
                <%--<c:forEach items="${newsByTypeList}" var="newsList">--%>
                <%--<div class="item">--%>
                <%--<article class="featured">--%>
                <%--<div class="overlay"></div>--%>
                <%--<figure>--%>
                <%--<img src="${newsList.get(0).imageUrl}" alt="${newsList.get(0).newsTitle}">--%>
                <%--</figure>--%>
                <%--<div class="details">--%>
                <%--<div class="category">--%>
                <%--<a href="category.jsp">${newsList.get(0).newsType.typeName}</a>--%>
                <%--</div>--%>
                <%--<h1><a href="single.jsp">${newsList.get(0).newsTitle}</a></h1>--%>
                <%--<div class="time">2019 年 04 月 05 日${newsList.get(0).publishTime}</div>--%>
                <%--</div>--%>
                <%--</article>--%>
                <%--</div>--%>
                <%--</c:forEach>--%>
                <%--</div>--%>
                <!-- 轮播图结束 -->

                <div class="line">
                    <div>世界风光</div>
                </div>
                <div class="row">

                    <%--开始--%>
                    <%--偶数--%>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="row">
                            <article class="article col-md-12">
                                <div class="inner">
                                    <figure>
                                        <a href="single.jsp">
                                            <img src="images/place/destination-1.jpg" alt="${newNewsList[i].newsTitle}">
                                        </a>
                                    </figure>
                                    <div class="padding">
                                        <div class="detail">
                                            <%--<div class="time">2019 年 04 月05 日${newNewsList[i].publishTime}</div>--%>
                                            <div class="category">
                                                <a href="category.jsp">${newNewsList[i].newsType.typeName}</a>
                                            </div>
                                        </div>
                                        <h2><a href="single.jsp">${newNewsList[i].newsTitle}</a></h2>
                                        <p>${newNewsList[i].newsContent}</p>
                                        <footer>
                                            <%--<a href="#" class="love"><i class="ion-android-favorite-outline"></i>--%>
                                            <%--<div>${newNewsList[i].love}</div>--%>
                                            <%--</a>--%>
                                            <%--<a class="btn btn-primary more" href="#${newNewsList[i].newsId}">--%>
                                            <%--<div>更多</div>--%>
                                            <%--<div><i class="ion-ios-arrow-thin-right"></i></div>--%>
                                            <%--</a>--%>
                                        </footer>
                                    </div>
                                </div>
                            </article>

                            <%--奇数--%>
                            <article class="article col-md-12">
                                <div class="inner">
                                    <figure>
                                        <a href="single.jsp">
                                            <img src="images/place/destination-2.jpg" alt="${newNewsList[i].newsTitle}">
                                        </a>
                                    </figure>
                                    <div class="padding">
                                        <div class="detail">
                                            <%--<div class="time">2019 年 04 月05 日${newNewsList[i].publishTime}</div>--%>
                                            <div class="category">
                                                <a href="#${newNewsList[i].newsType.typeId}">${newNewsList[i].newsType.typeName}</a>
                                            </div>
                                        </div>
                                        <h2><a href="#${newNewsList[i].newsId}">${newNewsList[i].newsTitle}</a></h2>
                                        <p>${newNewsList[i].newsContent}</p>
                                        <footer>
                                            <%--<a href="#" class="love"><i class="ion-android-favorite-outline"></i>--%>
                                            <%--<div>${newNewsList[i].love}</div>--%>
                                            <%--</a>--%>
                                            <%--<a class="btn btn-primary more" href="single.jsp">--%>
                                            <%--<div>更多</div>--%>
                                            <%--<div><i class="ion-ios-arrow-thin-right"></i></div>--%>
                                            <%--</a>--%>
                                        </footer>
                                    </div>
                                </div>

                            </article>
                        </div>
                    </div>
                        <%--结束--%>

                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="row">
                            <article class="article col-md-12">
                                <div class="inner">
                                    <figure>
                                        <a href="single.jsp">
                                            <img src="images/place/destination-3.jpg" alt="${newNewsList[i].newsTitle}">
                                        </a>
                                    </figure>
                                    <div class="padding">
                                        <div class="detail">
                                            <%--<div class="time">2019 年 04 月05 日${newNewsList[i].publishTime}</div>--%>
                                            <div class="category">
                                                <a href="category.jsp">${newNewsList[i].newsType.typeName}</a>
                                            </div>
                                        </div>
                                        <h2><a href="single.jsp">${newNewsList[i].newsTitle}</a></h2>
                                        <p>${newNewsList[i].newsContent}</p>
                                        <footer>
                                            <%--<a href="#" class="love"><i class="ion-android-favorite-outline"></i>--%>
                                            <%--<div>${newNewsList[i].love}</div>--%>
                                            <%--</a>--%>
                                            <%--<a class="btn btn-primary more" href="#${newNewsList[i].newsId}">--%>
                                            <%--<div>更多</div>--%>
                                            <%--<div><i class="ion-ios-arrow-thin-right"></i></div>--%>
                                            <%--</a>--%>
                                        </footer>
                                    </div>
                                </div>
                            </article>

                            <article class="article col-md-12">
                                <div class="inner">
                                    <figure>
                                        <a href="single.jsp">
                                            <img src="images/place/destination-0.jpg" alt="${newNewsList[i].newsTitle}">
                                        </a>
                                    </figure>
                                    <div class="padding">
                                        <div class="detail">
                                            <%--<div class="time">2019 年 04 月05 日${newNewsList[i].publishTime}</div>--%>
                                            <div class="category">
                                                <a href="#${newNewsList[i].newsType.typeId}">${newNewsList[i].newsType.typeName}</a>
                                            </div>
                                        </div>
                                        <h2><a href="#${newNewsList[i].newsId}">${newNewsList[i].newsTitle}</a></h2>
                                        <p>${newNewsList[i].newsContent}</p>
                                        <footer>
                                            <%--<a href="#" class="love"><i class="ion-android-favorite-outline"></i>--%>
                                            <%--<div>${newNewsList[i].love}</div>--%>
                                            <%--</a>--%>
                                            <%--<a class="btn btn-primary more" href="single.jsp">--%>
                                            <%--<div>更多</div>--%>
                                            <%--<div><i class="ion-ios-arrow-thin-right"></i></div>--%>
                                            <%--</a>--%>
                                        </footer>
                                    </div>
                                </div>

                            </article>
                        </div>
                    </div>
                </div>

                <div class="banner">
                    <a href="#">
                        <img src="images/ads.png" alt="广告">
                    </a>
                </div>
                <div class="line transparent little"></div>

                <div class="row">
                </div>

                <div class="row">
                    <c:forEach items="${newsByTypeList}" var="newsList">
                        <article class="col-md-12 article-list">
                            <div class="inner">
                                <figure>
                                    <a href="#${newsList.get(1).newsId}">
                                        <img src="${newsList.get(1).imageUrl}" alt="${newsList.get(1).newsTitle}">
                                    </a>
                                </figure>
                                <div class="details">
                                    <div class="detail">
                                        <div class="category">
                                            <a href="#">${newsList.get(1).newsType.typeName}</a>
                                        </div>
                                    </div>
                                    <h1><a href="single.jsp">${newsList.get(1).newsTitle}</a></h1>
                                    <p>
                                            ${newsList.get(1).newsContent}
                                    </p>
                                    <footer>
                                        <a href="#" class="love"><i class="ion-android-favorite-outline"></i>
                                            <div>${newsList.get(1).love}</div>
                                        </a>
                                        <a class="btn btn-primary more" href="#${newsList.get(1).newsId}">
                                            <div>更多</div>
                                            <div><i class="ion-ios-arrow-thin-right"></i></div>
                                        </a>
                                    </footer>
                                </div>
                            </div>
                        </article>
                    </c:forEach>
                </div>
            </div>

            <div class="col-xs-6 col-md-4 sidebar" id="sidebar">
                <div class="sidebar-title for-tablet">Sidebar</div>
                <!-- 用户界面开始 -->
                <aside>
                    <div class="aside-body">
                        <div class="featured-author">
                            <div class="featured-author-inner">
                                <div class="featured-author-cover"
                                     style="background-image: url('images/news/img15.jpg');">
                                    <div class="badges">
                                        <div class="badge-item"><i class="ion-star"></i>${user==null?"您还没有登录":user.name}
                                        </div>
                                    </div>
                                    <div class="featured-author-center">
                                        <figure class="featured-author-picture">
                                            <img src="images/img01.jpg" alt="Sample Article">
                                        </figure>
                                        <div class="featured-author-info">
                                            <h2 class="name">${user==null?"尚未登录":user.username}</h2>
                                            <div class="desc">${user.email}</div>
                                        </div>
                                    </div>
                                </div>
                                <c:if test="${user!=null}">
                                    <div class="featured-author-body">
                                        <div class="featured-author-count">
                                            <div class="item">
                                                <a href="#">
                                                    <div class="name">点赞的新闻</div>
                                                    <div class="value">数量</div>
                                                </a>
                                            </div>
                                            <div class="item">
                                                <a href="#">
                                                    <div class="name">评论数</div>
                                                    <div class="value">数量</div>
                                                </a>
                                            </div>
                                            <div class="item">
                                                <a href="#">
                                                    <div class="icon">
                                                        <div>更多</div>
                                                        <i class="ion-chevron-right"></i>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="featured-author-quote">
                                            "${user}"
                                        </div>
                                        <div class="block">
                                            <h2 class="block-title">浏览历史</h2>
                                            <div class="block-body">
                                                <ul class="item-list-round" data-magnific="gallery">
                                                    <li>
                                                        <a href="images/news/img06.jpg"
                                                           style="background-image: url('images/news/img06.jpg');"></a>
                                                    </li>
                                                    <li>
                                                        <a href="images/news/img07.jpg"
                                                           style="background-image: url('images/news/img07.jpg');"></a>
                                                    </li>
                                                    <li>
                                                        <a href="images/news/img08.jpg"
                                                           style="background-image: url('images/news/img08.jpg');"></a>
                                                    </li>
                                                    <li>
                                                        <a href="images/news/img09.jpg"
                                                           style="background-image: url('images/news/img09.jpg');"></a>
                                                    </li>
                                                    <li>
                                                        <a href="images/news/img10.jpg"
                                                           style="background-image: url('images/news/img10.jpg');"></a>
                                                    </li>
                                                    <li>
                                                        <a href="images/news/img11.jpg"
                                                           style="background-image: url('images/news/img11.jpg');"></a>
                                                    </li>
                                                    <li>
                                                        <a href="images/news/img12.jpg"
                                                           style="background-image: url('images/news/img12.jpg');">
                                                            <div class="more">+2</div>
                                                        </a>
                                                    </li>
                                                    <li class="hidden">
                                                        <a href="images/news/img13.jpg"
                                                           style="background-image: url('images/news/img13.jpg');"></a>
                                                    </li>
                                                    <li class="hidden">
                                                        <a href="images/news/img14.jpg"
                                                           style="background-image: url('images/news/img14.jpg');"></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="featured-author-footer">
                                            <a href="#">查看全部信息</a>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </aside>
                <!-- 用户界面结束 -->

                <!-- 友情链接开始 -->
                <aside id="sponsored">
                    <h1 class="aside-title">友情链接</h1>
                    <div class="aside-body">
                        <ul class="sponsored">
                            <c:forEach begin="1" end="6" var="i">
                                <li>
                                    <a href="https://www.bilibili.com/">
                                        <img src="images/link/${i}.jpg" alt="">
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </aside>
                <!-- 友情链接结束 -->

            </div>
        </div>
    </div>
</section>

<!-- 底部开始 -->
<jsp:include page="footer.jsp"/>
<!-- 底部结束 -->
</body>
</html>