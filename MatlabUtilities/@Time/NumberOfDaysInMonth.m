function aiNumberOfDays = NumberOfDaysInMonth( aiMonths, aiYears )
	%
	aiNumberOfDays = zeros( size( aiMonths ) );
	%
	for iIndex = 1:numel( aiMonths );
		%
		switch( aiMonths(iIndex) )
			%
			case 1
				aiNumberOfDays(iIndex) = 31;
			%
			case 2
				if( Time.IsLeap( aiYears(iIndex) ) )
					%
					aiNumberOfDays(iIndex) = 29;
					%
				else%
					%
					aiNumberOfDays(iIndex) = 28;
					%
				end;%
			%
			case 3
				aiNumberOfDays(iIndex) = 31;
			%
			case 4
				aiNumberOfDays(iIndex) = 30;
			%
			case 5
				aiNumberOfDays(iIndex) = 31;
			%
			case 6
				aiNumberOfDays(iIndex) = 30;
			%
			case 7
				aiNumberOfDays(iIndex) = 31;
			%
			case 8
				aiNumberOfDays(iIndex) = 31;
			%
			case 9
				aiNumberOfDays(iIndex) = 30;
			%
			case 10
				aiNumberOfDays(iIndex) = 31;
			%
			case 11
				aiNumberOfDays(iIndex) = 30;
			%
			case 12
				aiNumberOfDays(iIndex) = 31;
			%
			otherwise
				error('months should be from 1 to 12');
			%
		end;% switch
		%
	end;% for
	%
end % function
