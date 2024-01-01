
// close inventory
if instance_exists(obj_dialog_inventory) { instance_destroy(obj_dialog_inventory); exit }

// open inventory if no dialog already exists
if !instance_exists(parent_dialog) 
{ 
	instance_create(0, 0, obj_dialog_inventory)
}
