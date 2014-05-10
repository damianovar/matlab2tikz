function bIsSundayMidnight = IsSundayMidnight( fJulianDate, fToleranceInSeconds )
	%
	switch( nargin )
		%
		case 1
			fToleranceInSeconds = 60;
		%
		case 2
			% do nothing
		%
		otherwise
			error('wrong number of parameters');
		%
	end;%
	%
	% by default, it is not Sunday midnight
	bIsSundayMidnight = false;
	%
	% then discriminate among midnights or not
	if( Time.IsMidnight( fJulianDate, fToleranceInSeconds ) )
		%
		% we need to discriminate a Sunday 23:59:59 with a Monday 00:00:01
		iNumberOfSecondsInTheDay = Time.JulianDateToSecondOfDay( fJulianDate );
		%
		% get which day it is
		iDayInTheWeek = Time.JulianDateToDayOfWeek( fJulianDate );
		%
		% case: check if it is Monday
		if( iNumberOfSecondsInTheDay < fToleranceInSeconds )
			%
			% say that it is Sunday midnight if it is Monday
			if( iDayInTheWeek == 0 )
				%
				bIsSundayMidnight = true;
				%
			end;%
			%
		end;%
		%
		% case: check if it is Sunday
		if( iNumberOfSecondsInTheDay > 24 * 60 * 60 - fToleranceInSeconds );
			%
			% say that it is Sunday midnight if it is Sunday
			if( iDayInTheWeek == 6 )
				%
				bIsSundayMidnight = true;
				%
			end;%
			%
		end;%
		%
	end;%
	%
end % function

