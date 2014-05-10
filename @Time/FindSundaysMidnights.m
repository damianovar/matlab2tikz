function aiIndexes = FindSundaysMidnights( afTimes )
	%
	% indexes of the midnights
	aiMidnightsIndexes = Time.FindMidnights( afTimes );
	%
	% booleans saying which sample is a midnight
	abMidnights = zeros( size(afTimes) );
	abMidnights(aiMidnightsIndexes) = 1;
	%
	% booleans saying which sample is in Sunday
	abSundays = ( Time.JulianDateToDayOfWeek( afTimes ) == 6 );
	%
	% indexes of monday midnight
	aiIndexes = find( abMidnights .* abSundays );
	%
end % function

