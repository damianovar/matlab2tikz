function aiMinutes = JulianDateToMinuteOfDay( afJulianDates )
	%
	aiMinutes =																	...
		fix(		1440														...
				*	( (afJulianDates + 0.5) - floor(afJulianDates + 0.5) )		);
	%
end %
