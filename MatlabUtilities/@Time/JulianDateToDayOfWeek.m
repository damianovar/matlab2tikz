% ISO standard:
%
% 0 = monday
% ...
% 6 = sunday
%
function aiDays = JulianDateToDayOfWeek( afJulianDates )
	%
	aiDays = floor( mod( afJulianDates + 0.5, 7 ) );
	%
end % function

