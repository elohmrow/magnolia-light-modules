
[#assign targetPageLink = content.targetPageLink!]

[#if targetPageLink?has_content]
    [#assign targetPage = cmsfn.contentById(content.targetPageLink)!]

    [#if targetPage?has_content]
        <div class="default-teaser">
    
            <h4 class="chapter-head"><a href="${cmsfn.link(targetPage)!}">${targetPage.title!targetPage.@name}</a></h4>
            
            ${targetPage.abstract!}
            
            [#-- An optional possible extends: Trying also to get an image from the target page --]
            [#if targetPage.imageLink?has_content]
                [#assign asset = damfn.getAsset(targetPage.imageLink)!]
                [#if asset?has_content && asset.link?has_content]
                    <img class="img-responsive" src="${asset.link}" alt="">
                [/#if]
            [/#if]
            
            <a href="${cmsfn.link(targetPage)!}">${i18n['teaser.link.readon']}</a>
            [#-- <a href="${cmsfn.link(targetPage)!}">Read On</a> --]
            
        </div>
    [#elseif cmsfn.editMode]
        <div>Target Page could not be resolved.</div>
    [/#if]


[#elseif cmsfn.editMode]
    <div>No target page has been chosen, please open dialog and do so.</div>
[/#if]

