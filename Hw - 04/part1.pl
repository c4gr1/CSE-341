:- style_check(-singleton).
:- dynamic(student/3).
:- dynamic(room/3).
:- dynamic(course/4).
:- dynamic(instructor/3).

student(s1,[course1],no).
student(s2,[course1,course2],no).
student(s3,[course2],no).
student(s4,[course2],handicapped).

instructor(i1,[course1],[smartboard]).
instructor(i2,[course2],[smartboard,projector]).

course(course1,7,i1,[handicapped]).
course(course2,13,i2,[smartboard,projector]).

room(room1,20,[projector,smartboard]).

hours(course1,room1,10).
hours(course1,room1,11).
hours(course1,room1,12).

hours(course2,room1,14).
hours(course2,room1,15).
hours(course2,room1,16).

new_student(Id,Course,Needs) :- 
	\+student(Id,_,_),
	assertz(student(Id,Course,Needs)).
	
new_course(Id,Capacity,Instructor,Equipment) :- 
	\+course(Id,_,_,_),
	assertz(course(Id,Capacity,Instructor,Equipment)).
		
new_room(Id,Course,Equipment) :- 
	\+room(Id,_,_),
	assertz(room(Id,Capacity,Equipment)).
		
