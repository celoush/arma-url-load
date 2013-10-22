[1013,1014] spawn {

	disableSerialization;

	sleep 1;
	_ok = createDialog "Celo_RscTestHtml";


	_displayNumber = [_this, 0, 0, [0]] call BIS_fnc_param;
	_ctrlNumber = [_this, 1, 0, [0]] call BIS_fnc_param;

	_display = findDisplay _displayNumber;

	_url = "http://localhost/somescript.php";

	_ctrlHTML = _display displayCtrl _ctrlNumber;

	_previousAcc = accTime;
	setAccTime 0.01;
	_ctrlHTML htmlLoad _url;

	closeDialog _displayNumber;
	setAccTime _previousAcc;

};
