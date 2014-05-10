% function afDates = StringToJulianDate_YYMMDDHHMMSS( astrDates )
%
function afDates = StringToJulianDate_YYMMDDHHMMSS( astrDates )
	%
	aiYears		= astrDates(:,1:2);
	aiMonths	= astrDates(:,3:4);
	aiDays		= astrDates(:,5:6);
	aiHours		= astrDates(:,7:8);
	aiMinutes	= astrDates(:,9:10);
	aiSeconds	= astrDates(:,11:12);
	%
	afDates		= zeros( numel(aiYears), 1 );
	%
	for iDate = 1:numel( aiYears )
		%
		afDates(iDate) = Time.GregorianDateToJulianDate(	...
										aiYears(iDate),		...
										aiMonths(iDate),	...
										aiDays(iDate),		...
										aiHours(iDate),		...
										aiMinutes(iDate),	...
										aiSeconds(iDate)	);
		%
	end;%
	%
end %

