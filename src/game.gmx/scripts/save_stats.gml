///save_stats() - saves game stats
ini_open("stats.ini")
for(var i=0;i<stats_count;i++){
    ini_write_real("stats","stats_"+string(i),stats_val[i])
}
ini_close()
