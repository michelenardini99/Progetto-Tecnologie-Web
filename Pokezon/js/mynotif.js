$(document).ready(function() {
	checknotif();
	setInterval(function(){ checknotif(); }, 10000);
});
function checknotif() {
	if (!Notification) {
		$('body').append('<h4 style="color:red">*Browser does not support Web Notification</h4>');
		return;
	}
	if (Notification.permission !== "granted")
		Notification.requestPermission();
	else {
		$.ajax(
		{
			url : "ajax.php",
			type: "POST",
			success: function(data, textStatus, jqXHR)
			{
				if(data[0] != "<"){ 
				var data = jQuery.parseJSON(data);
					var data_notif = data.notif;
					for (var i = data_notif.length - 1; i >= 0; i--) {
						var theurl = data_notif[i]['url'];
						var notifikasi = new Notification(data_notif[i]['title'], {
							icon: data_notif[i]['icon'],
							body: data_notif[i]['msg'],
						});
						console.log(notifikasi);
						notifikasi.onclick = function () {
							window.open(theurl); 
							notifikasi.close();     
						};
						setTimeout(function(){
							notifikasi.close();
						}, 5000);
					};
				}
			},
			error: function(jqXHR, textStatus, errorThrown)
			{

			}
		});	

	}
};