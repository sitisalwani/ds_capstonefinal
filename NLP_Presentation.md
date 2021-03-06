NLP Swiftkey Presentation
========================================================
author: Siti Salwani Yaacob
date: 4th June 2020
autosize: true

Data Cleaning and Exploration
========================================================

Download and extract three large files from the Swiftkey Dataset. Reduce the size of files to 20k each. Create a large corpus of the data. Data was then analyzed by removing non needed text characteristic.

- update unused characters to space
- convert to lowercase letter
- remove bad word, punctuation, numbers and etc.

Algorithm and Model Building
========================================================

- N-gram model with back-off strategy was used for the Natural Language Process (NLP).
- These data were then tokenised 3 times using 1-gram to 3-gram calculations using RWeka.

- The algorithm predicts the next word based on the last 3 text inputs the user entered then starts to search using the 3-gram. If the next word isn't predicted, it selects the 2-gra,, then 1-gram. If nothing is found it falls back to a "default" of the word most often seen.


Shiny App
========================================================

- Provides a text input box for user to type a line of short text.
- Iterates from longest N-gram(3-gram) to shortest (1-gram).
Predicts using the longest, most frequent, matching N-gram.
- After multiple texts it was determined the most efficient method to keep up with performance expectations was to create small samples of each dataset and keep them separated. Allowing for the opportunity for 3 choices.
- Detects words typed and predicts the most likey word from each of the three types of files within seconds.
- Has three tabs - Prediction, About and Help.



Apps and Resources
========================================================

- Average respond time under 2 - 3 seconds.
- Application memory usage well under 150 MB.
- Application running at : https://sitisalwani.shinyapps.io/NLP_Prediction/
- Github link for various code files is at : https://github.com/sitisalwani/ds_capstonefinal
