elements = layer_get_all_elements("Gun");
for (var i = 0; i < array_length_1d(elements); i++)
{
	if (layer_get_element_type(elements[i]) == layerelementtype_instance)
	{
	var layerelement = elements[i];
	var inst = layer_instance_get_instance(layerelement);
	instance_destroy(inst)
	}
}