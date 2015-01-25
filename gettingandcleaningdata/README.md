##Coursera Getting and Cleaning Data Course Project
###Author: Jessica Sahl

Human Activity Recognition Using Smartphones Dataset Version 1.0 (Authors: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto)


Regardless of the form you choose, the strategic way of approaching the question (in a learning to do peer assignments to maximise your marks kind of way) is:
* In the submission box, as well as the link, put some accompanying text on another line something like "tidy data as per the ReadMe that can be read into R with read.table {listing any settings you have changed from the default}" This is just to make it really easy for your reviewer.
* In the readMe in explaining what the script does put "and then generates a tidy data text file that meets the principles of ...etc"
* the truly cunning may want to put in a citation to this discussion and/or Hadley's paper
* The codebook still has the specific description of the tidy data file contents (and you mention that it exists and it's role in the ReadMe)
* If things are part of the same set they should actually have the same units (by definition). OTOH all the assignment data has been normalised.
* People sometimes are interested in dividing up the measurement into a set of columns, dividing up labels is actually a little different to dividing up data- you will find you are introducing a lot of NA values if you try this, which is generally a sign that the approach isn't working.


Table 1 reorganizes raw data to make the values, variables and observations more clear. The
dataset contains ? values representing three variables and ?? observations. The variables
are:
1. Subjects, with ? possible values (John Smith, Mary Johnson, and Jane Doe).
2. Activities, with ? possible values (a and b).
3. Readings, with ? values depending on how you think of the missing value (|,
16, 3, 2, 11, 1).
