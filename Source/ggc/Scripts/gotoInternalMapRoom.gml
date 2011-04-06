// switches to the internal map named in argument0
// returns 0 in success, -1 if the name isn't recognized

{
    switch(argument0) {
        case "ctf_2fortclassic":
            room_goto_fix(twofortclassic);
            break;
        case "ctf_well":
            room_goto_fix(classicwell);
            break;
        case "ctf_badlands":
            room_goto_fix(badlands);
            break;
        case "ctf_stonetwo":
            room_goto_fix(stonetwo);
            break;
        case "cp_warpath":
            room_goto_fix(warpath);
            break;
        case "cp_shortcap":
            room_goto_fix(shortcap);
            break;
      case "hh_frontaldanger":
            room_goto_fix(frontaldanger);
            break;
        case "hh_portalescape":
            room_goto_fix(portalescape);
            break;
        case "fb_warehouse":
            room_goto_fix(warehouse);
            break;
        /*
        case "ctf_waterway":
            room_goto_fix(Waterway);
            break;
        case "ctf_orange":
            room_goto_fix(Orange);
            break;
        case "cp_dirtbowl":
            room_goto_fix(Dirtbowl);
            break;
        case "cp_egypt":
            room_goto_fix(Egypt);
            break;
        case "arena_montane":
            room_goto_fix(Montane);
            break;
        case "arena_lumberyard":
            room_goto_fix(Lumberyard);
            break;
        case "gen_destroy":
            room_goto_fix(Destroy);
            break; */
        default:
            return -1;
            exit;
    }
    return 0;
}
