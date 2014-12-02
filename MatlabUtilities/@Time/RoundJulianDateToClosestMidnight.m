function fRoundedJulianDate = RoundJulianDateToClosestMidnight( fOriginalJulianDate )
	%
	fNextMidnight		= Time.GetNextMidnight( fOriginalJulianDate );
	fPreviousMidnight	= Time.GetPreviousMidnight( fOriginalJulianDate );
	%
	if( 	abs( fOriginalJulianDate - fNextMidnight )		...
		<	abs( fOriginalJulianDate - fPreviousMidnight )	)
		%
		fRoundedJulianDate = fNextMidnight;
		%
	else%
		%
		fRoundedJulianDate = fPreviousMidnight;
		%
	end;%
	%
end % function

