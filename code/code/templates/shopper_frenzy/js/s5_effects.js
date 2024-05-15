var s5_sf_clicked_dd = 0;

document.getElementById("s5_drop_down2").style.height = document.getElementById("s5_drop_down").offsetHeight + "px";

function s5_sf_tab() {

if (s5_sf_clicked_dd == 0) {

s5_sf_open_dd();

document.getElementById("s5_open").style.visibility = 'hidden';
document.getElementById("s5_open").style.height = 0 + 'px';
document.getElementById("s5_open").style.display = 'none';
document.getElementById("s5_closed").style.visibility = 'visible';
document.getElementById("s5_closed").style.display = 'block';

}

else {

s5_sf_close_dd();

document.getElementById("s5_closed").style.visibility = 'hidden';
document.getElementById("s5_closed").style.height = 0 + 'px';
document.getElementById("s5_closed").style.display = 'none';
document.getElementById("s5_open").style.visibility = 'visible';
document.getElementById("s5_open").style.display = 'block';

}

}


function s5_sf_open_dd() {

window.setTimeout('s5_sf_increase()',1);

}


function s5_sf_increase() {

if (s5_sf_dd_top < (s5_sf_user_speed + 1)*-1) {

s5_sf_dd_top = s5_sf_dd_top + s5_sf_user_speed;
s5_sf_tab_top = s5_sf_tab_top + s5_sf_user_speed;

document.getElementById("s5_drop_down").style.top = (s5_sf_dd_top) +'px';
document.getElementById("s5_drop_down2").style.top = (s5_sf_dd_top) +'px';
document.getElementById("s5_drop_down_tab").style.top = (s5_sf_tab_top) +'px';


s5_sf_open_dd();

}

else {

document.getElementById("s5_drop_down").style.top = 0 +'px';
document.getElementById("s5_drop_down2").style.top = 0 +'px';
document.getElementById("s5_drop_down_tab").style.top = s5_sf_tab_set -2 +'px';
s5_sf_clicked_dd = 1;

}

}

function s5_sf_close_dd() {

window.setTimeout('s5_sf_decrease()',1);

}


function s5_sf_decrease() {

if (s5_sf_dd_top > (document.getElementById("s5_drop_down").offsetHeight * -1)) {

document.getElementById("s5_drop_down").style.top = (s5_sf_dd_top) +'px';
document.getElementById("s5_drop_down2").style.top = (s5_sf_dd_top) +'px';
document.getElementById("s5_drop_down_tab").style.top = (s5_sf_tab_top) +'px';
s5_sf_dd_top = s5_sf_dd_top - s5_sf_user_speed;
s5_sf_tab_top = s5_sf_tab_top - s5_sf_user_speed;

s5_sf_close_dd();

}

else {

document.getElementById("s5_drop_down").style.top = ((document.getElementById("s5_drop_down").offsetHeight * -1) + 2) +'px';
document.getElementById("s5_drop_down2").style.top = ((document.getElementById("s5_drop_down").offsetHeight * -1) + 2) +'px';
document.getElementById("s5_drop_down_tab").style.top = -2 + 'px';
s5_sf_clicked_dd = 0;

}

}


var s5_sf_drop_down_height = document.getElementById("s5_drop_down").offsetHeight;

		var s5_sf_drop_down_top = (s5_sf_drop_down_height - 2) * -1;

		document.getElementById("s5_drop_down").style.top = s5_sf_drop_down_top + 'px';
		document.getElementById("s5_drop_down2").style.top = s5_sf_drop_down_top + 'px';
		document.getElementById("s5_drop_down_tab").style.top = -1 + 'px';
		document.getElementById("s5_drop_down_tab").style.left = ((document.documentElement.clientWidth/2) - 90) + 'px';
		document.getElementById("s5_drop_down_tab").style.display = 'block';
		
		