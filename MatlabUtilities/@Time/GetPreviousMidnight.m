function fPreviousMidnight = GetPreviousMidnight( fJulianDate )
	%
	fNextMidnight = Time.GetNextMidnight( fJulianDate );
	%
	fPreviousMidnight = fNextMidnight - Time.GetJulianDay();
	%
end % function

