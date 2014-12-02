function iYear = JulianDateToYear( fJulianDate )
	%
	ijd = floor(fJulianDate + 0.5);
	%
	fjd = fJulianDate - ijd + 0.5;
	%
	second = 86400 * fjd;
	hour   = fix(second/3600);           % get number of hours
	second = second - 3600*hour;         % remove the hours
	minute = fix(second/60);             % get number of minutes
	second = second - 60*minute;         %#ok<NASGU> % remove the minutes	
	%
	a = ijd + 32044;
	b = floor((4 * a + 3) / 146097);
	c = a - floor((b * 146097) / 4);
	%
	d = floor((4 * c + 3) / 1461);
	e = c - floor((1461 * d) / 4);
	m = floor((5 * e + 2) / 153);
	%
	iYear  = b * 100 + d - 4800 + floor(m / 10);
	%
end %
