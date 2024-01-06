
if instance_exists(obj_dialog_stats) { instance_destroy(obj_dialog_stats); exit }

// open inventory if no dialog already exists
if !instance_exists(obj_dialog_stats) 
{ 
	instance_create(0, 0, obj_dialog_stats)
}
