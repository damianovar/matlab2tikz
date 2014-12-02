function iCurrentGregorianHour = GetCurrentGregorianHour()
	%
	aiCurrentGregorianDate = fix(clock);
	%
	iCurrentGregorianHour = aiCurrentGregorianDate(4);
	%
end % function

