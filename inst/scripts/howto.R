# Building manuals and namespace using roxygen2
library(devtools)
document()


cat("importFrom('utils','write.csv')\n",file="NAMESPACE",append=TRUE)

