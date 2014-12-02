function [	afTruncatedJulianDates,			...
			aafTruncatedSignals		] =		... each column is a signal
				TruncateToWeeks(			...
					afOriginalJulianDates,	...
					aafOriginalSignals		) % each column is a signal
	%
	% consistency check
	if( numel(afOriginalJulianDates) ~= size(aafOriginalSignals, 1) )
		%
		error('the number of time samples must be equal to the size of the signals');
		%
	end;%
	%
	% indexes of the first samples of the weeks
	aiMondayMidnights	= Time.FindMondayMidnights( afOriginalJulianDates );
	%
	% for readability
	iFirstSample		= aiMondayMidnights(1);
	iLastSample			= aiMondayMidnights(end) - 1;
	%
	% truncated signals
	afTruncatedJulianDates	= afOriginalJulianDates(iFirstSample:iLastSample);
	aafTruncatedSignals		= aafOriginalSignals(iFirstSample:iLastSample, :);
	%
end % function
