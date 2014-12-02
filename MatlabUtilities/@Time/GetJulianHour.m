function fJulianHour = GetJulianHour()
	%
	fJulianHour =												...
			Time.GregorianDateToJulianDate(2010, 1, 1, 1, 0, 0)	...
		-	Time.GregorianDateToJulianDate(2010, 1, 1, 0, 0, 0);
	%
end %
