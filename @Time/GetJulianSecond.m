function fJulianSecond = GetJulianSecond()
	%
	fJulianSecond =												...
			Time.GregorianDateToJulianDate(2010, 1, 1, 1, 1, 1)	...
		-	Time.GregorianDateToJulianDate(2010, 1, 1, 1, 1, 0);
	%
end %
