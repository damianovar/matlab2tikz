function fCurrentJulianDay = GetCurrentJulianDay()
	%
	aiCurrentGregorianDate = fix(clock);
	fCurrentJulianDay = Time.GregorianDateToJulianDate(	aiCurrentGregorianDate(1),	...
														aiCurrentGregorianDate(2),	...
														aiCurrentGregorianDate(3),	...
														0, 							...
														0, 							...
														0							);
	%
end % function

