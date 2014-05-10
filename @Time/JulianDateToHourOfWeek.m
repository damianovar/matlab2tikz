function aiHours = JulianDateToHourOfWeek( afJulianDates )
	%
	aiHoursOfDay = Time.JulianDateToHour( afJulianDates );
	aiDaysOfWeek = Time.JulianDateToDayOfWeek( afJulianDates );
	%
	aiHours = aiHoursOfDay + (aiDaysOfWeek - 1) * 24;
	%
end %
