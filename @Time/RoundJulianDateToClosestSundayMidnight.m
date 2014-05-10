function fRoundedJulianDate = RoundJulianDateToClosestSundayMidnight( fOriginalJulianDate )
	%
	fNextSundayMidnight		= Time.GetNextSundayMidnight( fOriginalJulianDate );
	fPreviousSundayMidnight	= Time.GetPreviousSundayMidnight( fOriginalJulianDate );
	%
	if( 	abs( fOriginalJulianDate - fNextSundayMidnight )		...
		<	abs( fOriginalJulianDate - fPreviousSundayMidnight )	)
		%
		fRoundedJulianDate = fNextSundayMidnight;
		%
	else%
		%
		fRoundedJulianDate = fPreviousSundayMidnight;
		%
	end;%
	%
end % function

