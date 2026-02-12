library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Leo")

## Directorios
dir_plots <- here::here("figuras")
dir_rdata <- here::here("processed-data")

## Crear directorio para las figuras y archivos
dir.create(dir_plots, showWarnings = FALSE)
dir.create(dir_rdata, showWarnings = FALSE)

## Hacer una imagen de ejemplo
pdf(file.path(dir_plots, "mtcars_gear_vs_mpg.pdf"), useDingbats = FALSE)
ggplot(mtcars, aes(group = gear, y = mpg)) +
  geom_boxplot()
dev.off()

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()

# ─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────
#  setting  value
#  version  R version 4.5.1 (2025-06-13)
#  os       macOS Sequoia 15.7.3
#  system   aarch64, darwin20
#  ui       Positron
#  language (EN)
#  collate  en_US.UTF-8
#  ctype    en_US.UTF-8
#  tz       America/Mexico_City
#  date     2026-02-10
#  pandoc   NA
#  quarto   NA

# ─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────
#  package      * version date (UTC) lib source
#  cli            3.6.5   2025-04-23 [1] CRAN (R 4.5.0)
#  dplyr          1.1.4   2023-11-17 [1] CRAN (R 4.5.0)
#  farver         2.1.2   2024-05-13 [1] CRAN (R 4.5.0)
#  generics       0.1.4   2025-05-09 [1] CRAN (R 4.5.0)
#  ggplot2      * 4.0.2   2026-02-03 [1] CRAN (R 4.5.2)
#  glue           1.8.0   2024-09-30 [1] CRAN (R 4.5.0)
#  gtable         0.3.6   2024-10-25 [1] CRAN (R 4.5.0)
#  here         * 1.0.2   2025-09-15 [1] CRAN (R 4.5.0)
#  labeling       0.4.3   2023-08-29 [1] CRAN (R 4.5.0)
#  lifecycle      1.0.4   2023-11-07 [1] CRAN (R 4.5.0)
#  magrittr       2.0.3   2022-03-30 [1] CRAN (R 4.5.0)
#  pillar         1.11.0  2025-07-04 [1] CRAN (R 4.5.0)
#  pkgconfig      2.0.3   2019-09-22 [1] CRAN (R 4.5.0)
#  R6             2.6.1   2025-02-15 [1] CRAN (R 4.5.0)
#  RColorBrewer   1.1-3   2022-04-03 [1] CRAN (R 4.5.0)
# #  rlang          1.1.6   2025-04-11 [1] CRAN (R 4.5.0)
# #  rprojroot      2.1.1   2025-08-26 [1] CRAN (R 4.5.0)
#  S7             0.2.1   2025-11-14 [1] CRAN (R 4.5.2)
#  scales         1.4.0   2025-04-24 [1] CRAN (R 4.5.0)
#  sessioninfo  * 1.2.3   2025-02-05 [1] CRAN (R 4.5.0)
#  tibble         3.3.0   2025-06-08 [1] CRAN (R 4.5.0)
#  tidyselect     1.2.1   2024-03-11 [1] CRAN (R 4.5.0)
#  vctrs          0.6.5   2023-12-01 [1] CRAN (R 4.5.0)
#  withr          3.0.2   2024-10-28 [1] CRAN (R 4.5.0)
