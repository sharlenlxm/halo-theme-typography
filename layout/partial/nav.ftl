<div id="site-nav" class="site-title-links">
    <ul>
        <@menuTag method="list">
            <#list menus?sort_by('priority') as menu>
                <li><a href="${menu.url!}" target="${menu.target!}">${menu.name!}</a></li>
            </#list>
        </@menuTag>

        <li class="soc">
            <#if settings.github??>
                <a href="https://github.com/${settings.github}" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-github"> &nbsp;</i>
                </a>
            </#if>
            <#if settings.twitter??>
                <a href="https://twitter.com/${settings.twitter}" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-twitter"> &nbsp;</i>
                </a>
            </#if>
            <#if settings.instagram??>
                <a href="https://www.instagram.com/${settings.instagram}" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-instagram"> &nbsp;</i>
                </a>
            </#if>
            <#if settings.weibo??>
                <a href="http://weibo.com/u/${settings.weibo}" target="_blank" rel="noopener noreferrer">
                    <i class="fa fa-weibo"> &nbsp;</i>
                </a>
            </#if>
            <a href="${context!}/atom.xml" target="_blank" rel="noopener noreferrer">
                <i class="fa fa-rss"> &nbsp;</i>
            </a>
        </li>
    </ul>
    <div class="visible-lg visible-md visible-sm site-nav-footer">
        <br class="site-nav-footer-br"/>
        <#include "footer.ftl">
    </div>
</div>