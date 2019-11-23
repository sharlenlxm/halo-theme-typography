<#include "layout/partial/layout.ftl">
<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <div class="autopagerize_page_element">
        <div class="content">
            <#list posts.content as post>
                <div class="post-container">
                    <p class="post-title">
                        <a href="${context!}/archives/${post.url!}">${post.title!}</a>
                    </p>
                    <p class="post-meta">
                        <span class="date meta-item">发布于&nbsp;${post.createTime?string('yyyy-MM-dd')}</span>
                        <#if settings.showCategories!true>
                            <#if post.categories?? && post.categories?size gt 0>
                                <span class="meta-item">
                                    <i class="fa fa-folder"></i>
                                    <span>&nbsp;</span>
                                    <#list post.categories as category>
                                        <a class="a-tag" href="${context!}/categories/${category.slugName!}" title="${category.name!}">${category.name}</a>
                                        <span>&nbsp;</span>
                                    </#list>
                                </span>
                            </#if>
                        </#if>
                        <#if settings.showTags!true>
                            <#if post.tags?? && post.tags?size gt 0>
                                <span class="meta-item">
                                    <i class="fa fa-tag"></i>
                                    <span>&nbsp;</span>
                                    <#list post.tags as tag>
                                        <a class="a-tag" href="${context!}/tags/${tag.slugName!}" title="${tag.name!}">${tag.name}</a>
                                        <span>&nbsp;</span>
                                    </#list>
                                </span>
                            </#if>
                        </#if>
                    </p>
                    <p class="post-abstract">${post.summary!}</p>
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
                            <a role="navigation" href="${context!}/">上一頁</a>
                        <#else>
                            <a role="navigation" href="${context!}/page/${posts.number}/">上一頁</a>
                        </#if>
                    </span>
                    <span>&nbsp;</span>
                </#if>
                <#if posts.hasNext()>
                    <span class="next pagbuttons">
                        <a role="navigation" href="${context!}/page/${posts.number+2}/">下一頁</a>&nbsp;
                        <i class="fa fa-angle-double-right"></i>
                    </span>
                </#if>
            </p>
        </div>
    </div>
</@layout>