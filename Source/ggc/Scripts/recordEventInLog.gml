    // Record event in killlog
    // argument0: The type of event 1=capped point 2=defended point
    //            3=intel capped 4=intel defended 5=intel dropped
    //            6=taken intel 7=generator destoyed  
    // argument1: The team
    // argument2: The player(s) name(s)
        var message;
        if argument0==1 message = " captured the point!";
        else if argument0==2 message = " defended the point!";
        else if argument0==3 message = " captured the flag!";
        else if argument0==4 message = " defended the flag!";
        else if argument0==5 message = " dropped the flag!";
        else if argument0==6 message = " has taken the flag!";
        else if argument0==7 {
            if argument1==TEAM_RED team = "Red";
            else if argument1==TEAM_BLUE team = "Blue";
            message = team + " team has destroyed the enemy generator!";
        }
        else if argument0==8 message = " reached the Target!";
        else if argument0==9 message = " stopped the Escort!";
        else if argument0==10 message = " has taken the ball!"
        else if argument0==11 message = " scored a goal!"
        else if argument0==12 message = " got fouled!"
        else if argument0==13 message = " defended the goal!"
        
        with (KillLog) {
            map = ds_map_create();
                ds_map_add(map, 0, "");
                ds_map_add(map, 1, 0);
                ds_map_add(map, 2, -1);

                ds_map_add(map, 3, argument2 + message);
                ds_map_add(map, 4, argument1);
            
                        
            ds_list_add(kills, map);
            
            if (ds_list_size(kills) > 5) {
                ds_map_destroy(ds_list_find_value(kills, 0));
                ds_list_delete(kills, 0);
            }
            
            alarm[0] = 30*5;
        }
