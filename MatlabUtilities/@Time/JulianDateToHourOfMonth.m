function aiHours = JulianDateToHourOfMonth( afJulianDates )
	%
	aiHoursOfDay = Time.JulianDateToHour( afJulianDates );
	aiDaysOfMonth = Time.JulianDateToDayOfMonth( afJulianDates );
	%
	aiHours = aiHoursOfDay + (aiDaysOfMonth - 1) * 24;
	%
end %
