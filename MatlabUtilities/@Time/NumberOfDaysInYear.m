function iNumberOfDays = NumberOfDaysInYear( iYear )
	%
	if( Time.IsLeap( iYear ) )
		%
		iNumberOfDays = 366;
		%
		%
	else%
		%
		iNumberOfDays = 365;
		%
	end;%
	%
end %
