flexGrid.directive('footer',function($compile){

var template =  //<!--Show Entries-->
                '<div ng-if="footerData.enablePageSize == true && footerData.totalRecords != null" class="col-md-4 col-sm-4 showEntries">'+
                    '<span class="pull-left spacing bold-padded">Show</span>'+
                       '<select class="form-control form-control-ext pull-left pageSelectOption"  ng-model="footerData.pageSize" ng-change="communicator.changePageSize(footerData.pageSize);" aria-label="Form Control-Number of Entries">'+
                          '<option ng-repeat="pages in footerData.pageSizes" ng-class="{selected:$first}" >{{pages}}</option>'+
                       '</select>'+
                       '<span class="spacing bold-padded"> Entries</span>'+
                '</div>'+
                //<!--Total Records-->
                '<div class="col-md-4 text-center">' +
                        '<span ng-if="footerData.totalRecords != null">Total Records:'+ 
                        '{{footerData.totalRecords}}</span>' +
                        //<!--loading Icon-->
                        '<span ng-if="footerData.totalRecords == null" >'+
                            '<i class="fa fa-spinner fa-spin" style="font-size:24px"></i>'+
                        '</span>'+
                '</div>' +
                //<!--Pagination-->
                '<div class="table-pager col-md-4 col-sm-4">'+
                     '<span ng-if="footerData.totalRecords != null && footerData.totalRecords != 0">'+
                     '<a tabIndex="0" href="#"  ng-disabled="{{!footerData.hasPrevious}}" ng-class="{disabledCls:!footerData.hasPrevious}"  title="First" ng-click="communicator.first();"><span class="fa fa-fast-backward" ></span><span class="hidden508">First</span></a>'+
                     '<a tabIndex="0" href="#"  ng-disabled="{{!footerData.hasPrevious}}" ng-class="{disabledCls:!footerData.hasPrevious}" title="Previous" ng-click="communicator.previous();"><span class="fa fa-backward" ></span><span class="hidden508">Previous</span></a>'+
                     '<span class="separator">&nbsp;|&nbsp;</span>'+
                     '<span class="bold">Page {{footerData.pageNumber}} of {{footerData.totalPages}}</span>' +
                     '<span class="separator">&nbsp;|&nbsp;</span>'+
                     '<a tabIndex="0" href="#"  ng-disabled="{{!footerData.hasNext}}" ng-class="{disabledCls:!footerData.hasNext}"  title="Next"  ng-click="communicator.next();"><span class="fa fa-forward"></span><span class="hidden508">Next</span></a>'+
                     '<a tabIndex="0" href="#"  ng-disabled="{{!footerData.hasNext}}" ng-class="{disabledCls:!footerData.hasNext}" title="Last" ng-click="communicator.last();"><span class="fa fa-fast-forward" ></span><span class="hidden508">Last</span></a>'+
                     '</span>'
                '</div>';

    var linker = function(scope,element,attrs){


        console.log('footerData:==',scope.footerData);
        element.html(template).show();
        $compile(element.contents())(scope);
    }
    return {
            restrict : 'E',           
            link: linker,
            scope : {
                communicator : '=',
                footerData : '='
            }
    }
});