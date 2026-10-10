# AI Interaction Log — CLT Project 1

## How I Used AI

I used Claude (claude.ai) as a supplementary tool throughout this project. My approach was a mix of writing my own code first and then using AI to help debug, improve, and expand it, as well as asking AI to generate boilerplate code for sections I already understood conceptually so I could focus my time on the analysis and interpretation. All generated code was reviewed, tested, and in many cases modified before being included in my project. The written conclusions and normality judgments are entirely my own based on what I observed in the rendered output.

---

## Interaction 1 — Understanding the Project

**My prompt:** I uploaded the project instructions and student guidance and asked Claude to summarize the key requirements.

**What I got:** A breakdown of the project structure and requirements.

**What I did with it:** I already had my own understanding from class, so I used this mainly to confirm I wasn't missing anything. I noticed Claude's initial summary didn't emphasize the "normal enough" standard enough, so I followed up specifically asking about how to define and apply that standard consistently across distributions.

**Follow up prompt:** "How should I define normal enough and apply it the same way across all five distributions?"

**Result:** I developed my own standard based on skewness between -0.5 and 0.5, kurtosis close to 3, bell shaped histograms, and linear Q-Q plots. I chose these thresholds myself after reviewing the literature on normality assessment.

---

## Interaction 2 — GitHub Setup

**My prompt:** Asked Claude to walk me through setting up GitHub and connecting it to RStudio.

**What I got:** Step by step instructions.

**What I did with it:** Followed the steps but ran into an authentication error when pushing for the first time. I tried troubleshooting it myself first by checking the RStudio Git settings before asking Claude for help. Eventually resolved it by setting up a Personal Access Token. I also asked about repo naming conventions and checked the project instructions myself before deciding on a name rather than just taking Claude's suggestion.

---

## Interaction 3 — Standard Normal Analysis

**My prompt:** After writing my own initial version of the Standard Normal analysis, I asked Claude to review my code and suggest improvements.

**What I got:** Suggestions for improving the loop structure and adding a theoretical normal curve overlay on the histograms.

**What I reviewed:** I tested the code chunk by chunk in the RStudio console before putting it in the Quarto document. I modified the color scheme and plot titles myself to match my personal style. I also adjusted the n_values vector — Claude's initial suggestion didn't include n=2 which I added because I wanted to see the very early stages of convergence.

**My conclusion:** Confirmed the Standard Normal is normal at every sample size. I noted in my write up that this serves as a visual benchmark for what "perfect normality" looks like, which was my own observation.

---

## Interaction 4 — Six Sided Die Analysis

**My prompt:** Asked Claude to help me set up the Monte Carlo simulation for the Six Sided Die.

**What I got:** Initial code using the sample() function.

**What I caught:** After rendering I noticed the population barplot looked identical every time and flagged it as a potential bug. I worked through the logic myself before asking Claude — I realized the population never changes so of course the barplot is always the same. This was an important conceptual moment where I understood the difference between the fixed population and the changing sampling distribution.

**What I changed:** I rewrote the conclusion section myself after reviewing the histograms. Claude's suggested n was 15 but after looking at my own Q-Q plots I decided n=10 was sufficient based on my normality standard, so I changed it to 10 and explained my reasoning.

---

## Interaction 5 — Exponential Analysis

**My prompt:** Asked Claude to help debug an issue I was having where the red normal curve wasn't showing up on my histograms.

**What I got:** The fix — I had the wrong mean parameter in the dnorm() call inside curve().

**What I reviewed:** After fixing it I went back and manually verified the theoretical mean and standard error formulas for the exponential distribution against my course notes to make sure they were correct. I confirmed that mean = 1/lambda = 1 and SE = 1/sqrt(n) for lambda=1.

**My conclusion:** The Exponential was the most instructive distribution for seeing the CLT work gradually. I wrote the conclusion section myself based on what I observed in the histograms and Q-Q plots.

---

## Interaction 6 — Binomial Small Analysis

**My prompt:** Asked Claude to explain why the Binomial Small distribution is harder for the CLT than the Exponential.

**What I got:** An explanation about the combination of skewness and discreteness slowing convergence.

**What I did with it:** I extended the n_values vector myself to include n=200 and n=500 because I wanted to see exactly where convergence happened. Claude's initial suggestion stopped at n=100 but I wasn't satisfied that n=100 was clearly normal enough based on my Q-Q plots, so I pushed further. After reviewing n=200 I was confident n=100 was the right answer based on my standard.

**My conclusion:** This was the strongest evidence against the n=30 rule. I made the call myself that n=100 was the answer after reviewing multiple pieces of evidence.

---

## Interaction 7 — Cauchy Analysis

**My prompt:** I asked Claude to explain mathematically why the Cauchy distribution breaks the CLT.

**What I got:** An explanation about infinite variance and how it violates the CLT's assumptions.

**What I did with it:** I looked this up independently in my statistics textbook to verify it. I also asked my professor during office hours about the Cauchy to make sure I understood it correctly before writing my conclusion. The boxplot comparison idea was something I suggested myself — I asked Claude to help me implement it in R after I thought of the idea.

**My conclusion:** The Cauchy section required the most independent thinking because the result is so counterintuitive. I spent extra time making sure I could explain in my own words why increasing n doesn't help when variance is infinite.

---

## Interaction 8 — Final Summary

**My prompt:** Asked Claude to help me build the convergence comparison plot showing skewness dropping across n for all distributions.

**What I got:** Initial code for the plot.

**What I changed:** I added the horizontal reference line at skewness=0.5 myself because I wanted to visually show where my normality threshold was. I also added the vertical line at n=30 to highlight the rule of thumb. These additions were my own idea to make the plot more directly connected to the research question.

**What I reviewed:** Cross checked the final summary table against my individual distribution files to make sure the numbers were consistent. Found a small discrepancy in the skewness value I reported for the Exponential and corrected it.

---

## Overall Reflection

Using AI as a verification and debugging tool rather than a primary author made this project significantly more educational. The moments where I disagreed with AI output — like changing the n value for the Six Sided Die, extending the sample sizes for the Binomial Small, and adding my own plot elements to the final summary — were where I learned the most. I came away with a genuine understanding of why the CLT works the way it does and why the n=30 rule is a guideline rather than a law.