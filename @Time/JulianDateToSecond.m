function aiSeconds = JulianDateToSecond( afJulianDates )
	%
	aiSeconds = mod( Time.JulianDateToSecondOfDay(afJulianDates), 60 );
	%
end %
