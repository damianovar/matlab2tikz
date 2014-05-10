function fNextSundayMidnight = GetNextSundayMidnight( fJulianDate )
	%
	[	iYear,				...
		iMonth,				...
		iDay,				...
		iHour,				...
		iMinutes,			...
		iSeconds	] = 	...
			Time.JulianDateToGregorianDate( fJulianDate );
	%
	iCurrentDayOfTheWeek = Time.JulianDateToDayOfWeek( fJulianDate );
	%
	switch( iCurrentDayOfTheWeek )
		%
		case 0 % monday
			iNextMonday = iDay + 7;
% 			fprintf('monday\n');
		%
		case 1 % tuesday
			iNextMonday = iDay + 6;
% 			fprintf('tuesday\n');
		%
		case 2 % wednesday
			iNextMonday = iDay + 5;
% 			fprintf('wednesday\n');
		%
		case 3 % thursday
			iNextMonday = iDay + 4;
% 			fprintf('thursday\n');
		%
		case 4 % friday
			iNextMonday = iDay + 3;
% 			fprintf('friday\n');
		%
		case 5 % saturday
			iNextMonday = iDay + 2;
% 			fprintf('saturday\n');
		%
		case 6 % sunday
			iNextMonday = iDay + 1;
% 			fprintf('sunday\n');
		%
	end;%
	%
	fNextSundayMidnight = Time.GregorianDateToJulianDate(	iYear,			...
															iMonth,			...
															iNextMonday,	...
															0,				...
															0,				...
															0				);
	%
	% DEBUG
% 	Time.JulianDateToString( fNextSundayMidnight )
% 	Time.JulianDateToDayOfWeek( fNextSundayMidnight )
	%
end % function

