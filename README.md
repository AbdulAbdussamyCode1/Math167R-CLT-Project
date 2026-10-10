# CLT Project 1: How Fast Does Normal Happen?

**Math 167R — Statistical Computing with R**  
**Author:** Abdulwahab Abdussamy  
**Seed:** 1278

---

## Project Overview

This project uses Monte Carlo simulation in R to stress-test the Central Limit Theorem (CLT) across five different population distributions. The primary research question is:

> What is the smallest sample size (n) at which the sampling distribution of the sample mean becomes approximately normal?

The project investigates whether the common "n = 30" rule of thumb holds universally, and what happens when the assumptions behind the CLT are violated.

---

## Distributions Investigated

| Distribution | R Function | Key Characteristic | Smallest n |
|---|---|---|---|
| Standard Normal | `rnorm()` | Already normal | 1 |
| Six Sided Die | `sample()` | Discrete, symmetric | 10 |
| Exponential | `rexp()` | Strong right skew | 30 |
| Binomial Small | `rbinom()` | Extreme skew, discrete | 100 |
| Cauchy | `rcauchy()` | No finite mean or variance | Never |

---

## Key Findings

- The n = 30 rule is **not universal** — it depends heavily on the population shape
- Symmetric populations converge much faster than skewed ones
- The Binomial Small distribution requires n = 100 before normality is achieved
- The Cauchy distribution does not converge to a normal sampling distribution because its mean and variance are not defined

---

## Repository Structure

| File | Description |
|---|---|
| `01_standard_normal.qmd` | Standard Normal analysis |
| `02_six_sided_die.qmd` | Six Sided Die analysis |
| `03_exponential.qmd` | Exponential analysis |
| `04_binomial_small.qmd` | Binomial Small analysis |
| `05_cauchy_distribution.qmd` | Cauchy analysis |
| `final_summary.qmd` | Cross-distribution comparison and conclusions |
| `ai_prompts.m` | Log of AI interactions and iteration process |

---

## How to Reproduce

1. Clone this repository
2. Open the project in RStudio
3. Install the `moments` package: `install.packages("moments")`
4. Open any `.qmd` file and click Render
5. All simulations use `set.seed(1278)` for reproducibility\