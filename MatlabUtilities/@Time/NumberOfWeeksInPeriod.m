function iNumberOfWeeks = NumberOfWeeksInPeriod( fStartingJulianDate, fEndingJulianDate )
	%
	%
	%
	if( ~Time.IsSundayMidnight( fStartingJulianDate ) )
		%
		fStartingJulianDate	= Time.GetNextSundayMidnight( fStartingJulianDate );
		%
	else%
		%
		fStartingJulianDate	= Time.RoundJulianDateToClosestSundayMidnight( fStartingJulianDate );
		%
	end;%
	%
	%
	%
	if( ~Time.IsSundayMidnight( fEndingJulianDate ) )
		%
		fEndingJulianDate = Time.GetPreviousSundayMidnight( fEndingJulianDate );
		%
	else%
		%
		fEndingJulianDate = Time.RoundJulianDateToClosestSundayMidnight( fEndingJulianDate );
		%
	end;%
	%
	%
	%
	iNumberOfWeeks =									...
		floor											...
		(												...
			(fEndingJulianDate - fStartingJulianDate)	...
			/											...
			( Time.GetJulianDay() * 7 )					...
		);
	%
end % function

