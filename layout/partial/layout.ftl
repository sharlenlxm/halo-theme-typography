<#macro layout title,keywords,description>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta name="X-UA-Compatible" content="IE=edge">
        <meta name="author" content="${user.nickname!}">
        <title>${title!}</title>
        <meta name="description" content="${description!}">
        <meta name="keywords" content="${keywords!}">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta content="telephone=no" name="format-detection">
        <meta name="renderer" content="webkit">
        <@global.head />
        <link rel="stylesheet" href="${static!}/source/css/bootstrap.min.css">
        <link rel="stylesheet" href="${static!}/source/css/font-awesome.min.css">
        <#if (settings.themeStyle!'light') == 'light'>
            <link rel="stylesheet" href="${static!}/source/css/style.css">
        <#else>
            <link rel="stylesheet" href="${static!}/source/css/style-dark.css">
        </#if>
        <link rel="alternate" type="application/atom+xml" title="ATOM 1.0" href="${context!}/atom.xml">
    </head>
    <body>
        <div id="stage" class="container">
            <div class="row">
                <#include "sidebar.ftl">
                <div id="main-container" class="col-sm-9 col-xs-12 main-container invisible">
                    <#nested />
                    <div class="visible-xs site-bottom-footer">
                        <#include "footer.ftl">
                    </div>
                </div>
            </div>
        </div>
        <script src="${static!}/source/js/jquery-3.1.0.min.js"></script>
        <script src="${static!}/source/js/bootstrap.min.js"></script>
        <script src="${static!}/source/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="${static!}/source/js/jquery.appear.js"></script>
        <script src="${static!}/source/js/google-analytics.js"></script>
        <script src="${static!}/source/js/typography.js"></script>
    </body>
</html>
</#macro>