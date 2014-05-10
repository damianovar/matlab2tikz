function aiIndexes = FindTime( afTimes, iHour, iMinute, iSecond )
	%
	iTimeInSeconds =		iHour * 24 * 60	...
						+	iMinute * 60	...
						+	iSecond;
	%
	% convert in hours
	aiSeconds = Time.JulianDateToSecondOfDay( afTimes );
	%
	% find the corresponding hours
	abMatchingIndexes = ( aiSeconds == iTimeInSeconds );
	%
	% find the impulses
	for iSample = numel( abMatchingIndexes ):-1:2
		%
		if(		abMatchingIndexes(iSample)	 == true	...
			&&	abMatchingIndexes(iSample-1) == true	)
			%
			abMatchingIndexes(iSample) = false;
			%
		end;%
		%
	end;%
	%
	% return the impulses
	aiIndexes = find( abMatchingIndexes );
	%
end % function
