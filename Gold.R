# ============================================================
# Charlie Gold Theme for ggplot2
# Author: Charlie Fields
# Description: Custom Golden / Goldenrod theme for clean,
# professional plots across R projects.
# ============================================================

# Load required library
library(ggplot2)

# ------------------------------------------------------------
# Color Palette
# ------------------------------------------------------------

gold        <- "#DAA520"   # Goldenrod
gold_light  <- "#FFD700"   # Gold
gold_dark   <- "#B8860B"   # Dark Goldenrod
gold_cream  <- "#FAF6E7"   # Soft eggshell background

# ------------------------------------------------------------
# Main Charlie Gold Theme
# ------------------------------------------------------------
```{r}
theme_charlie_gold <- function(base_size = 14, base_family = "sans") {
  
  theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    theme(
      # Titles
      plot.title = element_text(
        size = base_size + 4,
        face = "bold",
        color = gold_dark,
        hjust = 0.5
      ),
      plot.subtitle = element_text(
        size = base_size + 1,
        face = "italic",
        color = gold_dark
      ),
      plot.caption = element_text(
        size = base_size - 2,
        color = gold_dark
      ),

      # Axes
      axis.title = element_text(
        size = base_size + 1,
        face = "bold",
        color = gold_dark
      ),
      axis.text = element_text(
        size = base_size,
        color = gold_dark
      ),

      # Gridlines
      panel.grid.major = element_line(color = gold_light, linewidth = 0.3),
      panel.grid.minor = element_line(color = gold_light, linewidth = 0.15),

      # Backgrounds
      panel.background = element_rect(fill = "white", color = NA),
      plot.background  = element_rect(fill = "white", color = NA),
      
      # Legend
      legend.title = element_text(color = gold_dark, face = "bold"),
      legend.text  = element_text(color = gold_dark),
      legend.background = element_rect(fill = "white", color = NA),

      # Facets
      strip.text = element_text(
        face = "bold",
        size = base_size,
        color = gold_dark
      ),
      strip.background = element_rect(
        fill = gold_cream,
        color = gold_dark,
        linewidth = 0.5
      )
    )
}

# ------------------------------------------------------------
# Color Scales (optional)
# ------------------------------------------------------------

scale_color_gold <- function(...) {
  scale_color_manual(values = c(gold_dark, gold, gold_light), ...)
}

scale_fill_gold <- function(...) {
  scale_fill_manual(values = c(gold_dark, gold, gold_light), ...)
}

# ============================================================
# End of charlie_gold_theme.R
# ============================================================