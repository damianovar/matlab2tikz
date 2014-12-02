function abIsBetweenHours = IsBetweenHours( afJulianDates, iInitialHour, iFinalHour )
	%
	aiInitialHourMinuteOfTheDay = iInitialHour	* 60;
	aiFinalHourMinuteOfTheDay	= iFinalHour	* 60;
	aiMinOfTheDay				= Time.JulianDateToMinuteOfDay( afJulianDates );
	%
	if ( iInitialHour < iFinalHour)
		%
		abIsBetweenHours =	 (		aiInitialHourMinuteOfTheDay <=	aiMinOfTheDay									...
								&&									aiMinOfTheDay <= aiFinalHourMinuteOfTheDay	);
		%
	else%
		%
		abIsBetweenHours =	~(		aiFinalHourMinuteOfTheDay <		aiMinOfTheDay									...
								&&									aiMinOfTheDay <	 aiInitialHourMinuteOfTheDay );
		%
	end;% if
	%
end % function
