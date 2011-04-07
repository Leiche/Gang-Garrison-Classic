/**
 * The player given in argument0 has just recovered the intel for his team.
 */

sound_play(IntelPutSnd);
recordEventInLog(11, argument0.team, argument0.name);
argument0.caps += 1;
instance_create(FussballBase.x,FussballBase.y,Fussball);
if(argument0.team == TEAM_RED) {
    global.redCaps += 1;
} else if(argument0.team == TEAM_BLUE) {
    global.blueCaps += 1;
} else {
    exit;
}


if(argument0.object != -1) {
    argument0.object.fussball = false;
    argument0.object.animationOffset = CHARACTER_ANIMATION_NORMAL;
}

    with Player {
//        canSpawn = 1;
        if object != -1 with object instance_destroy();
        alarm[5] = 1;
    }
