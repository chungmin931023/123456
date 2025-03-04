# Set your email and name for Git
email <- "tony0981870941@gmail.com"
name <- "chungmin931023"

# Run the git config commands
system2("git", args = c("config", "--global", "user.email", email))
system2("git", args = c("config", "--global", "user.name", name))

library(tidyverse)
library(showtext)
library(sysfonts)

sysfonts::font_add_google('Noto Sans TC')
showtext_auto()

theme_set(
  theme(
    text = element_text(family = "Noto Sans TC")
  ) + 
    theme_classic()
)

