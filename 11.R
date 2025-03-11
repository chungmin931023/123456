library(tidyverse)

# 步驟 1: 導入數據並指定列類型
travel_data <- readr::read_csv(
  "reshaped_travel_data.csv",
  col_types = list(
    # 明確指定各列類型：
    首站抵達地 = readr::col_character(),   # 字符型 (如"亞洲地區")
    細分 = readr::col_character(),         # 字符型 (如"日本Japan")
    Year = readr::col_integer(),           # 數值型年份 (如2002)
    Number_of_Travelers = readr::col_number() # 自動處理千分位逗號(如"1,203,821")
  ),
  na = c("NA", "-", "")                   # 定義缺失值符號
)

# 步驟 2: 後處理驗證與調整
travel_data <- travel_data |> 
  dplyr::mutate(
    # 強制轉換確保數值型 (若原始數據有非數值字符)
    Number_of_Travelers = readr::parse_number(
      as.character(Number_of_Travelers),
      na = c("NA", "-", "")
    ),
    # 將「首站抵達地」和「細分」轉為因子 (可選，依分析需求)
    首站抵達地 = forcats::as_factor(首站抵達地),
    細分 = forcats::as_factor(細分)
  ) |> 
  # 移除完全缺失的行 (可選)
  tidyr::drop_na(Number_of_Travelers)

# 步驟 3: 驗證數據結構
dplyr::glimpse(travel_data)