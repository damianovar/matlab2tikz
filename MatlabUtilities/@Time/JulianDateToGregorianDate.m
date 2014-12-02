function	[	aiYears,			...
				aiMonths,			...
				aiDays,				...
				aiHours,			...
				aiMinutes,			...
				aiSeconds	] = 	...
					JulianDateToGregorianDate( afJulianDates )
	%
	aiYears		= Time.JulianDateToYear( afJulianDates );
	aiMonths	= Time.JulianDateToMonth( afJulianDates );
	aiDays		= Time.JulianDateToDayOfMonth( afJulianDates );
	aiHours		= Time.JulianDateToHour( afJulianDates );
	aiMinutes	= Time.JulianDateToMinute( afJulianDates );
	aiSeconds	= Time.JulianDateToSecond( afJulianDates );
	%
end % function

