function aiMinutes = JulianDateToMinute( afJulianDates )
	%
	aiMinutes = mod( Time.JulianDateToMinuteOfDay(afJulianDates), 60 );
	%
end %
