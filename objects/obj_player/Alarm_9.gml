/// @description deal_damage_to_mob()

var damage = calculate_damage(attack, accuracy, other.defence)
with (enemy) { effect_create_spark_red_melee() }
deal_damage_to_mob(enemy, damage)
