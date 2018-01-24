<div class="row">
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading">${content.titleLeft!"RENDER YOUR LEFT TITLE HERE"}</div>
            <div class="panel-body">
                <!-- TRIGGER THE LEFT AREA HERE -->
                [@cms.area name="leftColumn" /]
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading">${content.titleRight!"RENDER YOUR RIGHT TITLE HERE"}</div>
            <div class="panel-body">
                <!-- TRIGGER THE RIGHT AREA HERE -->
                [@cms.area name="rightColumn" /]
            </div>
        </div>
    </div>   
</div>
