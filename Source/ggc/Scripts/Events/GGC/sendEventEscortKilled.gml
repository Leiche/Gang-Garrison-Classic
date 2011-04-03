/**
 * argument0: The player who killed the escort
 */
 
writebyte(ESCORT_KILLED, global.eventBuffer);
writebyte(ds_list_find_index(global.players, argument0), global.eventBuffer);
