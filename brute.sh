for SRV_NAME in `cat ./someserver_list`

for COM in $(cat $COMMUNITY_FILE); DO

SNMP_TEST=$(/usr/bin/snmpwalk -v2c -t 3 -r 1 -c $COM $SRV_NAME sysName 2>/dev/null | awk -F ":" '{ print $4}')

         if [ "$SNMP_TEST" != "" ]; then
                                                                /bin/echo "$SRV_NAME,  Hit with string  $COM"
         else
                                                               /bin/echo "$SVR_NAME, Not a hit with $COM"
         done

done
