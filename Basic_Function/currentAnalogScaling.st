FUNCTION_BLOCK currentAnalogScaling
VAR_INPUT
	iSensorValue : INT;
	sensorMaxValue : REAL;
	sensorMinValue : REAL;
END_VAR
VAR_OUTPUT
	error : WSTRING := errorCode;
	outValue :REAL := scalingValue;
END_VAR
VAR
	iRawValue : INT := iSensorValue; 
	iMaxValue : INT;
	iMinValue : INT;
	sMaxValue : REAL :=sensorMaxValue;
	sMinValue : REAL :=sensorMinValue;
	scalingValue : REAL;
	errorSensor : BOOL;
	errorCode : WSTRING;
END_VAR

IF iRawValue < 4000 OR iRawValue > 20000 THEN
	errorSensor := TRUE;
	IF iRawValue < 4000 THEN
		errorCode := "Sensor disconnected, please check sensor";
		END_IF
	IF iRawValue > 20000 THEN
		errorCode := "Overcurrent, please check sensor";
		END_IF
ELSE
	scalingValue := (sMaxValue - sMinValue)/(iMaxValue - iMinValue) *(iRawValue - iMinValue);
END_IF
    
END_FUNCTION_BLOCK