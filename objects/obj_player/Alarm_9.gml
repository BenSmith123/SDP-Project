/// @description deal_damage_to_mob()

var damage = calculate_damage(attack, accuracy, other.defence)
deal_damage_to_mob(enemy, damage)
with (enemy) { effect_create_spark_red_melee() }
