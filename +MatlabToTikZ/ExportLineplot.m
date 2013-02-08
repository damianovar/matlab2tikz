% function ExportLineplot(strFileName,    ...
%                         aafSignals,     ...
%                         strHeader,      ... optional
%                         iSamplingPeriod ) % optional
%
% @aafSignals is "column-wise", i.e., each column of aafSignals is a signal
%             notice: if there exists just one column, then that column is
%             considered as the "y". The "x" is then added automatically as
%             1:numel(y)
%
% @strHeader: optional, if not given then the header is 'x y1 y2 ...'
%             if given then it must contain also the '\n' character
%
% @iSamplingPeriod = n => keep 1 sample every n (the first and the last one
%                         are always kept)
%                         optional, if not given then the sampling period
%                         is 1
%
function ExportLineplot(	strFileName,	...
							aafSignals,		...
							strHeader,		... optional, if not given then the header is 'x y1 y2 ...'
							iSamplingPeriod	) % optional, if not given then the sampling period is 1
	%
	% flag if there exists the header
	bHeaderIsPresent			= ( nargin > 2 );
	bSamplingPeriodIsPresent	= ( nargin > 3 );
	%
	% open the file
	fid = fopen(strFileName, 'w');
	%
	% for readability
	iNumberOfSignals 	= size( aafSignals, 2 );
	iNumberOfSamples  	= size( aafSignals, 1 );
	%
	% if the number of signals is 1, then add the "fake" x
	if( iNumberOfSignals == 1 )
		%
		aafSignals = [ (1:iNumberOfSamples)', aafSignals ];
		iNumberOfSignals = 2;
		%
	end;%
	%
	% write the header -- if not present we must construct it
	if( ~bHeaderIsPresent )
		%
		strHeader = 'x y1';
		%
		% add yn, in case
		for iSignal = 3:iNumberOfSignals;
			%
			strHeader = strcat( strHeader, sprintf(' y%d', iSignal - 1) );
			%
		end;%
		%
		% put a newline at the end
		strHeader = strcat( strHeader, '\n' );
		%
	end;%
	%
	fprintf(fid, strHeader);
	%
	% set the sampling period to 1 if not present
	if( ~bSamplingPeriodIsPresent )
		%
		iSamplingPeriod = 1;
		%
	end;%
	%
	% write the data (but consider that the last datum is always written)
	for iSample = 1:iSamplingPeriod:iNumberOfSamples-1;
		%
		for iSignal = 1:iNumberOfSignals;
			%
			fprintf(fid, '%.5f\t', aafSignals(iSample, iSignal) );
			%
		end;%
		%
		fprintf(fid, '\n');
		%
	end;%
	%
	% always write the last datum
	for iSignal = 1:iNumberOfSignals;
		%
		fprintf(fid, '%.5f\t', aafSignals(iNumberOfSamples, iSignal) );
		%
	end;%
	%
	% close the file
	fclose(fid);
	clear fid;
	%
	fprintf('%s exported\n', strFileName);
	%
end %
