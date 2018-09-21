---
output: md_document
---

# dr4pl 1.1.6

dr4pl function now allows 'data' argument when using 'dose' and 'response' arguments. See dr4pl examples.

# dr4pl 1.1.7

print.summary.dr4pl function no long provides t-statistics and p-values but now prints 95% confidence intervals instead.

# dr4pl 1.2

trend, method.init, method.robust, and method.optim arguments ignore case allow partial matching to string options
upperl was added as an argument to impose upper bounds to the optimised theta parameters
lowerl was added as an argument to impose lower bounds to the optimised theta parameters

plot.dr4pl now allows the user to plot multiple dr4pl objects on the same plot. see examples for more details on new arguments and use cases