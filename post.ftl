<#include "layout/partial/layout.ftl">
<#include "layout/partial/comments.ftl">
<@layout title="${post.title!} · ${options.blog_title!}" keywords="${post.title!},${options.seo_keywords!},${tagWords!}" description="${post.summary!}">
    <div class="autopagerize_page_element">
        <div class="content">
            <div class="post-page">
                <div class="post-container">
                    <p class="post-title">
                        <a>${post.title!}</a>
                    </p>
                    <p class="post-meta">
                        <span class="date meta-item">发布于&nbsp;${post.createTime?string('yyyy-MM-dd')}</span>
                        <#if settings.showCategories!true>
                            <#if categories?? && categories?size gt 0>
                                <span class="meta-item">
                                    <i class="fa fa-folder"></i>
                                    <span>&nbsp;</span>
                                    <#list categories as category>
                                        <a class="a-tag" href="${context!}/categories/${category.slugName!}" title="${category.name!}">${category.name}</a>
                                        <span>&nbsp;</span>
                                    </#list>
                                </span>
                            </#if>
                        </#if>
                        <#if settings.showTags!true>
                            <#if tags?? && tags?size gt 0>
                                <span class="meta-item">
                                    <i class="fa fa-tag"></i>
                                    <span>&nbsp;</span>
                                    <#list tags as tag>
                                        <a class="a-tag" href="${context!}/tags/${tag.slugName!}" title="${tag.name!}">${tag.name}</a>
                                        <span>&nbsp;</span>
                                    </#list>
                                </span>
                            </#if>
                        </#if>
                    </p>
                    <p class="post-abstract">
                        ${post.formatContent!}
                    </p>
                    <div class="share">
                        <span>分享到</span>&nbsp;<span>
                            <a href="javascript:(function(){EN_CLIP_HOST='http://www.evernote.com';try{var%20x=document.createElement('SCRIPT');x.type='text/javascript';x.src=EN_CLIP_HOST+'/public/bookmarkClipper.js?'+(new%20Date().getTime()/100000);document.getElementsByTagName('head')[0].appendChild(x);}catch(e){location.href=EN_CLIP_HOST+'/clip.action?url='+encodeURIComponent(location.href)+'&amp;title='+encodeURIComponent(document.title);}})();" ref="nofollow" target="_blank" class="fa fa-bookmark"></a>
                        </span>
                        <span>
                            <a href="javascript:void((function(s,d,e){try{}catch(e){}var f='http://service.weibo.com/share/share.php?',u=d.location.href,p=['url=',e(u),'&amp;title=',e(d.title),'&amp;appkey=2924220432'].join('');function a(){if(!window.open([f,p].join(''),'mb',['toolbar=0,status=0,resizable=1,width=620,height=450,left=',(s.width-620)/2,',top=',(s.height-450)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent)){setTimeout(a,0)}else{a()}})(screen,document,encodeURIComponent));" class="fa fa-weibo"></a>
                        </span>
                        <span>
                            <a href="http://twitter.com/home?status=${context!}/archives/${post.url!}%20V%20${post.title!}" class="fa fa-twitter"></a>
                        </span>
                    </div>
                    <div class="pagination">
                        <p class="clearfix">
                            <#if prePost??>
                                <span class="pre pagbuttons">
                                    <a role="navigation" href="${context!}/archives/${prePost.url}" title="${prePost.title!}">
                                        <i class="fa fa-angle-double-left"></i>
                                        &nbsp;
                                        上一篇：${prePost.title!}
                                    </a>
                                </span>
                            </#if>
                            <#if nextPost??>
                                <span>&nbsp;</span>
                                <span class="next pagbuttons">
                                    <a role="navigation" href="${context!}/archives/${nextPost.url}" title="${nextPost.title!}">
                                        下一篇: ${nextPost.title!}
                                        &nbsp;
                                        <i class="fa fa-angle-double-right"></i>
                                    </a>
                                </span>
                            </#if>
                        </p>
                    </div>
                    <@comment post,"post"/>
                </div>
            </div>
        </div>
    </div>
</@layout>