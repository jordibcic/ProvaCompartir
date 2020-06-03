extends RigidBody2D


var velocitat_pala = 10
var angle_inicial = deg2rad(0) # convertim l'angle de graus a radians
var angle_final = deg2rad(-50) # convertim l'angle de graus a radians

# Utilitzem el _physics_process en comptes del _process !!!!!
# Així mira el moviment molt més sovint que no pas cada vegada que pinta.
func _physics_process(delta):
	# Si estàs prement la tecla que toca
	if Input.is_action_pressed("ui_accept"):
		# Canvia la rotació des del seu angle actual fins a l'angle final
		# a passos de delta * velocitat
		rotation = lerp_angle(rotation, angle_final, delta * velocitat_pala)
	else: # Si no estàs tocant la tecla que toca
		# Canvia la rotació des del seu angle actual fins a l'angle inicial
		# a passos de delta * velocitat
		rotation = lerp_angle(rotation, angle_inicial, delta * velocitat_pala)
