library("ggplot2")
library("showtext")
font_add_google("Bitter")
font_add_google("Open Sans")
showtext_auto()

jolly_theme <- function(base_size = 10,
                        base_family = "Open Sans",
                        h_just = 0) {
  theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) %+replace%
    theme(
      plot.title = element_text(
        family = "Bitter",
        face = "bold",
        size = rel(1.8),
        hjust = h_just,
        vjust = 10
      ),
      plot.title.position = "plot",
      plot.subtitle = element_text(
        face = "italic",
        size = rel(1.4),
        hjust = h_just,
        vjust = 9
      ),
      plot.caption = element_text(
        size = rel(1.2),
        face = "italic",
        hjust = 1
      ),
      plot.caption.position =  "plot",
      plot.margin = margin(1.5, 0.4, 0.4, 0.4, unit = "cm"),
      axis.title = element_text(
        face = "bold",
        size = rel(1.4)
      ),
      axis.title.x = element_text(margin = margin(t = 15, r = 0, b = 0, l = 0)),
      axis.title.y = element_text(margin = margin(t = 0, r = 15, b = 0, l = 0), angle = 90),
      axis.text = element_text(
        size = rel(1.4)
      ),
      legend.position = "bottom",
      legend.title = element_text(
        face = "bold",
        size = rel(1.4)
      ),
      complete = TRUE
    )
}

# store colours for comfortable plotting

humble_salmon <- "#EC836D"
dark_slate <- "#394755"
jolly_red <- "#E86B72"
jolly_petrol <- "#2D7F89"
jolly_blue <- "#1BC7DC"
jolly_green <- "#56BB83"
jolly_yellow <- "#F39F5C"
