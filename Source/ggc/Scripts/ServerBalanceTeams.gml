//auto balance 
if global.autobalance == 1 && !instance_exists(ArenaHUD) {
    redteam = 0;
    blueteam = 0;  
    for(i=0; i<ds_list_size(global.players); i+=1) {
        player = ds_list_find_value(global.players, i);
        if(player.team == TEAM_RED) {
            redteam+=1;
        } else if (player.team == TEAM_BLUE) {
            blueteam+=1;    
        }
    }

    if(redteam >= blueteam + 2) {
        balance=TEAM_RED;
    } else if(blueteam >= redteam + 2) {
        balance=TEAM_BLUE;
    } else {
        exit;
    }
    
    if(serverbalance==0) {
        writebyte(BALANCE,global.eventBuffer);
        writebyte(255,global.eventBuffer);
        if !instance_exists(Balancer) instance_create(x,y,Balancer);
        with(Balancer) notice=0;
        serverbalance=1;
    } else if(serverbalance == 1 && balancecounter >= 300) {
        points=9001;
        balanceplayer=-1;
        for(i=0; i<ds_list_size(global.players); i+=1) {
            player = ds_list_find_value(global.players, i);
            if(player.team == balance && player.kills+(player.caps*2)+player.healpoints < points) {
                points=player.kills+(player.caps*2)+player.healpoints;
                balanceplayer=player;
            }
        }
        
        serverbalance=0;
        balancecounter=0;
        
  if(balanceplayer.team==TEAM_RED) {
            balanceplayer.team = TEAM_BLUE;
        } else {
            balanceplayer.team = TEAM_RED;
        }
        
        if(balanceplayer.object != -1) {
            with(balanceplayer.object) {
                instance_destroy();
            }
            balanceplayer.object = -1;
            balanceplayer.alarm[5] = global.Server_Respawntime;
        }
        
        writebyte(BALANCE,global.eventBuffer);
        writebyte(ds_list_find_index(global.players, balanceplayer), global.eventBuffer);
        if !instance_exists(Balancer) instance_create(x,y,Balancer);
        Balancer.name=player.name;
        with (Balancer) notice=1;
    } else {
        serverbalance=0;
        balancecounter=0;
    }
} 
