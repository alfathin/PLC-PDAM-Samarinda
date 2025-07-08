FUNCTION_BLOCK switchON
VAR_INPUT
    power : BOOL;
END_VAR

VAR_OUTPUT
    status : BOOL :=load;
END_VAR

VAR
    state : BOOL := power;
    on : BOOL ;
    off : BOOL;
    load : BOOL;
END_VAR

IF state = TRUE THEN
    on := TRUE;
    off := FALSE;
    ELSE on := FALSE;
        off := TRUE;

//logic
load S= on;
load R=off


END_FUNCTION_BLOCK