% ISO standard:
%
% 0 = monday
% ...
% 6 = sunday
%
function abIsWeekend = IsWeekend( afJulianDates )
	%
	aiDaysOfTheWeek = Time.JulianDateToDayOfWeek( afJulianDates );
	%
	abIsWeekend = ( aiDaysOfTheWeek == 5 + aiDaysOfTheWeek == 6 );
	%
end % function

