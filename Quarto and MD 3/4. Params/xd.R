# Assignment automatic rendering script

# change this variable to your file path
file_path <- "C:\\Users\\rk422373\\Documents\\Reproducible Research\\Class 10\\RRcourse2023\\Quarto and MD 3\\4. Params\\file.csv"

data <- read.csv(file_path)

for (entry in data) {
  quarto_render("QMD_class_3_4.qmd", execute_params = list(
    year = entry.year,
    region = entry.region,
    printcode = FALSE,
    data = file_path
  ), output_file = paste0(“RK-report-“, params$region, “-“, params$year, “.html”)))
}