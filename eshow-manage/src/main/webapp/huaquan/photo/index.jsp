<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
         contentType="text/html;charset=utf-8" %>
<%@ include file="../common/taglibs.jsp" %>
<%@ include file="../common/path.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
    <title>新闻中心</title>
    <meta name="keywords" content="荣誉证书" />
    <meta name="description" content="荣誉证书" />
    <link rel="stylesheet" href="../static/styles/index.css"type="text/css"/>
    <link rel="stylesheet" href="../static/styles/style.css" type="text/css" />
</head>
<body>
<%@ include file="../header.jsp" %>
<div id="main">
    <div id="content" >
        <div id="postpath">
            <strong>当前页面：<a href="<c:url value='${huaquan}/'/>" title="首页">首页</a>
                &raquo; 荣誉证书</strong>
        </div>
        <div class="bd">
            <div id="block-content">
                        <s:action name="photo!search" id="photoList"
                                  executeResult="false">
                            <s:param name="query.website">huaquan</s:param>
                            <s:param name="queryBean.order">addTime</s:param>
                            <s:param name="queryBean.desc">true</s:param>
                            <s:param name="queryBean.pageSize">12</s:param>
                        </s:action>
                        <ui>
                            <s:iterator value="%{#photoList.photos}" status="rowStatus" >
                            <img src="${huaquan}/static/images/<s:date name='%{addTime}' format='yyyyMMdd' />${id}.jpg" alt="${name}" height="150" width="180"/>
                            </s:iterator>
                        </ui>
            </div>
        </div>
    </div>
    <div id="sidebar">
        <div class="sidebar_li">
            <ul>
                <li class="page_item">
                    <a href="${huaquan}/album/view/1" title="公司概貌">公司概貌</a>
                </li>
                <li class="page_item">
                    <a href="${huaquan}/album/view/2" title="产品展示">产品展示</a>
                </li>

            </ul>
        </div>
    </div>
    <%@ include file="../footer.jsp" %>
</div>
</body>
