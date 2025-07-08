FUNCTION_BLOCK currentAnalogScaling
VAR_INPUT
	iSensorValue : INT;
	sensorMaxValue : REAL;
	sensorMinValue : REAL;
    errorTresholdDown : INT;
    errorTresholdUp : INT;
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
    errorTresDown : INT := errorTresholdDown;
    errorTresUp : INT := errorTresholdUp;
END_VAR

IF vRawValue < errorTresDown OR vRawValue > errorTresDown THEN
	errorSensor := TRUE;
	IF vRawValue < errorTresDown THEN
		errorCode := "Sensor disconnected, please check sensor";
		END_IF
	IF vRawValue > errorTresUp THEN
		errorCode := "Overcurrent, please check sensor";
		END_IF
ELSE
	scalingValue := (sMaxValue - sMinValue)/(vMaxValue - vMinValue) *(vRawValue - vMinValue);
END_IF
    
END_FUNCTION_BLOCK