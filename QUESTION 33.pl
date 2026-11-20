diet(diabetes, low_sugar).
diet(obesity, balanced_diet).
diet(anemia, iron_rich_food).
diet(heart_disease, low_salt).

suggest_diet(Disease, Diet) :-
    diet(Disease, Diet).