FUNCTION_BLOCK voltageAnalogScaling
VAR_INPUT
	vSensorValue : INT;
	sensorMaxValue : REAL;
	sensorMinValue : REAL;
END_VAR
VAR_OUTPUT
	error : WSTRING := errorCode;
	outValue :REAL := scalingValue;
END_VAR
VAR
	vRawValue : INT := iSensorValue; 
	vMaxValue : INT;
	vMinValue : INT;
	sMaxValue : REAL :=sensorMaxValue;
	sMinValue : REAL :=sensorMinValue;
	scalingValue : REAL;
	errorSensor : BOOL;
	errorCode : WSTRING;
END_VAR

IF vRawValue < 4000 OR vRawValue > 20000 THEN
	errorSensor := TRUE;
	IF vRawValue < 4000 THEN
		errorCode := "Sensor disconnected, please check sensor";
		END_IF
	IF vRawValue > 20000 THEN
		errorCode := "Overcurrent, please check sensor";
		END_IF
ELSE
	scalingValue := (sMaxValue - sMinValue)/(vMaxValue - vMinValue) *(vRawValue - vMinValue);
END_IF
    
END_FUNCTION_BLOCK