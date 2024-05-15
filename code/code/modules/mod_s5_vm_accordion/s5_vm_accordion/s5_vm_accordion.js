// s5_vm_accordion.js is copyrighted material by Shape5.com 2007 - current

// Title: Shape 5 Virtuemart Accordion Menu - Joomla 1.0
// URL: http://www.shape5.com
// Date: 11/17/2007
// Notes: This script is copyrighted material of shape5.com and may not be redistributed or resold by any means.

	var s5_vm_li = document.getElementById("s5_vm_container").getElementsByTagName("LI");
	var s5_vm_aa = 0;
	for (var s5_vm_a=0; s5_vm_a<s5_vm_li.length; s5_vm_a++) {
	s5_vm_li[s5_vm_a].style.listStyleType = "none";
	if (s5_vm_li[s5_vm_a].childNodes[1]) {
	if (s5_vm_li[s5_vm_a].parentNode.id) {
		s5_vm_li[s5_vm_a].id="s5_vm_li" + s5_vm_aa;
		s5_vm_aa = s5_vm_aa + 1;
		}
		}
	}
	
	var s5_vm_div = document.getElementById("s5_vm_container").getElementsByTagName("DIV");
	var c = 0;
	for (var s5_vm_b=0; s5_vm_b<s5_vm_div.length; s5_vm_b++) {
	if (s5_vm_div[s5_vm_b].style.visibility == "visible") {
		s5_vm_div[s5_vm_b].id="s5_vm_di" + (c - 1);
		c = c - 1;
	}
	else {
	s5_vm_div[s5_vm_b].id="s5_vm_do" + c;
	}
	c = c + 1;
	}
	
var id_s5_close;
var s5_vm_open_check = 0;
var s5_vm_first = 0;

function s5_vm_close_divs() {
s5_vm_open_check = 1;
	var s5_vm_close = document.getElementById("s5_vm_container").getElementsByTagName("DIV");
	for (var s5_vm_d=0; s5_vm_d<s5_vm_close.length; s5_vm_d++) {
	if (s5_vm_close[s5_vm_d].style.visibility != "visible") {
	if (s5_vm_close[s5_vm_d].offsetHeight > 1) {
		id_s5_close = s5_vm_close[s5_vm_d].id;
		s5_vm_effect_close();
		s5_fader_vm_hide();
	}
	}
	}
	if (s5_vm_first == "0") {
	s5_vm_loaded();
	s5_vm_first = s5_vm_first + 1;
	}
}
	
var theId_vm;
var theId_vm_holder = 0;
function grabID_s5_vm(e) {
if (s5_vm_open_check == "0") {
var targ;
if (!e) var e = window.event;
if (e.target) targ = e.target;
else if (e.srcElement) targ = e.srcElement;
if (targ.nodeType == 3)
targ = targ.parentNode;
theId_vm=targ.id
}
}

document.getElementById("s5_vm_main").onmouseover=grabID_s5_vm;

var s5_vm_transition_height;
var id_s5_vm;

function s5_vm_load() {
if (s5_vm_open_check == "0") {
window.setTimeout('s5_vm_load2()',50);
}
else {
return false;
}
}

function s5_vm_load2() {
if (theId_vm) {
if (theId_vm_holder == "0") {
theId_vm_holder = theId_vm;
s5_vm_close_divs();
}
else if (theId_vm.charAt(8) != theId_vm_holder.charAt(8)) {
theId_vm_holder = theId_vm;
s5_vm_close_divs();
}
}
}

function s5_vm_loaded() {
if (theId_vm) {
if (theId_vm.charAt(8) >= 0) {

			var s5_id_text_outer = "s5_vm_do";
			var s5_id_num1_outer = theId_vm.charAt(8);
			var s5_id_num2_outer = 0;
			var s5_id_num3_outer = 0;
			s5_id_num2_outer = theId_vm.charAt(9);
			s5_id_num3_outer = theId_vm.charAt(10);
			s5_id_num4_outer = theId_vm.charAt(11);
			s5_vm_div_outer = s5_id_text_outer + s5_id_num1_outer + s5_id_num2_outer + s5_id_num3_outer + s5_id_num4_outer;
			id_s5_vm_outer = s5_vm_div_outer;
			
			var s5_id_text_inner = "s5_vm_di";
			var s5_id_num1_inner = theId_vm.charAt(8);
			var s5_id_num2_inner = 0;
			var s5_id_num3_inner = 0;
			s5_id_num2_inner = theId_vm.charAt(9);
			s5_id_num3_inner = theId_vm.charAt(10);
			s5_id_num4_inner = theId_vm.charAt(11);
			s5_vm_div_inner = s5_id_text_inner + s5_id_num1_inner + s5_id_num2_inner + s5_id_num3_inner + s5_id_num4_inner;
			id_s5_vm = s5_vm_div_inner;
			
			var s5_vm_num1 = s5_vm_marginbottom_holder.charAt(0);
			var s5_vm_num2 = s5_vm_marginbottom_holder.charAt(1);
			if (s5_vm_num2 >= 0) {
			s5_vm_marginbottom = s5_vm_num1 + s5_vm_num2;
			}
			else {
			s5_vm_marginbottom = s5_vm_num1;
			}
			
			s5_vm_marginbottom = s5_vm_marginbottom*1;
			
			s5_vm_transition_height = document.getElementById(s5_vm_div_inner).offsetHeight;
			
			if (document.getElementById(s5_vm_div_outer).offsetHeight < 1) {	
			if (fadespeed != "0") {
			document.getElementById(s5_vm_div_outer).style.opacity = (0);
			document.getElementById(s5_vm_div_outer).style.MozOpacity = (0);
			document.getElementById(s5_vm_div_outer).style.KhtmlOpacity = (0);
			document.getElementById(s5_vm_div_outer).style.filter = "alpha(opacity=" + 0 + ")";	
			}
			s5_fader_vm_show();			
			s5_vm_effect_open();
			}

	}
	}
}

var myInterval_s5_vm_open = 0;
var s5_vm_spaco2;

function s5_vm_effect_open() {
clearInterval(myInterval_s5_vm_open);
myInterval_s5_vm_open = 0;
myInterval_s5_vm_open = window.setInterval("s5_fader_vm_effect_open()",s5_vm_inc1);

if (s5_vm_transition_height < 60) {
s5_vm_spaco2 = s5_vm_spaco - 3;
}

if (s5_vm_transition_height >= 60 && s5_vm_transition_height <= 200) {
s5_vm_spaco2 = s5_vm_spaco;
}

if (s5_vm_transition_height > 200) {
s5_vm_spaco2 = s5_vm_spaco + 5;
}

}

function s5_fader_vm_effect_open() {
			
			if (document.getElementById(s5_vm_div_outer).offsetHeight > (s5_vm_transition_height - (s5_vm_spaco2 + 1))) {
			s5_vm_open_check = 0;
			}
			
			if (document.getElementById(s5_vm_div_outer).offsetHeight < (s5_vm_transition_height - s5_vm_spaco2)) {
					document.getElementById(s5_vm_div_outer).style.height = document.getElementById(s5_vm_div_outer).offsetHeight + s5_vm_spaco2 + "px";
			}
			
			else {
			document.getElementById(s5_vm_div_outer).style.height = s5_vm_transition_height + "px";
			window.clearInterval(myInterval_s5_vm_open);
			myInterval_s5_vm_open = 0;			
			}
}

var myInterval_s5_vm_close = 0;
var s5_vm_close_height;
var s5_vm_spacc2;

function s5_vm_effect_close() {
s5_vm_close_height = document.getElementById(s5_vm_div_outer).offsetHeight;

if (s5_vm_close_height < 60) {
s5_vm_spacc2 = s5_vm_spacc - 3;
}

if (s5_vm_close_height >= 60 && s5_vm_close_height <= 200) {
s5_vm_spacc2 = s5_vm_spacc;
}

if (s5_vm_close_height > 200) {
s5_vm_spacc2 = s5_vm_spacc + 5;
}

clearInterval(myInterval_s5_vm_close);
myInterval_s5_vm_close = 0;
myInterval_s5_vm_close = window.setInterval("s5_fader_vm_effect_close()",s5_vm_inc2);
}

function s5_fader_vm_effect_close() {
			
			if (document.getElementById(id_s5_close).offsetHeight > s5_vm_spacc2) {
				document.getElementById(id_s5_close).style.height = document.getElementById(id_s5_close).offsetHeight - s5_vm_spacc2 + "px";
			}
			
			else {
			document.getElementById(id_s5_close).style.height = 0 + "px";
			window.clearInterval(myInterval_s5_vm_close);
			myInterval_s5_vm_close = 0;
			s5_vm_loaded();
			}
}

function s5_fader_vm_show() {
	opacity_s5_vm(id_s5_vm_outer, 0, 100, fadespeed);
}

function s5_fader_vm_hide() {
if (fadespeed != "0") {
	opacity_s5_vm(id_s5_close, 100, 0, fadespeed);
	}
	if (fadespeed == "0") {
	opacity_s5_vm(id_s5_close, 0, 100, fadespeed);
	}
}

var is_ie_s5_vm/*@cc_on = {
  // quirksmode : (document.compatMode=="BackCompat"),
  version : parseFloat(navigator.appVersion.match(/MSIE (.+?);/)[1])
}@*/;

function opacity_s5_vm(id_s5_vm, opacStart_s5_vm, opacEnd_s5_vm, millisec_s5_vm) {
	//speed for each frame
	var speed_s5_vm = Math.round(millisec_s5_vm / 100);
	var timer_s5_vm = 0;
	//determine the direction for the blending, if start and end are the same nothing happens
	if(opacStart_s5_vm > opacEnd_s5_vm) {
		for(i = opacStart_s5_vm; i >= opacEnd_s5_vm; i--) {
			setTimeout("changeOpac_s5_vm(" + i + ",'" + id_s5_vm + "')",(timer_s5_vm * speed_s5_vm));
			timer_s5_vm++;
		}
	} else if(opacStart_s5_vm < opacEnd_s5_vm) {
		for(i = opacStart_s5_vm; i <= opacEnd_s5_vm; i++)
			{
			setTimeout("changeOpac_s5_vm(" + i + ",'" + id_s5_vm + "')",(timer_s5_vm * speed_s5_vm));
			timer_s5_vm++;
		}
	}
}

//change the opacity for different browsers
function changeOpac_s5_vm(opacity_s5_vm, id_s5_vm) {
	var object_s5_vm = document.getElementById(id_s5_vm).style; 
	object_s5_vm.opacity = (opacity_s5_vm / 100);
	object_s5_vm.MozOpacity = (opacity_s5_vm / 100);
	object_s5_vm.KhtmlOpacity = (opacity_s5_vm / 100);
    object_s5_vm.filter = "alpha(opacity=" + opacity_s5_vm + ")";
}

function blendimage_s5_vm(divid_s5_vm, imageid_s5_vm, imagefile_s5_vm, millisec_s5_vm) {
	var speed_s5_vm = Math.round(millisec_s5_vm / 100);
	var timer_s5_vm = 0;
	
	//set the current image as background
	document.getElementById(divid_s5_vm).style.backgroundImage = "url(" + document.getElementById(imageid_s5_vm).src + ")";
	
	//make image transparent
	changeOpac_s5_vm(0, imageid_s5_vm);
	
	//make new image
	document.getElementById(imageid_s5_vm).src = imagefile;

	//fade in image
	for(i = 0; i <= 100; i++) {
		setTimeout("changeOpac_s5_vm(" + i + ",'" + imageid_s5_vm + "')",(timer_s5_vm * speed_s5_vm));
		timer_s5_vm++;
	}
}

function currentOpac_s5_vm(id_s5_vm, opacEnd_s5_vm, millisec_s5_vm) {
	//standard opacity is 100
	var currentOpac_s5_vm = 100;
	
	//if the element has an opacity set, get it
	if(document.getElementById(id_s5_vm).style.opacity < 100) {
		currentOpac_s5_vm = document.getElementById(id_s5_vm).style.opacity * 100;
	}

	//call for the function that changes the opacity
	opacity_s5_vm(id_s5_vm, currentOpac_s5_vm, opacEnd_s5_vm, millisec_s5_vm)
}



function s5_get_li_height() {
var s5_vm_acc_li = document.getElementById("s5_vm_container").getElementsByTagName("LI");
	var s5_vm_acc_z;
	var s5_vm_acc_cc = 1;
	for (var s5_vm_acc_z=0; s5_vm_acc_z<s5_vm_acc_li.length; s5_vm_acc_z++) {
		if (s5_vm_acc_li[s5_vm_acc_z].offsetHeight > 50 && s5_vm_acc_li[s5_vm_acc_z].className == "level1wc") {
			s5_vm_acc_li[s5_vm_acc_z].style.background = "url(" + s5_vm_active_button + ") no-repeat top right";
		}
		else if (s5_vm_acc_li[s5_vm_acc_z].offsetHeight < 50 && s5_vm_acc_li[s5_vm_acc_z].className == "level1wc") {
			if (s5_vm_acc_li[s5_vm_acc_z].style.background != "url(" + s5_vm_non_active_button + ") no-repeat top right") {
				s5_vm_acc_li[s5_vm_acc_z].style.background = "url(" + s5_vm_non_active_button + ") no-repeat top right";
			}
		}
}
}

var myInter_s5_vm_acc;
myInter_s5_vm_acc = window.setInterval("s5_get_li_height()",100);