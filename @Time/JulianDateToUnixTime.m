function iUnixTime = JulianDateToUnixTime( fJulianDate )
	%
	[iYear , iMonth, iDay, iHour, iMinute, iSecond ]	...
			= Time.JulianDateToGregorianDate(fJulianDate);
	%
	aiAskedGregorianDate = [iYear, iMonth, iDay, iHour, iMinute, iSecond ];
	aiReferenceGregorianDate = [1970 01 01 00 00 00];
	%
	iUnixTime = etime(aiAskedGregorianDate, aiReferenceGregorianDate );
	%
	%
end %

