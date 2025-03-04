reshaped_data <- travel_data |> 
  tidyr::pivot_longer(
    cols = `2002`:`2024`,  # 選擇所有年份列
    names_to = "Year",     # 合併後的年份列名稱（字符串）
    values_to = "Number_of_Travelers"  # 數值列名稱（字符串）
  ) |> 
  dplyr::mutate(
    Year = as.numeric(Year),  # 將年份轉為數值類型
    Number_of_Travelers = ifelse(  # 處理可能的非數值字符（如逗號）
      is.character(Number_of_Travelers),
      readr::parse_number(Number_of_Travelers),
      Number_of_Travelers
    )
  ) |> 
  dplyr::ungroup()  # 確保移除分組結構