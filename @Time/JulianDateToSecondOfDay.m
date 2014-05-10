function aiSeconds = JulianDateToSecondOfDay( afJulianDates )
	%
	aiSeconds =																	...
		fix(		86400														...
				*	( (afJulianDates + 0.5) - floor(afJulianDates + 0.5) )		);
	%
end %
