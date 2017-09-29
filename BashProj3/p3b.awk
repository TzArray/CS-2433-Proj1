BEGIN   {   print "Name          Flight      Seats  Total Cost"
            custTotal=0; flightTotal=0; custName=""; }
{
if($1 == "CUST")
    custName=$6;
else if($1 == "RESERVE")
{
        printf "%-12s  %-10s%7i%12.2f\n", custName, $2, $3, flightTotal=$4*$3;
        custTotal+=flightTotal;
        flights[$2]+=$3;
}
else if($1 == "ENDCUST")
{
    printf "                          %s%12.2f\n", "Total", custTotal;
    custTotal=0;
}
}
END {   printf "%-10s%13s\n", "Flight", "Total Seats";
        for(i in flights)
            printf "%-10s%10i\n", i, flights[i];
    }