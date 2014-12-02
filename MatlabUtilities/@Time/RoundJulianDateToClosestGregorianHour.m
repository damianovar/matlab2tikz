function afRoundedJulianDates = RoundJulianDateToClosestGregorianHour( afOriginalJulianDates )
	%
	% find the floored JDs
	[	aiYears,			...
		aiMonths,			...
		aiDays,				...
		aiHours,			...
		aiMinutes,			...
		aiSeconds	] = 	...
			Time.JulianDateToGregorianDate( afOriginalJulianDates );
	%
	afFlooredJulianDates = Time.GregorianDateToJulianDate(	aiYears,						...
															aiMonths,						...
															aiDays,							...
															aiHours,						...
															zeros( size( aiMinutes ) ),		...
															zeros( size( aiSeconds ) )		);
	%
	% now find the ceiled JDs
	afCeiledJulianDates = afFlooredJulianDates + Time.GetJulianHour();
	%
	% storage allocation
	afRoundedJulianDates = zeros( size(aiSeconds) );
	%
	for iDate = 1:numel(aiSeconds)
		%
		if(		abs( afOriginalJulianDates(iDate) - afCeiledJulianDates(iDate) )	...
		   	<	abs( afOriginalJulianDates(iDate) - afFlooredJulianDates(iDate) )	)
			%
			afRoundedJulianDates(iDate) = afCeiledJulianDates(iDate);
			%
		else%
			%
			afRoundedJulianDates(iDate) = afFlooredJulianDates(iDate);
			%
		end;%
		%
	end;%
	%
end % function

