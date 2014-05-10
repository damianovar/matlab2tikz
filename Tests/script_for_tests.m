clc;
clear all;
close all;
addpath ../


% ---------------------------------------------------------------------
% PART A -- plots without dates

aiIndexes = 1:200;
afSine		= sin( aiIndexes / 100 );
afCosine	= cos( aiIndexes / 100 );

MatlabToTikZ.ExportLineplot(				...
	'dataset_without_dates.txt',			... filename
	[ aiIndexes', afSine', afCosine' ],		... data (column-wise)
	[ {'indexes'}, {'sine'}, {'cosine'} ]	);% header, optional

% % the complete code would be:
% MatlabToTikZ.ExportLineplot(				...
% 	'dataset_without_dates.txt',			... filename
% 	[ aiIndexes', afSine', afCosine' ],		... data (column-wise)
% 	[ {'indexes'}, {'sine'}, {'cosine'} ],	... header, optional
% 	1,										... sampling period, optional
% 	5,										... precision (number of digits) when writing  optional
% 	[ false, false, false ]					);% is the signal a date? optional


% ---------------------------------------------------------------------
% PART B -- plots with dates

% get some Julian dates
fNow			= Time.GetCurrentJulianDate();
fThen			= fNow + 10 * Time.GetJulianHour();
afJulianDates	= linspace(fNow, fThen, numel(aiIndexes));

% in this case we must call the complete code
MatlabToTikZ.ExportLineplot(				...
	'dataset_with_dates.txt',				... filename
	[ afJulianDates', afSine', afCosine' ],	... data (column-wise)
	[ {'times'}, {'sine'}, {'cosine'} ],	... header, optional
	1,										... sampling period, optional
	5,										... precision (number of digits) when writing  optional
	[ true, false, false ]					);% is the signal a date? optional


