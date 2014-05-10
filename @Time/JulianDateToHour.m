function aiHours = JulianDateToHour( afJulianDates )
	%
	aiHours =																	...
		fix(		24															...
				*	( (afJulianDates + 0.5) - floor(afJulianDates + 0.5) )		);
	%
end %
