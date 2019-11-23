<#include "layout/partial/layout.ftl">
<@layout title="分类：${category.name!} · ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <div class="autopagerize_page_element">
        <div class="content">
            <div class="archive animated fadeInDown">
                <ul class="list-with-title">
                    <p class="post-title">
                        分类：${category.name!}
                    </p>
                    <div class="archive">
                        <#list posts.content as post>
                            <div class="listing-item">
                                <div class="listing-post">
                                    <p class="post-title">
                                        <a href="${context!}/archives/${post.url!}"
                                           title="${post.title!}">${post.title!}</a>
                                    </p>
                                    <div class="post-time">
                                        <span class="ar-date">${post.createTime?string('yyyy-MM-dd')}</span>
                                    </div>
                                </div>
                            </div>
                        </#list>
                    </div>

                    <div class="pagination no-margin-bottom"><p class="clearfix"></p>
                        <#if settings.showPageCount!true>
                            <p> 第 ${posts.number+1} 頁 / 共 ${posts.getTotalPages()} 頁 &nbsp;</p>
                        </#if>
                        <p>
                            <#if posts.hasPrevious()>
                                <span class="pre pagbuttons">
                                    <i class="fa fa-angle-double-left"></i>&nbsp;
                                    <#if posts.number == 1>
                                        <a role="navigation" href="${context!}/categories/${category.slugName!}">上一頁</a>
                                    <#else>
                                        <a role="navigation" href="${context!}/categories/${category.slugName!}/page/${posts.number}/">上一頁</a>
                                    </#if>
                                </span>
                                <span>&nbsp;</span>
                            </#if>
                            <#if posts.hasNext()>
                                <span class="next pagbuttons">
                                    <a role="navigation" href="${context!}/categories/${category.slugName!}/page/${posts.number+2}/">下一頁</a>&nbsp;
                                    <i class="fa fa-angle-double-right"></i>
                                </span>
                            </#if>
                        </p>
                    </div>
                </ul>
            </div>
        </div>
    </div>
</@layout>