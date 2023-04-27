library(quarto)

# Assignment automatic rendering script

# change this variable to your file path
file_path <- "C:\\Users\\rk422373\\Documents\\Reproducible Research\\Class 10\\RRcourse2023\\Quarto and MD 3\\4. Params\\file.csv"

data <- read.csv(file_path)

size <- nrow(data)

for (index in 1:8) {
  reg = data$region[index]
  yr = data$year[index]
  quarto_render("QMD_class_3_4.qmd", execute_params = list(
    year = yr,
    region = reg,
    printcode = FALSE,
    data = file_path
  ), output_file = paste0("RK-report-", reg, "-", yr, ".html"))
}
