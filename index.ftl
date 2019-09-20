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
    </div>
</@layout>