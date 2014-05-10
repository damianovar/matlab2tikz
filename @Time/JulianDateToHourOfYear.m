function aiHours = JulianDateToHourOfYear( afJulianDates )
	%
	aiHoursOfDay = Time.JulianDateToHour( afJulianDates );
	aiDaysOfYear = Time.JulianDateToDayOfYear( afJulianDates );
	%
	aiHours = aiHoursOfDay + (aiDaysOfYear - 1) * 24;
	%
end % function

