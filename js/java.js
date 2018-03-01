// JavaScript Document
function show_function(val)
{
	document.getElementById('sensor').innerHTML='';
	$("#sensor").load("sensor_status.php",{sensor:val});
}
 function playSound(){   
                window.location('alarm.html');
            }
