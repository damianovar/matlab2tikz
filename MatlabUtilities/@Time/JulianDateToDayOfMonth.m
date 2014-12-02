function aiDays = JulianDateToDayOfMonth( afJulianDates )
	%
	ijd = floor(afJulianDates + 0.5);
	%
	a = ijd + 32044;
	b = floor((4 * a + 3) / 146097);
	c = a - floor((b * 146097) / 4);
	%
	d = floor((4 * c + 3) / 1461);
	e = c - floor((1461 * d) / 4);
	m = floor((5 * e + 2) / 153);
	%
	aiDays   = e - floor((153 * m + 2) / 5) + 1;
	%
	aiNumberOfDaysInCurrentMonth = 						...
		Time.NumberOfDaysInMonth(						... 
			Time.JulianDateToMonth( afJulianDates ),	...
			Time.JulianDateToYear( afJulianDates )		);
	%
	%
	for iIndex = 1:numel(afJulianDates)
		%
		while( aiDays(iIndex) > aiNumberOfDaysInCurrentMonth(iIndex) )
			%
			aiDays(iIndex) = aiDays(iIndex) - aiNumberOfDaysInCurrentMonth(iIndex);
			%
		end;%
		%
		while( aiDays(iIndex) < 1 )
			%
			aiDays(iIndex) = aiDays(iIndex) + aiNumberOfDaysInCurrentMonth(iIndex);
			%
		end;%
		%
	end;%
	%
end %
