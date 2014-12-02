function aiMonths = JulianDateToMonth( afJulianDates )
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
	aiMonths = m + 3 - 12 * floor(m / 10);
	%
	for iIndex = 1:numel(afJulianDates);
		%
		while( aiMonths(iIndex) > 12 )
			%
			aiMonths(iIndex) = aiMonths(iIndex) - 12;
			%
		end;%
		%
		while( aiMonths(iIndex) < 1 )
			%
			aiMonths(iIndex) = aiMonths(iIndex) + 12;
			%
		end;%
		%
	end;%
	%
end %
