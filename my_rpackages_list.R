# Applying Ligature fonts
remotes::install_github("anthonynorth/rscodeio")
rscodeio::install_theme()

# Applying Firacode
# https://github.com/tonsky/FiraCode

# Github download
install.packages("usethis")
library(usethis)
create_github_token(scopes = c("(no scope)"), description = "R:GITHUB_PAT",
                    host = "https://github.com")
usethis::edit_r_environ()
GITHUB_PAT = ''

# HADES Package downloads all
devtools::install_github("ohdsi/Hades", upgrade = "always")

# updating packages
remotes::update_packages()

# Language servcer protocol for R
install.packages("languageserver")

# Downloading essential R package
install.packages(c('devtools',
                   'dplyr',
                   'data.table',
                   'DT',
                   'shiny',
                   'shinycssloaders',
                   'shinydashboard',
                   'R.utils',
                   'rvg',
                   'shinyWidgets',
                   'markdown',
                   'credentials',
                   'usethis',
                   'renv'))

# install PLP Packages
devtools::install_github("OHDSI/CircleR")
devtools::install_github("OHDSI/OhdsiRTools")
devtools::install_github("OHDSI/OhdsiSharing")
devtools::install_github("OHDSI/DatabaseConnector")
devtools::install_github("OHDSI/FeatureExtraction")
devtools::install_github("OHDSI/PatientLevelPrediction")
devtools::install_github("OHDSI/BigKnn")
devtools::install_github("OHDSI/Andromeda")

# install PLE Packages
devtools::install_github("OHDSI/CohortMethod")
devtools::install_github("OHDSI/MethodEvaluation")
devtools::install_github("OHDSI/EmpiricalCalibration")
devtools::install_github("OHDSI/CohortDiagnostics")


# Downloading rJava

#1) installr
installr::install.java()
rJava::.jinit()

#2) multilinguer
install.packages("multilinguer")
multilinguer::install_jdk()

install.packages("KoNLP", repos = c("https://forkonlp.r-universe.dev","https://cloud.r-project.org"), INSTALL_opts = c("–no-multiarch"))
library(KoNLP)

install.packages("rJava")

# JAVA path setting
Sys.setenv(JAVA_HOME="C:/Program Files/Java/jdk-17.0.2")


# updating R
install.packages("installr")
installr::updateR()
# Path: R/R_4.0.1/bin/x64/Rgui running


# Excelfile copy and paste
install.packages("datapasta")
#Addin data 검색 후 Paste as tribble 선택

#ggplot2 빠른 코딩 Addin ggplot2 builder
install.packages("tidyverse")
install.packages("esquisse")

library(ggplot2)

mydata <- iris
head(mydata)

unique(mydata$Species)
dim(mydata)

library(ggplot2)

ggplot(mydata) +
 aes(x = Sepal.Length, y = Sepal.Width, size = Petal.Width) +
 geom_point(shape = "circle",
 colour = "#112446") +
 theme_bw() +
 facet_wrap(vars(Species))

#code snippet 만들기 // 나만의 산점도 Shift + Tab // Shift + Space
   # 매일 쓰는 산점도 양식
   p <- ggplot(data = 데이터) +
       geom_point(aes(x = 변수1, y = 변수2)) +
       labs(title = "제목" +
           subtitle = "부제목",
           x = "x축", y = "y축") +
   # 그래프 테마 선택
         theme_bw()
   p
