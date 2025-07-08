PROGRAM PLC_PRG
VAR
	//control all
	pumpAll : BOOL;
	drainAll : BOOL;
	overrideStart : BOOL;
	//var tank 1
	localStart1 : BOOL;
	startPump1 : BOOL;
	drainPump1 : BOOL;
	capacity1 : INT;
	full1 : BOOL;
	//var tank 2
	localStart2 : BOOL;
	startPump2 : BOOL;
	drainPump2 : BOOL;
	capacity2 : INT;
	full2 : BOOL;
	
	//function define
	tank1Control : Tank1;
	tank2Control : Tank2;
	mode: INT;
	c1 : currentAnalogScaling;
	c2 : currentAnalogScaling;
END_VAR



    
END_PROGRAM



