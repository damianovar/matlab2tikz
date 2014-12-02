function afDatenums = JulianDateToDatenum( afJulianDates )
	%
	afDatenums =												...
		datenum(	Time.JulianDateToYear(afJulianDates),		...
					Time.JulianDateToMonth(afJulianDates),		...
					Time.JulianDateToDayOfMonth(afJulianDates),	...
					Time.JulianDateToHour(afJulianDates),		...
					Time.JulianDateToMinute(afJulianDates),		...
					Time.JulianDateToSecond(afJulianDates)		);
	%
end %
