symptom(ravi, fever).
symptom(ravi, cough).
symptom(ravi, headache).

symptom(anu, fever).
symptom(anu, cold).

diagnosis(Person, flu) :-
    symptom(Person, fever),
    symptom(Person, cough).

diagnosis(Person, common_cold) :-
    symptom(Person, cold),
    symptom(Person, cough).

diagnosis(Person, headache) :-
    symptom(Person, headache).