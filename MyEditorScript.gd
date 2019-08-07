tool
extends EditorScript

func _run():
	var cube = MeshInstance.new()
	cube.set_name("Cube")
	cube.mesh = CubeMesh.new()
	get_scene().add_child(cube)
	cube.set_owner(get_scene())
	
	var camera = Camera.new()
	camera.translate(Vector3(0, 2.5, 5.5))
	get_scene().add_child(camera)
	camera.look_at(cube.translation, Vector3(0, 1, 0))
	camera.set_owner(get_scene())
	
	var sun = OmniLight.new()
	sun.translate(Vector3(0, 2, 0))
	get_scene().add_child(sun)
	sun.set_owner(get_scene())
