function aiDays = JulianDateToDayOfYear( afJulianDates )
	%
	% work with column vectors
	afJulianDates = reshape(afJulianDates, numel(afJulianDates), 1);
	%
	aiYears				= Time.JulianDateToYear( afJulianDates );
	aiMonths			= Time.JulianDateToMonth( afJulianDates );
	aiDaysOfMonths		= Time.JulianDateToDayOfMonth( afJulianDates );
	abConsiderLeapDay	= and( Time.IsLeap(aiYears), ( aiMonths > 2 ) );
	%
	% note: need to work with column vectors
	aiDaysUpToMonth = [0 31 59 90 120 151 181 212 243 273 304 334]';
	%
	% Day in given month.
	aiDays =		aiDaysUpToMonth(aiMonths)	...
				+	abConsiderLeapDay			... add 1 if we have a feb. 29
				+	aiDaysOfMonths;
	%
end % function

