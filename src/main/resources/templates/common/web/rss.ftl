<?xml version="1.0" encoding="UTF-8"?>
<rss xmlns:content="http://purl.org/rss/1.0/modules/content/" version="2.0">
    <channel>
        <title>${options.blog_title!}</title>
        <link>${options.blog_url!}</link>
        <#if user.description??>
            <description>${user.description!}</description>
        </#if>
        <language>zh-CN</language>
        <#if posts?? && posts?size gt 0>
            <#list posts as post>
                <item>
                    <title>${post.title!}</title>
                    <link>${options.blog_url}/archives/${post.url!}</link>
                    <content:encoded>
                        <![CDATA[
                            ${post.summary!}
                        ]]>
                    </content:encoded>
                    <pubDate>${post.createTime}</pubDate>
                </item>
            </#list>
        </#if>
    </channel>
</rss>