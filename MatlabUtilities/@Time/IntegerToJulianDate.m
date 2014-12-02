% function afJulianDate = IntegerToJulianDate( aiTimes )
%
% input:  vector of integers in the format YYMMDDHHMMSS
% output: vector of julian dates
%
function afJulianDates = IntegerToJulianDate( aiTimes )
	%
	aiFirstDigitOfYear	= floor( aiTimes ./ 10^10 );
	aiYear				= aiFirstDigitOfYear + 2000;
	%
	aiRemainingDigits	= aiTimes - ( aiFirstDigitOfYear .* 10^10 );
	aiMonth				= floor( aiRemainingDigits ./ 10^8 );
	%
	aiRemainingDigits	= aiRemainingDigits - ( aiMonth .* 10^8 );
	aiDay				= floor( aiRemainingDigits ./ 10^6 );
	%
	aiRemainingDigits	= aiRemainingDigits - ( aiDay * 10^6 );
	aiHour				= floor( aiRemainingDigits ./ 10^4 );
	%
	aiRemainingDigits	= aiRemainingDigits - ( aiHour .* 10^4 );
	aiMinute			= floor( aiRemainingDigits ./ 10^2 );
	%
	aiRemainingDigits	= aiRemainingDigits - ( aiMinute .* 10^2 );
	aiSecond			= aiRemainingDigits;
	%
	afJulianDates		= zeros(numel(aiTimes),1);
	%
	for iTime =1:numel(aiTimes)
		%
		afJulianDates(iTime) = Time.GregorianDateToJulianDate(	aiYear(iTime),		...
																aiMonth(iTime),		...
																aiDay(iTime),		...
																aiHour(iTime),		...
																aiMinute(iTime),	...
																aiSecond(iTime)		);
		%
	end;%
	%
end % function

