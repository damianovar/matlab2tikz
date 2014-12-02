function astrDates = JulianDateToString_YYYYMMDD( afJulianDates )
	%
	aiYears		= Time.JulianDateToYear( afJulianDates );
	aiMonths	= Time.JulianDateToMonth( afJulianDates );
	aiDays		= Time.JulianDateToDayOfMonth( afJulianDates );
	%
	astrDates	= cell( numel(aiYears), 1 );
	%
	for iDate = 1:numel( aiYears )
		%
		astrDates(iDate) = {sprintf('%04d%02d%02d',					...
									aiYears(iDate),					...
									aiMonths(iDate),				...
									aiDays(iDate)					)};
		%
	end;%
	%
end %
