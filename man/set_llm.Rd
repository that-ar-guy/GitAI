% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_llm.R
\name{set_llm}
\alias{set_llm}
\title{Set Large Language Model in \code{GitAI} object.}
\usage{
set_llm(gitai, provider = "openai", model = "gpt-4o-mini", seed = NULL, ...)
}
\arguments{
\item{gitai}{A \code{GitAI} object.}

\item{provider}{A LLM provider.}

\item{model}{A LLM model.}

\item{seed}{An integer to make results more reproducible.}

\item{...}{Other arguments to pass to \code{elmer::chat_openai()} function.}
}
\value{
A \code{GitAI} object.
}
\description{
Set Large Language Model in \code{GitAI} object.
}
