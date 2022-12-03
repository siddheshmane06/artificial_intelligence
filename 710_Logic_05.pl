%student(Id,name([Last,First]),grades([a1,a2,a3,a4])).

student(1001,name([alteron,alice]), grades([92,75,100,85])).
student(1002,name([boberson,bob]), grades([50,64,73,66])).
student(1003,name([chrleston,charlie]), grades([65,75,85,100])).
student(1004,name([davidson,dave]), grades([10,92,34,87])).
student(1005,name([ellenovitch,ellen]), grades([72,87,82,70])).

%student(1001,name(X),_).
%X = [alteron, alice].


% student(1001,name([Last,First]),_).
% Last = alteron,
% First = alice.


% student(1001,_,Grades).
% Grades = grades([92, 75, 100, 85]).


%How did alice do on assignment 1?
%student(_,name([_,alice]),grades([A1|_])).
% A1 = 92.


%How did alice do on assignment 2?
%student(_,name([_,alice]),grades([_,A2|_])).
% A2 = 75.


%How did student 1002 do on the test?
%student(1002,_,grades([_,_,_,Test])).
% Test = 66.
%student(1002,_,grades(L)),last(L,Test).
%L = [50, 64, 73, 66],
%Test = 66.


%who got 100 on the test?
%student(_,name(Name),grades(L)),last(L,Test),Test=100.
%Name = [chrleston, charlie],
%L = [65, 75, 85, 100],
%Test = 100


%student(_,name(Name),grades(L)).
%Name = [alteron, alice],
%L = [92, 75, 100, 85] ;
%Name = [boberson, bob],
%L = [50, 64, 73, 66] ;
%Name = [chrleston, charlie],
%L = [65, 75, 85, 100] ;
%Name = [davidson, dave],
%L = [10, 92, 34, 87] ;
%Name = [ellenovitch, ellen],
%L = [72, 87, 82, 70].


%Did anyone get 100 on anything?
%student(_,name(Name),grades(L)),member(100,L).
%Name = [alteron, alice],
%L = [92, 75, 100, 85] ;
%Name = [chrleston, charlie],
%L = [65, 75, 85, 100] ;

%What is each student's average grade?(assume equal weighting).
% student(_,name(Name),grades([A1,A2,A3,Test])),Average is(A1+A2+A3+Test)/4.
%Name = [alteron, alice],
%A1 = 92,
%A2 = 75,
%A3 = 100,
%Test = 85,
%Average = 88 ;
%Name = [boberson, bob],
%A1 = 50,
%A2 = 64,
%A3 = 73,
%Test = 66,
%Average = 63.25 ;
%Name = [chrleston, charlie],
%A1 = 65,
%A2 = 75,
%A3 = 85,
%Test = 100,
%Average = 81.25 ;
%Name = [davidson, dave],
%A1 = 10,
%A2 = 92,
%A3 = 34,
%Test = 87,
%Average = 55.75 ;
%Name = [ellenovitch, ellen],
%A1 = 72,
%A2 = 87,
%A3 = 82,
%Test = 70,
%Average = 77.75.

