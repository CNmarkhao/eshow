<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
         contentType="text/html;charset=utf-8" %>
<%@ include file="../common/taglibs.jsp" %>
<%@ include file="../common/path.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<head>
		<title>新闻中心</title>
		<meta name="keywords" content="新闻中心" />
		<meta name="description" content="新闻中心" />
        <link rel="stylesheet" href="../static/styles/index.css"type="text/css"/>
        <link rel="stylesheet" href="../static/styles/style.css" type="text/css" />
	</head>
	<body>
    <%@ include file="../header.jsp" %>
    <div id="main">
		<div id="content" style="">
			<div id="products_banner"></div>
			<div id="postpath">
				<strong>当前页面：<a href="<c:url value='${huaquan}/'/>" title="首页">首页</a>
					&raquo; 新闻中心</strong>
			</div>
			<div class="bd">
				<ul>
                    <s:action name="blog!search" id="bloghuaquanList" executeResult="false" namespace="">
                        <s:param name="query.website">huaquan</s:param>
                        <s:param name="query.enabled">true</s:param>
                        <s:param name="query.order">addTime</s:param>
                        <s:param name="query.desc">true</s:param>
                    </s:action>
                    <s:iterator var="blog" value="%{#bloghuaquanList.blogs}" status="rowStatus">
                        <li>
                            <a href="${huaquan}/blog/view/${blog.id}">${blog.title}</a>
                            <span><s:date name='%{#blog.updateTime}' format='yyyy-MM-dd'/></span>
                        </li>
                    </s:iterator>
				</ul>
			</div>
			<div id="navigation">
			</div>
		</div>
		<div id="sidebar">

            <div class="sidebar_li">
                <ul>
                    <li class="page_item">
                        <a href="${huaquan}/blog/categories/8" title="公司新闻">公司新闻</a>
                    </li>
                    <li class="page_item">
                        <a href="${huaquan}/blog/categories/9" title="行业新闻">行业新闻</a>
                    </li>
                    <li class="page_item">
                        <a href="${huaquan}/info/prize/" title="报价中心">报价中心</a>
                    </li>
                </ul>

            </div>
		</div>
        <%@ include file="../footer.jsp" %>
    </div>

	</body>
