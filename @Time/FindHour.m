function aiIndexes = FindHour( afTimes, iHour )
	%
	% convert in hours
	aiHours = Time.JulianDateToHour( afTimes );
	%
	% find the corresponding hours
	abMatchingIndexes = ( aiHours == iHour );
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
