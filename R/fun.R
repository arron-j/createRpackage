#' @title Rpackage Create
#' 
#' @description Use the funciton createRpackage to init env.
#' 
#' @details Use the funciton createRpackage to init env.
#' 
#' @param packname Enter a direction, character, eg. 'selfpack'
#'
#' @return NULL
#' @export
#' @examples packname='packsf' 
#' createRpackage(packname)


createRpackage <- function(packname) {
  # 1. DESCRIPTION
  dir.create(packname)
  fileConn <- file(paste0(packname, "/DESCRIPTION"))  #创造一个文件
  writeLines(paste0("Package: ", packname), fileConn)
  close(fileConn)
  #
  sink(file = paste0(packname, "/DESCRIPTION"), append=T)
  cat("Type: Package\nTitle: This package is my first package created.\nVersion: 0.1.1\nDate: 2023-02-02\nAuthor: Jiang\nMaintainer: Jiang<arronjiangdc@hotmail.com>\nDescription: I want to say something about my first package,but my mouth as if being frozen by a bock of ice.\nLicense: GPL-3\nencoding: UTF-8\nLazyData: true") 
  sink()
  
  # 2. R/fun.R
  dir.create(paste0(packname, "/R"))
  fileConn <- file(paste0(packname, "/R/fun.R"))  #创造一个文件
  writeLines("#' @title simple function\n#' \n#' @description today,I create my first function,a very usrful function.\n#' \n#' @details you can use this function to caculate x+1,then return the value of x+1.\n#' \n#' @param x x is a number\n#'\n#' @return a dataframe\n#' @export\n#' @examples x=1;f(x)\n\nf <- function(x) { return(x + 1) }", fileConn) #写入内容到文件内
  close(fileConn)
  
  # 3. R/data.R 注意另外需要新建data文件夹存储内置数据集
  dir.create(paste0(packname, "/data"))
  fileConn <- file(paste0(packname, "/R/data.R"))  #创造一个文件
  writeLines("#' @title somedata to test\n#' @docType data\n#' @name td\n#' @keywords d dataset\n#'\n#'\nNULL", fileConn) #写入内容到文件内
  close(fileConn)
  cat(packname,'包模板创建完成')
}
