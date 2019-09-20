<div id="side-bar" class="col-sm-3 col-xs-12 side-container invisible">
    <div class="vertical-text site-title">
        <h3 tabindex="-1" class="site-title-small">
            <a class="a-title" href="${context!}">${settings.title_secondary!}</a>
        </h3>
        <h1 tabindex="-1" class="site-title-large">
            <a class="a-title" href="${context!}">${(settings.title_primary?? && settings.title_primary!='')?string('${settings.title_primary!}','${options.blog_title!}')}</a>
        </h1>
    </div>
    <br class="visible-lg visible-md visible-sm">
    <#include "nav.ftl">
</div>