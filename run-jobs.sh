## Run all the covid-ukjobs.
##
## This can be run using GNU parallel:
## parallel --jobs 2 < run-jobs.sh
Rscript UK.R 1 50   > case_1.stdout
Rscript UK.R 2.1 50 > case_2.1.stdout
Rscript UK.R 2.2 50 > case_2.2.stdout
Rscript UK.R 3 50   > case_3.stdout
Rscript UK.R 4 50   > case_4.stdout
Rscript UK.R 5 50   > case_5.stdout
Rscript UK.R 6 50   > case_6.stdout
