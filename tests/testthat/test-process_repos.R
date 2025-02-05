test_that("process_repos() returns results with repo metadata", {

  my_project <-
    initialize_project("gitai_test_project") |>
    set_github_repos(
      repos = c("r-world-devs/GitStats", "openpharma/DataFakeR")
    ) |>
    add_files(files = "README.md") |>
    set_llm() |>
    set_prompt(system_prompt = "Summarize the user content if one sentence.")

  my_project$gitstats$verbose_off()

  results <- my_project |> process_repos()

  results |> is.list() |> expect_true()
  results |> names() |> expect_equal(c("GitStats", "DataFakeR"))

  results |> purrr::map(~ nchar(.x$text) > 10) |> unlist() |> all() |> expect_true()
})
