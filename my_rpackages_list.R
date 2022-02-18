# HADES Package downloads all

install.packages("usethis")
library(usethis)
create_github_token(scopes = c("(no scope)"), description = "R:GITHUB_PAT",
                    host = "https://github.com")

GITHUB_PAT = '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'
usethis::edit_r_environ()


install.packages("remotes")
library(remotes)
install_github("ohdsi/Hades", upgrade = "always")

library(remotes)
update_packages()


# rJava Downloads
remotes::install_github("mrchypark/multilinguer")
library(multilinguer)
install_jdk()
library(rJava)
install.packages(c("hash", "tau", "Sejong", "RSQLite", "devtools", "bit",
                   "rex", "lazyeval", "htmlwidgets", "crosstalk", "promises",
                   "later", "sessioninfo", "xopen", "bit64", "blob", "DBI",
                   "memoise", "plogr", "covr", "DT", "rcmdcheck", "rversions"),
                 type = "binary")

remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))
library(KoNLP)



# JAVA path setting
Sys.setenv(JAVA_HOME="C:/Program Files/Amazon Corretto/jdk11.0.14_10/")

devtools::install_github("ohdsi/CirceR")
# c('Capr', 'CirceR', 'Eunomia', 'BigKnn', 'FeatureExtraction',
# 'CohortDiagnostics', 'CohortMethod', 'CohortGenerator',
# 'SelfControlledCaseSeries', 'SelfControlledCohort',
# 'PatientLevelPrediction', 'MethodEvaluation', 'OhdsiSharing', 'Hydra')





# R 업데이트 하기
install.packages("installr")
# 현재 가지고 있는 R/R_4.0.1/bin/x64/Rgui에서 아래 명령어 실행
# installr::updateR()

installr::install.java()


rJava::.jinit()

install.packages("multilinguer")
multilinguer::install_jdk()

install.packages(c("hash", "tau", "Sejong"))

install.packages("KoNLP")
installr::install.java()
library(KoNLP)


library(devtools)


install.packages("renv")

renv::activate()
renv::restore()

install.packages("FeatureExtraction")

devtools::install_github("ohdsi/CohortMethod")

# 엑셀파일 그대로 붙여넣기
install.packages("datapasta")
#Addin data 검색 후 Paste as tribble 선택

