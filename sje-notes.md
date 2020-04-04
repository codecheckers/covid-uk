# Notes on codecheck for covid-19


## Installs

A list of the key packages to install is listed in `install.R` and describes
what extra Unix packages might be needed.

## Docker

Am working on a `Dockerfile` to run the jobs in a container.


## Single point of truth

Would suggest moving this duplicate code into a small script,
e.g. `setup.R` or `paths.R`:

```
# Set path
# Set this path to the base directory of the repository.
covid_uk_path = "./"

# covidm options
cm_path = paste0(covid_uk_path, "/covidm/");
if(grepl(Sys.info()["user"], pattern = "^adamkuchars(ki)?$")){cm_path = "~/Documents/GitHub/covidm/"}
```

## Suggestion: use file.path() not paste0()

`file.path()` is the recommended way by R to construct a portable path
name, rather than `paste0()` (which is admittedly what I also do).
So, e.g. this would make changes like:

```
source(paste0(cm_path, "/R/covidm.R"))
```

to
```
source(file.path(cm_path, "R", "covidm.R"))
```

