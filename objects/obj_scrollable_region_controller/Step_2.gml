
// center the controller
x = xstart - region_width/2

scroll_disabled = scrollable_height < region_height

scrollBottom = scrollable_height + scrollY

scrollY += round(dragData);
dragData *= 0.9;


if(scrollY > scrollTop){
	scrollY = lerp(scrollY, scrollTop, 0.1);
}
else if(scrollY < -scrollBottom){
	scrollY = lerp(scrollY, -scrollBottom, 0.1);
}