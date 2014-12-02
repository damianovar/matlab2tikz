function astrDates = JulianDateToString_YYMMDDHHMMSS( afJulianDates )
	%
	aiYears		= Time.JulianDateToYear( afJulianDates );
	aiMonths	= Time.JulianDateToMonth( afJulianDates );
	aiDays		= Time.JulianDateToDayOfMonth( afJulianDates );
	aiHours		= Time.JulianDateToHour( afJulianDates );
	aiMinutes	= Time.JulianDateToMinute( afJulianDates );
	aiSeconds	= Time.JulianDateToSecond( afJulianDates );
	%
	astrDates	= cell( numel(aiYears), 1 );
	%
	for iDate = 1:numel( aiYears )
		%
		astrDates(iDate) = {sprintf('%02d%02d%02d%02d%02d%02d',		...
									aiYears(iDate),					...
									aiMonths(iDate),				...
									aiDays(iDate),					...
									aiHours(iDate),					...
									aiMinutes(iDate),				...
									aiSeconds(iDate)				)};
		%
	end;%
	%
end %

