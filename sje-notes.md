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

