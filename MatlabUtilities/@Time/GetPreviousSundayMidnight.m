function fPreviousSundayMidnight = GetPreviousSundayMidnight( fJulianDate )
	%
	fNextSundayMidnight = Time.GetNextSundayMidnight( fJulianDate );
	%
	fPreviousSundayMidnight = fNextSundayMidnight - 7 * Time.GetJulianDay();
	%
end % function

