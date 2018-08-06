$('input[type=checkbox]').change(function(){
	if ($('#https').is(':checked')) {
		$('#ssl_cert').show();
	}else{
		$('#ssl_cert').hide();
	}
	if ($('#trial').is(':checked')) {
		$('#trial_uptime_limit').show();
		$('#trial_uptime_reset').show();
		$('#trial_profile').show();
	}else{
		$('#trial_uptime_limit').hide();
		$('#trial_uptime_reset').hide();
		$('#trial_profile').hide();
	}	
});

$(document).ready(function () {
    $('select').change(function(){
		
// server profile

	if ($('#use_radius_yes').is(':selected')) {
		$('#accounting').show();
		$('#default_domain').show();
		$('#location_id').show();
		$('#location_name').show();
		$('#mac_format').show();
		$('#interim_update').show();
		$('#nas_port').show();
		if ($('#acc_yes').is(':selected')) {
			$('#interim_update').show();
		}else{
			$('#interim_update').hide();
		}
	}
	if ($('#use_radius_no').is(':selected')) {
		$('#accounting').hide();
		$('#default_domain').hide();
		$('#location_id').hide();
		$('#location_name').hide();
		$('#mac_format').hide();
		$('#interim_update').hide();
		$('#nas_port').hide();
	}			

// userman create user
 
	if ($('#singleUser').is(':selected')) {
		$('#batch_user').hide();
		$('#code_combination').hide();
		if ($('#usm_useronly').is(':selected')) {		
			$('#usm_user').show();	
			$('#usm_pass').hide();
		}
		
		if ($('#usm_userpass').is(':selected')) {
			$('#usm_user').show();	
			$('#usm_pass').show();			
		}
	
		if ($('#usm_select').is(':selected')) {
			$('#usm_user').hide();	
			$('#usm_pass').hide();			
		}
	}	
	
	if ($('#batchUser').is(':selected')) {
		$('#batch_user').show();
		$('#code_combination').show();
		$('#usm_user').hide();	
		$('#usm_pass').hide();

	}	
	
	if ($('#createMode').is(':selected')) {
		$('#batch_user').hide();
		$('#usm_user').hide();	
		$('#usm_pass').hide();
	}		

// add walled garden
	
	if ($('#icmp').is(':selected')) {
        $('#dst_port').hide();
    }
	
	if ($('#gre').is(':selected')) {
        $('#dst_port').hide();
    }

	if ($('#ospf').is(':selected')) {
        $('#dst_port').hide();
    }

	if ($('#encap').is(':selected')) {
        $('#dst_port').hide();
    }

	if ($('#tcp').is(':selected')) {
        $('#dst_port').show();
    }	
	
	if ($('#udp').is(':selected')) {
        $('#dst_port').show();
    }		

// create member
	
	if ($('#username_only').is(':selected')) {
		$('#username').show();
        $('#password').hide();
        $('#cpassword').hide();		
    }
	
	if ($('#username_and_password').is(':selected')) {
		$('#username').show();
        $('#password').show();
        $('#cpassword').show();		
    }
	
	if ($('#select_method').is(':selected')) {
		$('#username').hide();
        $('#password').hide();
        $('#cpassword').hide();
    }

// create member pppoe


	if ($('#static').is(':selected')) {
		$('#local_address').show();
		$('#remote_address').show();
		$('#remote_address_dhcp').hide();
	}
	if ($('#automatic').is(':selected')) {
		$('#local_address').hide();
		$('#remote_address').hide();
		$('#remote_address_dhcp').show();
	}
	if ($('#select_addr').is(':selected')) {
		$('#local_address').hide();
		$('#remote_address').hide();
		$('#remote_address_dhcp').hide();
	}
	if ($('#current').is(':selected')) {
		$('#local_address').hide();
		$('#remote_address').hide();
		$('#remote_address_dhcp').hide();
	}
	

// create administrator / sales
	
	if ($('#admin').is(':selected')) {
        $('#router_name').hide();
		$('#permission_label').hide();
		$('#permission_separate').hide();
		$('#permission1').hide();
		$('#permission2').hide();
		$('#full_admin_label').show();
    }
	
	if ($('#sales').is(':selected')) {
        $('#router_name').show();
		$('#permission_label').show();
		$('#permission_separate').show();
		$('#permission1').show();
		$('#permission2').show();
		$('#full_admin_label').hide();
    }
	
	if ($('#router_select').is(':selected')) {
		$('#router_name').hide();
		$('#permission_label').hide();
		$('#permission_separate').hide();
		$('#permission1').hide();
		$('#permission2').hide();
		$('#full_admin_label').hide();
    }
	
// ip pool tipe

	if ($('#static').is(':selected')) {
        $('#dst_port').hide();
    }	
	
    });
});


// radio checked - hotspot plan

$(document).ready(function () {
    $('input[type=radio]').change(function(){

	if ($('#Time_Limit').is(':checked')) {
        $('#DataLimit').hide();
		$('#TimeLimit').show();
    }
	if ($('#Data_Limit').is(':checked')) {
        $('#TimeLimit').hide();
		$('#DataLimit').show();
    }
	if ($('#Both_Limit').is(':checked')) {
        $('#TimeLimit').show();
		$('#DataLimit').show();
    }
	
	if ($('#Unlimited').is(':checked')) {
        $('#Type').hide();
		$('#TimeLimit').hide();
		$('#DataLimit').hide();
    } else {
        $('#Type').show();
    }

	if ($('#Hotspot').is(':checked')) {
        $('#p').hide();
		$('#h').show();
    } 
	if ($('#PPPOE').is(':checked')) {
		//$('#ppp_type').show();
		$('#ip_address_type').show();		
        $('#p').show();
		$('#h').hide();
    }

// create member pppoe
		
	if ($('#Hot').is(':checked')) {
		//$('#ppp_type').hide();
		$('#ip_address_type').hide();
		$('#local_address').hide();
		$('#remote_address').hide();
		$('#action_on_expire').hide();
    }
	
    });
});
$("#Hotspot").prop("checked", true).change();


//auto load pool - pppoe plan
var htmlobjek;
$(document).ready(function(){
  $("#routers").change(function(){
    var routers = $("#routers").val();
    $.ajax({
        url: "index.php?page=autoload/pool",
        data: "routers="+routers,
        cache: false,
        success: function(msg){
            $("#pool_name").html(msg);
        }
    });
  });
});

//auto load plans data - recharge user
$(function() {
    $('input[type=radio]').change(function(){
		if ($('#Hot').is(':checked')) {
				$.ajax({
					type: "POST",
					dataType: "html",
					url: "index.php?page=autoload/server",
					success: function(msg){
						$("#server").html(msg);                                                     
					}
				});
				
				$("#server").change(getAjaxAlamat);
				function getAjaxAlamat(){
					var server = $("#server").val();
					$.ajax({
						type: "POST",
						dataType: "html",
						url: "index.php?page=autoload/plan",
						data: "jenis=Hotspot&server="+server,
						success: function(msg){
							$("#plan").html(msg);
						}
					});
				};

		}else{
				$.ajax({
					type: "POST",
					dataType: "html",
					url: "index.php?page=autoload/server",
					success: function(msg){
						$("#server").html(msg);
					}
				});
				$("#server").change(function(){
					var server = $("#server").val();
					$.ajax({
						type: "POST",
						dataType: "html",
						url: "index.php?page=autoload/plan",
						data: "jenis=PPPOE&server="+server,
						success: function(msg){
							$("#plan").html(msg);
						}
					});
				});
		}
    });
});

function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] != source)
            checkboxes[i].checked = source.checked;
    }
}