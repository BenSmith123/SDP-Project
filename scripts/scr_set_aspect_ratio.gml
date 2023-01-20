// called in the first room of the games creation code
// ^^ initialises the games room settings for scaling (16:9 ratio)

var base_w = display_get_width();
var base_h = display_get_height();
var aspect = base_w / base_h ; // get the GAME aspect ratio

/***** ignore portrait
if (display_get_width() < display_get_height())
    {
    //portrait
    var ww = min(base_w, display_get_width());
    var hh = ww / aspect;
    }
else
*******/
    
//landscape
var hh = min(base_h, display_get_height());
var ww = hh * aspect;
    
surface_resize(application_surface, ww, hh);

set_resolution()


