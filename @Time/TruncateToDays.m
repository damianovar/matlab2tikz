function [	afTruncatedJulianDates,			...
			aafTruncatedSignals		] =		... each column is a signal
				TruncateToDays(				...
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
	% indexes of the first samples of the days
	aiMidnights	= Time.FindMidnights( afOriginalJulianDates );
	%
	% for readability
	iFirstSample		= aiMidnights(1);
	iLastSample			= aiMidnights(end) - 1;
	%
	% truncated signals
	afTruncatedJulianDates	= afOriginalJulianDates(iFirstSample:iLastSample);
	aafTruncatedSignals		= aafOriginalSignals(iFirstSample:iLastSample, :);
	%
end % function
