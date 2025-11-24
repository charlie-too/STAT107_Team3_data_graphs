## PLOT 3 - Calibration Plot (Gold Theme)
library(ggplot2)
bins <- seq(0,1, length.out=7)
mean_pred <- (bins[-1] + bins[-length(bins)]) /2
set.seed(1)
obs <- pmin(pmax(mean_pred + runif(length(mean_pred), -0.05, 0.05), 0), 1)
sizes <- sample(40:140, length(mean_pred), replace=TRUE)
dfc <- tibble(mean_pred, obs, sizes)
ggplot(dfc, aes(x=mean_pred, y=obs, size=sizes)) +
geom_abline(slope=1, intercept=0, linetype="dotted", color="goldenrod") +
geom_point(color="goldenrod", alpha=0.9) +
scale_size_identity() +
scale_x_continuous(limits=c(0,1)) +
scale_y_continuous(limits=c(0,1)) +
labs(title="Calibration of Recession Probabilities",
x="Mean predicted probability",
y="Observed recession frequency") +
theme_minimal(base_size=12)
