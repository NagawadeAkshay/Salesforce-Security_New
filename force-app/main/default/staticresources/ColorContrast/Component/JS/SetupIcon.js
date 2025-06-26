var j$ = jQuery.noConflict();
j$("#setupClick").click(function(){
	var adminFlag = j$(this).text();
	if(adminFlag == 'Enable GovGrants Setup') {
		createCookie();
		j$(this).text('Refreshing Page...');
		document.body.style.cursor='wait';
		document.getElementById('setupClick').style.cursor='wait';
		window.location.reload();
	}
	else if(adminFlag == 'Disable GovGrants Setup') {
		var result = deleteCookie();
		if(result == true) {
			j$(this).text('Refreshing Page...');
			document.body.style.cursor='wait';
			document.getElementById('setupClick').style.cursor='wait';
			window.location.reload();
		}
	}
});
function createCookie() {
	
	return true;
}
function deleteCookie() {
	
	return true;
}
j$(document).ready(function(){
	changeLabel();
})
function changeLabel() {
	var text = j$("#setupClick").text();
	
}