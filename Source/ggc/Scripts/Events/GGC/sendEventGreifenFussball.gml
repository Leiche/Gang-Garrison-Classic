/**
 * argument0: The player who grabbed the football
 */
 
writebyte(GREIFEN_FUSSBALL, global.eventBuffer);
writebyte(ds_list_find_index(global.players, argument0), global.eventBuffer);
