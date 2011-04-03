/**
 * Grab the intel.
 * Argument 0 is the player who is grabbing it.
 */

recordEventInLog(10,argument0.team,argument0.name);
argument0.caps += 0.5;
sound_play(IntelGetSnd);

if global.myself == argument0 {
    if !instance_exists(NoticeO) instance_create(0,0,NoticeO);
    with NoticeO notice = NOTICE_HABENFUSSBALL;
}

with(Fussball) instance_destroy();

if(argument0.object != -1) {
    argument0.object.fussball = true;
   // argument0.object.animationOffset = CHARACTER_ANIMATION_INTEL;
    argument0.object.cloak = 0;
}
