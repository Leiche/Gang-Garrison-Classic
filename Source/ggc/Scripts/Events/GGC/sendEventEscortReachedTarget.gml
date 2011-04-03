/**
 * argument0: The escort player who reached the target
 */
 
writebyte(ESCORT_REACHEDTARGET, global.eventBuffer);
writebyte(ds_list_find_index(global.players, argument0), global.eventBuffer);
