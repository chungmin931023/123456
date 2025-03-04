---
editor_options: 
  markdown: 
    wrap: 72
---

# 這是標題

這是一個無序列表：

-   項目一
-   項目二
-   項目三

這是一個表格：

| 姓名 | 年齡 | 職業       |
|------|------|------------|
| 小明 | 25   | 程式設計師 |
| 小華 | 30   | 設計師     |
| 小美 | 22   | 學生       |

這是 R 語言程式碼區塊：

\`\`\`r \# 這是標題 print("這是標題")

# 這是一個列表

list_items \<- c("項目一", "項目二", "項目三") print(list_items)

# 這是一個表格

data \<- data.frame( 姓名 = c("小明", "小華", "小美"), 年齡 = c(25, 30,
22), 職業 = c("程式設計師", "設計師", "學生") ) print(data)

# 這是程式碼區塊

greet \<- function(name) { return(paste("Hello,", name)) }
print(greet("小明"))
