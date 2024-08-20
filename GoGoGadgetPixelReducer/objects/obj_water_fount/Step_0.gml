/// @description Insert description here
// You can write your code in this editor

if waterCreateTimer > 0{
	waterCreateTimer--;
} else {
	waterCreateTimer = 30;
	var water1 = instance_create_layer(x-4,y+irandom_range(-2,4),"Instances",obj_water_particle);
		water1.momVel = 1.75;
	var water2 = instance_create_layer(x-3,y+irandom_range(-2,4),"Instances",obj_water_particle);
		water2.momVel = 2;
	var water3 = instance_create_layer(x-2,y+irandom_range(-2,4),"Instances",obj_water_particle);
		water3.momVel = 2.25;
	var water4 = instance_create_layer(x-1,y+irandom_range(-2,4),"Instances",obj_water_particle);
		water4.momVel = 2.5;
	var wWater5 = instance_create_layer(x,y+irandom_range(-2,4),"Instances",obj_water_particle);
		wWater5.momVel = -2.25;
	var wWater6 = instance_create_layer(x+1,y+irandom_range(-2,4),"Instances",obj_water_particle);
		wWater6.momVel = -2;
	var wWater7 = instance_create_layer(x+2,y+irandom_range(-2,4),"Instances",obj_water_particle);
		wWater7.momVel = -1.75;
	var wWater8 = instance_create_layer(x+3,y+irandom_range(-2,4),"Instances",obj_water_particle);
		wWater8.momVel = -2.5;
}