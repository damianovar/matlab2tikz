function bIsMidnight = IsMidnight( fJulianDate, fToleranceInSeconds )
	%
	switch( nargin )
		%
		case 1
			fToleranceInSeconds = 60;
		%
		case 2
			% do nothing
		%
		otherwise
			error('wrong number of parameters');
		%
	end;%
	%
	iNumberOfSecondsInTheDay = Time.JulianDateToSecondOfDay( fJulianDate );
	%
	% either the number of seconds is smaller than the tolerance,
	% or bigger than 24 * 60 * 60 minus the tolerance
	bIsMidnight =																...
			( iNumberOfSecondsInTheDay < fToleranceInSeconds )					...
		||	( iNumberOfSecondsInTheDay > 24 * 60 * 60 - fToleranceInSeconds );
	%
end % function

