
<!-- README.md is generated from README.Rmd. Please edit that file -->

# GitAI <img src="man/figures/logo.png" align="right" height="138" style="float:right; height:138px;"/>

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/r-world-devs/GitAI/graph/badge.svg)](https://app.codecov.io/gh/r-world-devs/GitAI)
<!-- badges: end -->

The goal of GitAI is to derive knowledge from GitHub or GitLab
repositories with the use of AI/LLM (Large Language Models). With GitAI
you can easily:

- set up your project scope (Git repositories),
- select content of interest (files and file types),
- choose your LLM backend,
- define the LLM prompts,
- process content of all repositories with a single function call.

And all of that in a nice tidyverse style.

## Installation

You can install the development version of `GitAI` from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("r-world-devs/GitAI")
```

## Example workflow

Basic workflow could look like:

``` r
library(GitAI)
# Set up project
my_project <- initialize_project("fascinating_project") |>
  set_github_repos(repos = c("r-world-devs/GitStats", "r-world-devs/GitAI", "openpharma/DataFakeR")) |>
  add_files(files = "README.md") |>
  set_llm() |>
  set_prompt("Write one-sentence summary for a project based on given input.")

# Get the results
results <- process_repos(my_project)
```
