##Codebook

This tidy data set is derived from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto from Smartlab - Non Linear Complex Systems Laboratory.

The tidy data set follows Hadley Wickham's rules for tidy data:
        1. Each variable forms a column.
        2. Each observation forms a row.
        3. Each type of observational unit forms a table.

##Variable Names and Descriptions

###subject
    ID for the subject who performed the activity for the dataset.
        Integers ranging from 1 to 30.

###activity
    Name of the activity performed by the subject.  Character values are:
        walking
        walkingupstairs
        walkingdownstairs
        sitting
        standing
        laying

###feature variables
    Each feature is normalized and bounded, therefore there are no units.
    The data for each feature is an average of each variable for each activity and subject.
    The feature name contains information pertaining to:
        domain signals (time(t) and frequency(f))
        acceleration signal (body, gravity)
        sensor signals (accelerometer(acc), gyroscope(gyro))
        jerk
        magnitude (Mag)
        mean(mean) or standard deviation(std)
        axis (x,y,z)
                Each observational unit falls in to these variables:
                tbodyaccmeanx
                tbodyaccmeany
                tbodyaccmeanz
                tbodyaccstdx
                tbodyaccstdy
                tbodyaccstdz
                tgravityaccmeanx
                tgravityaccmeany
                tgravityaccmeanz
                tgravityaccstdx
                tgravityaccstdy
                tgravityaccstdz
                tbodyaccjerkmeanx
                tbodyaccjerkmeany
                tbodyaccjerkmeanz
                tbodyaccjerkstdx
                tbodyaccjerkstdy
                tbodyaccjerkstdz
                tbodygyromeanx
                tbodygyromeany
                tbodygyromeanz
                tbodygyrostdx 
                tbodygyrostdy
                tbodygyrostdz
                tbodygyrojerkmeanx
                tbodygyrojerkmeany
                tbodygyrojerkmeanz
                tbodygyrojerkstdx
                tbodygyrojerkstdy
                tbodygyrojerkstdz
                tbodyaccmagmean
                tbodyaccmagstd
                tgravityaccmagmean
                tgravityaccmagstd
                tbodyaccjerkmagmean
                tbodyaccjerkmagstd
                tbodygyromagmean
                tbodygyromagstd
                tbodygyrojerkmagmean
                tbodygyrojerkmagstd
                fbodyaccmeanx
                fbodyaccmeany
                fbodyaccmeanz
                fbodyaccstdx
                fbodyaccstdy
                fbodyaccstdz
                fbodyaccjerkmeanx
                fbodyaccjerkmeany
                fbodyaccjerkmeanz
                fbodyaccjerkstdx
                fbodyaccjerkstdy
                fbodyaccjerkstdz
                fbodygyromeanx
                fbodygyromeany
                fbodygyromeanz
                fbodygyrostdx
                fbodygyrostdy
                fbodygyrostdz
                fbodyaccmagmean
                fbodyaccmagstd
                fbodyaccjerkmagmean
                fbodyaccjerkmagstd
                fbodygyromagmean
                fbodygyromagstd
                fbodygyrojerkmagmean
                fbodygyrojerkmagstd
