% WEB BLOG USING PROLOG

% Blog title

title('My Civil Engineering Blog').

% Blog headings

heading('Welcome to My Blog').
heading('About Civil Engineering').
heading('Latest Updates').

% Blog paragraphs

paragraph('Welcome to my educational blog.').
paragraph('Civil Engineering deals with the design and construction of structures.').
paragraph('Stay updated with the latest engineering technologies.').

% Anchor links

anchor('Home', 'https://www.example.com/home').
anchor('About', 'https://www.example.com/about').
anchor('Contact', 'https://www.example.com/contact').

% Display complete blog details

display_blog :-
    title(T),
    write('Blog Title: '), write(T), nl,
    heading(H),
    write('Heading: '), write(H), nl,
    paragraph(P),
    write('Paragraph: '), write(P), nl,
    anchor(A, L),
    write('Anchor Text: '), write(A), nl,
    write('Anchor Link: '), write(L), nl.