/**
DO NOT REMOVE

S5 Drop Down Cart Javascript
Author: Shape 5 - Professional Template Community
Available for download at www.shape5.com
Copyright 2008 Shape 5 LLC
http://www.shape5.com

DO NOT REMOVE
*/



var clicked_dd = 0;
var s5_opening = 0;
var s5_closing = 0;
var dd_height2 = 0;

var s5_browser=navigator.appName;

function s5_dd_close_check() {
if (document.getElementById("s5_dropdowncart").offsetHeight != "0") {
s5_tab_dd();
shiftOpacity_dd('s5_dropdowncart');
}
}


function s5_tab_dd() {
if (clicked_dd == 0) {
open_dd();
document.getElementById("s5_dropdowncart").style.display = 'block';
}

else {
close_dd();
}
}


function open_dd() {
window.setTimeout('increase()',1);
}


function increase() {
if (s5_browser.indexOf("MSIE 6.0") > 0) {
	if (document.getElementById("s5_vm_currencies")) {
	document.getElementById("s5_vm_currencies").style.visibility = "hidden";
	}
}

if (dd_height > (dd_height2)) {

s5_opening = 1;
dd_height2 = dd_height2 + user_speed;
document.getElementById("s5_dropdowncart").style.height = (dd_height2) +'px';
open_dd();

}

else {
clicked_dd = 1;
s5_opening = 0;
dd_height = document.getElementById("s5_dropdowncart").offsetHeight;
}

}

function close_dd() {
window.setTimeout('decrease()',1);
}


function decrease() {
if (s5_browser.indexOf("MSIE 6.0") > 0) {
	if (document.getElementById("s5_vm_currencies")) {
	document.getElementById("s5_vm_currencies").style.visibility = "visible";
	}
}

if (dd_height > 0) {
s5_closing = 1;
document.getElementById("s5_dropdowncart").style.height = (dd_height) +'px';
dd_height = (dd_height - user_speed) - user_speed;
close_dd();

}

else {
clicked_dd = 0;
s5_closing = 0;
document.getElementById("s5_dropdowncart").style.height = 0 +'px';
dd_height = dd_height_close;
dd_height2 = 0;
document.getElementById("s5_dropdowncart").style.display = 'none';
}

}






function opacity(id, opacStart, opacEnd, millisec) {
	//speed for each frame
	var speed = Math.round(millisec / 300);
	var timer = 0;
	//determine the direction for the blending, if start and end are the same nothing happens
	if(opacStart > opacEnd) {
		for(i = opacStart; i >= opacEnd; i--) {
			setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
			timer++;
		}
	} else if(opacStart < opacEnd) {
		for(i = opacStart; i <= opacEnd; i++)
			{
			setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
			timer++;
		}
	}
}

//change the opacity for different browsers
function changeOpac(opacity, id) {
	var object = document.getElementById(id).style; 
	object.opacity = (opacity / 100);
	object.MozOpacity = (opacity / 100);
	object.KhtmlOpacity = (opacity / 100);
	object.filter = "alpha(opacity=" + opacity + ")";
}

function shiftOpacity_dd(id) {
	//if an element is invisible, make it visible, else make it ivisible
	if(document.getElementById(id).style.height == '0px') {
		opacity(id, 0, 100, 1000);
	} else {
		opacity(id, 100, 0, 1000);
	}
}

function shiftOpacity_dd_open(id) {
		opacity(id, 100, 0, 1);
}

function blendimage(divid, imageid, imagefile, millisec) {
	var speed = Math.round(millisec / 100);
	var timer = 0;
	
	//set the current image as background
	document.getElementById(divid).style.backgroundImage = "url(" + document.getElementById(imageid).src + ")";
	
	//make image transparent
	changeOpac(0, imageid);
	
	//make new image
	document.getElementById(imageid).src = imagefile;

	//fade in image
	for(i = 0; i <= 100; i++) {
		setTimeout("changeOpac(" + i + ",'" + imageid + "')",(timer * speed));
		timer++;
	}
}

function currentOpac(id, opacEnd, millisec) {
	//standard opacity is 100
	var currentOpac = 100;
	
	//if the element has an opacity set, get it
	if(document.getElementById(id).style.opacity < 100) {
		currentOpac = document.getElementById(id).style.opacity * 100;
	}

	//call for the function that changes the opacity
	opacity(id, currentOpac, opacEnd, millisec)
}

shiftOpacity_dd_open('s5_dropdowncart');


var t;
function bottom(targetYPos) {
    var y = parent.document[getDocElName()].scrollTop;
    if (y<targetYPos){
        parent.window.scrollBy(0,20);
        t=setTimeout('bottom('+targetYPos+')',10);
    }
    else clearTimeout(t);
    return false;
}

function top() {
    var y = document[getDocElName()].scrollTop;
    if (y!=0){
        parent.window.scrollBy(0,-20);
        t=setTimeout('top()',10);
    }
    else clearTimeout(t);
    return false;
}

function getDocElName(){
    if(parent.document.compatMode && parent.document.compatMode == "CSS1Compat"){
        return "documentElement";
    }
    else{
        return "body";
    }
}





var s5_dd_t;
function s5_dd_bottom(s5_dd_targetYPos) {
    var s5_dd_y = document[s5_dd_getDocElName()].scrollTop;
    if (s5_dd_y<s5_dd_targetYPos){
        window.scrollBy(0,20);
        s5_dd_t=setTimeout('s5_dd_bottom('+s5_dd_targetYPos+')',10);
    }
    else clearTimeout(s5_dd_t);
    return false;
}

function s5_dd_top() {
    var s5_dd_y = document[s5_dd_getDocElName()].scrollTop;
    if (s5_dd_y!=0){
        window.scrollBy(0,-80);
        s5_dd_t=setTimeout('s5_dd_top()',1);
    }
    else clearTimeout(s5_dd_t);
    return false;
}

function s5_dd_getDocElName(){
        return "documentElement";
}


function s5_dd_find_top() {
var s5_dd_top_pos = document.getElementById("vmCartModule").offsetTop;
s5_dd_top(0);
}
