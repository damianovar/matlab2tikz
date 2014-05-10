classdef Time < handle
	%
	% ---------------------------------------------------------------------
	properties
		%
		%
	end %
	%
	%
	% ---------------------------------------------------------------------
	methods
		%
		% standard constructor
		function tTime = Time()
			%
			%
		end %
		%
	end %
	%
	%
	% ---------------------------------------------------------------------
	methods (Static = true)
		%
		fJulianDate = GregorianDateToJulianDate(	iYear,		...
													iMonth,		...
													iDay,		...
													iHour,		...
													iMinute,	...
													iSecond		);
		%
		fCurrentJulianDate		= GetCurrentJulianDate();
		fCurrentJulianDay		= GetCurrentJulianDay();
		fCurrentJulianMonth		= GetCurrentJulianMonth();
		fCurrentJulianYear		= GetCurrentJulianYear();
		%
		strCurrentGregorianDate = GetCurrentGregorianDateString();
		iCurrentGregorianHour	= GetCurrentGregorianHour();
		%
		fMidnightJD				= GetNextMidnight( fJulianDate );
		fMidnightJD				= GetPreviousMidnight( fJulianDate );
		fSundayMidnightJD		= GetNextSundayMidnight( fJulianDate );
		fSundayMidnightJD		= GetPreviousSundayMidnight( fJulianDate );
		%
		afJulianDates = IntegerToJulianDate( aiTimes );
		%
		iDay = GregorianDateToDayOfYear(	iYear,		...
											iMonth,		...
											iDay,		...
											iHour,		...
											iMinute,	...
											iSecond		);
		%
		[	aiYears,			...
			aiMonths,			...
			aiDays,				...
			aiHours,			...
			aiMinutes,			...
			aiSeconds	] = 	...
				JulianDateToGregorianDate( afJulianDates );
		%
		aiYears 	= JulianDateToYear( afJulianDates );
		aiMonths 	= JulianDateToMonth( afJulianDates );
		%
		aiDays 		= JulianDateToDayOfWeek( afJulianDates )
		aiDays		= JulianDateToDayOfMonth( afJulianDates );
		aiDays		= JulianDateToDayOfYear( afJulianDates );
		%
		aiHours 	= JulianDateToHour( afJulianDates );
		aiHours		= JulianDateToHourOfWeek( afJulianDates )
		aiHours		= JulianDateToHourOfMonth( afJulianDates );
		aiHours		= JulianDateToHourOfYear( afJulianDates );
		%
		aiMinutes	= JulianDateToMinute( afJulianDates );
		aiMinutes	= JulianDateToMinuteOfDay( afJulianDates );
		%
		aiSeconds	= JulianDateToSecond( afJulianDates );
		aiSeconds	= JulianDateToSecondOfDay( afJulianDates );
		%
		afDatenums	= JulianDateToDatenum( afJulianDates );
		%
		astrDates	= JulianDateToString( afJulianDates );			% YYYY:MM:DD - HH:MM:SS
		astrDates	= JulianDateToString_TikZ( afJulianDates );		% YYYY-MM-DD HH:MM
		astrDates	= JulianDateToString_YYYYMMDD( afJulianDates );	% YYYYMMDD
		astrDates	= JulianDateToString_YYMMDDHHMMSS( afJulianDates );
		%
		bIsMidnight			= IsMidnight( fJulianDate, fToleranceInSeconds );
		bIsSundayMidnight	= IsSundayMidnight( fJulianDate, fToleranceInSeconds );
		bIsLeap				= IsLeap( iYear );
		abIsWeekend			= IsWeekend( afJulianDates );
		abIsBetweenHours	= IsBetweenHours( afJulianDates, iInitialHour, iFinalHour );
		%
		iNumberOfDays		= NumberOfDaysInYear( iYear );
		iNumberOfHours		= NumberOfHoursInYear( iYear );
		iNumberOfMinutes	= NumberOfMinutesInYear( iYear );
		iNumberOfSeconds	= NumberOfSecondsInYear( iYear );
		%
		iNumberOfHours	= NumberOfHoursInPeriod( fStartingJulianDate, fEndingJulianDate );
		iNumberOfDays	= NumberOfDaysInPeriod( fStartingJulianDate, fEndingJulianDate );
		iNumberOfDays 	= NumberOfDaysInMonth( iMonth, iYear );
		iNumberOfWeeks	= NumberOfWeeksInPeriod( fStartingJulianDate, fEndingJulianDate )
		%
		fJulianSecond	= GetJulianSecond();
		fJulianMinute	= GetJulianMinute();
		fJulianHour		= GetJulianHour();
		fJulianDay		= GetJulianDay();
		%
		aiIndexes = FindHour( afJulianDates, iHour );
		aiIndexes = FindTime( afJulianDates, iHour, iMinute, iSecond );
		aiIndexes = FindMidnights( afTimes );
		aiIndexes = FindSundaysMidnights( afTimes );
		%
		[	afTruncatedJulianDates,			...
			aafTruncatedSignals		] =		... each column is a signal
				TruncateToWeeks(			...
					afOriginalJulianDates,	...
					aafOriginalSignals		);% each column is a signal
		%
		[	afTruncatedJulianDates,			...
			aafTruncatedSignals		] =		... each column is a signal
				TruncateToDays(				...
					afOriginalJulianDates,	...
					aafOriginalSignals		);% each column is a signal
		%
		[	afTruncatedJulianDates,			...
			aafTruncatedSignals		] =		... each column is a signal
				TruncateToPeriod(			...
					afOriginalJulianDates,	...
					aafOriginalSignals,		... % each column is a signal
					fInitialJulianDate,		...
					fFinalJulianDate		);
		%
		afRoundedJulianDates = RoundJulianDateToClosestGregorianHour( afOriginalJulianDates );
		afRoundedJulianDates = RoundJulianDateToClosestGregorianDay( afOriginalJulianDates );
		afRoundedJulianDates = RoundJulianDateToClosestSundayMidnight( afOriginalJulianDates );
		afRoundedJulianDates = RoundJulianDateToClosestMidnight( afOriginalJulianDates );
		%
		PrintCurrentTime();
		%
		iUnixTime	= JulianDateToUnixTime( fJulianDate );
		fJulianDate = UnixTimeToJulianDate( iUnixTime );
		%
		fNextHour	= GetNextHour( fJulianDate )
		%
	end	%
	%
	%
end %
