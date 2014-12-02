function [	afTruncatedJulianDates,			...
			aafTruncatedSignals		] =		... each column is a signal
				TruncateToPeriod(			...
					afOriginalJulianDates,	...
					aafOriginalSignals,		... % each column is a signal
					fInitialJulianDate,		...
					fFinalJulianDate		)
	%
	% consistency check
	if( numel(afOriginalJulianDates) ~= size(aafOriginalSignals, 1) )
		%
		error('the number of time samples must be equal to the size of the signals');
		%
	end;%
	%
	% for readability
	iFirstSample		= find( afOriginalJulianDates > fInitialJulianDate, 1, 'first' );
	iLastSample			= find( afOriginalJulianDates < fFinalJulianDate, 1, 'last' );
	%
	% truncated signals
	afTruncatedJulianDates	= afOriginalJulianDates(iFirstSample:iLastSample);
	aafTruncatedSignals		= aafOriginalSignals(iFirstSample:iLastSample, :);
	%
end % function
