Note: Some users have reported a bug with the version of one of the packages this script uses, `quarto`.

Simply running `install.packages("quarto")` will have R install version 1.3.343 of the package which contains the issue that causes one of the charts in my project to not render properly.

I recommend heading over to https://quarto.org/docs/download/ and installing version `1.3.450` to ensure you can reproduce the entirty of `Project1.qmd`.


# ADS Project 1: What made you happy today?
### Doc folder

The doc directory contains the report or presentation files. It can have subfolders.  

## Contents

`Project1.qmd` is the main file to run for this project. The other files in this directory are here to support that file.

A `.qmd` file is very similar to a `.rmd` file, but is produced by the `quarto package` and allows for some extra extensibility.

The `Project1_files` sub directory contains files required for `Project1.qmd` to run.
`styles.css` contains a custom `.css` script that's used within the `qmd` markdown file.

`Project1.html` is an output file that will placed in this folder after rendering. An identical file also exists in the `output` directory.