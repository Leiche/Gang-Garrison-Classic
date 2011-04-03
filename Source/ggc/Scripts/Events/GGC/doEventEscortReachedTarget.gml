/**
 * The escord player given in argument0 has just reached the target.
 */

sound_play(IntelPutSnd);
recordEventInLog(8, argument0.team, argument0.name);
argument0.caps += 1;
if(argument0.team == TEAM_RED) {
    global.redCaps += 1;
} else if(argument0.team == TEAM_BLUE) {
    global.blueCaps += 1;
} else {
    exit;
}
