###############################
# R code for object generation#
###############################


# if package 'rjags' not installed, install it
if(is.element('rjags', installed.packages()[,1]) == FALSE){install.packages('rjags')}
# Load package 'rjags' which provides an interface from R
#  to the JAGS library for Bayesian data analysis.
library(rjags)
packageVersion('rjags') # check which is your 'rjags' version
# version >= 4.10 is required

if(is.element('tidyverse', installed.packages()[,1]) == FALSE){install.packages('tidyverse')} # if package 'tidyverse' not installed, install it
library(tidyverse) # Load package 'tidyverse' which is a set of packages that work # in harmony with the Grammar of Graphics by Hadley Wickham # It includes several pacakges, among which `ggplot2`and `dplyr'
packageVersion('tidyverse') # check which is your 'tidyverse' version # version >= 1.3.0 is required

# if package 'gridExtra' not installed, install it
if(is.element('gridExtra', installed.packages()[,1]) == FALSE){install.packages('gridExtra')}
# Load package 'gridExtra' which provides a number of user-level
# functions to work with "grid" graphics, notably to arrange
# multiple grid-based plots on a page, and draw tables.
library(gridExtra)
packageVersion('gridExtra') # check which is your 'gridExtra' version
# version >= 2.3 is required

# if package 'ggmcmc' not installed, install it
if(is.element('ggmcmc', installed.packages()[,1]) == FALSE){install.packages('ggmcmc')}
# Load package 'ggmcmc' which is an R package for 
# analyzing Markov chain Monte Carlo simulations from Bayesian inference
library(ggmcmc)
packageVersion('ggmcmc') # check which is your 'ggmcmc' version
# version >= 1.3 is required

# if package 'GGally' not installed, install it
if(is.element('GGally', installed.packages()[,1]) == FALSE){install.packages('GGally')}
# Load package 'GGally' which is an R package for data visualization,
# extension to ggplot2 for correlation matrix and survival plots
library(GGally)
packageVersion('GGally') # check which is your 'GGally' version
# version >= 2.0.0 is required

# if package 'stringr' not installed, install it
if(is.element('stringr', installed.packages()[,1]) == FALSE){install.packages('stringr')}
# Load package 'stringr' which is an R package which provides 
# Simple, Consistent Wrappers for Common String Operations
library(stringr)
packageVersion('stringr') # check which is your 'stringr' version
# version >= 1.4 is required

# if package 'DT' not installed, install it
if(is.element('DT', installed.packages()[,1]) == FALSE){install.packages('DT')}
# Load package 'DT' which is an R package for 
# an R interface to the DataTables library
library(DT)
packageVersion('DT') # check which is your 'DT' version
# version >= 0.15 is required

# if package 'jagsUI' not installed, install it
if(is.element('jagsUI', installed.packages()[,1]) == FALSE){install.packages('jagsUI')}
# Load package 'jagsUI' which is an R package for 
# an R interface to the DataTables library
library(jagsUI)
packageVersion('jagsUI') # check which is your 'jagsUI' version
# version >= 1.5.1 is required



getParamLateX <- function(param){
	if(param == "kuw") param <- "\\(k_{uw}\\)"
	else if(param == "kus") param <- "\\(k_{us}\\)"
	else if(param == "kuf") param <- "\\(k_{uf}\\)"
	else if(param == "kupw") param <- "\\(k_{upw}\\)"
	else if(param == "kee") param <- "\\(k_{ee}\\)"
	else if(param == "keg") param <- "\\(k_{eg}\\)"
	else if(param == "km1") param <- "\\(k_{m1}\\)"
	else if(param == "km2") param <- "\\(k_{m2}\\)"
	else if(param == "km3") param <- "\\(k_{m3}\\)"
	else if(param == "km3") param <- "\\(k_{m3}\\)"
	else if(param == "km4") param <- "\\(k_{m4}\\)"
	else if(param == "km5") param <- "\\(k_{m5}\\)"
	else if(param == "km6") param <- "\\(k_{m6}\\)"
	else if(param == "km7") param <- "\\(k_{m7}\\)"
	else if(param == "km8") param <- "\\(k_{m8}\\)"
	else if(param == "km9") param <- "\\(k_{m9}\\)"
	else if(param == "km10") param <- "\\(k_{m10\\)"
	else if(param == "km11") param <- "\\(k_{m11}\\)"
	else if(param == "km12") param <- "\\(k_{m12}\\)"
	else if(param == "km13") param <- "\\(k_{m13}\\)"
	else if(param == "km14") param <- "\\(k_{m14}\\)"
	else if(param == "km15") param <- "\\(k_{m15}\\)"
	else if(param == "kem1") param <- "\\(k_{em1}\\)"
	else if(param == "kem2") param <- "\\(k_{em2}\\)"
	else if(param == "kem3") param <- "\\(k_{em3}\\)"
	else if(param == "kem4") param <- "\\(k_{em4}\\)"
	else if(param == "kem5") param <- "\\(k_{em5}\\)"
	else if(param == "kem6") param <- "\\(k_{em6}\\)"
	else if(param == "kem7") param <- "\\(k_{em7}\\)"
	else if(param == "kem8") param <- "\\(k_{em8}\\)"
	else if(param == "kem9") param <- "\\(k_{em9}\\)"
	else if(param == "kem10") param <- "\\(k_{em10}\\)"
	else if(param == "kem11") param <- "\\(k_{em11}\\)"
	else if(param == "kem12") param <- "\\(k_{em12}\\)"
	else if(param == "kem13") param <- "\\(k_{em13}\\)"
	else if(param == "kem14") param <- "\\(k_{em14}\\)"
	else if(param == "kem15") param <- "\\(k_{em15}\\)"
	else if(param == "g0") param <- "\\(g_{0}\\)"
	else if(param == "gmax") param <- "\\(g_{max}\\)"
	else if(param == "sigmaCpred") param <- "\\(\\sigma_{p}\\)"
	else if(param == "sigmaCmetpred1") param <- "\\(\\sigma_{met1}\\)"
	else if(param == "sigmaCmetpred2") param <- "\\(\\sigma_{met2}\\)"
	else if(param == "sigmaCmetpred3") param <- "\\(\\sigma_{met3}\\)"
	else if(param == "sigmaCmetpred4") param <- "\\(\\sigma_{met4}\\)"
	else if(param == "sigmaCmetpred5") param <- "\\(\\sigma_{met5}\\)"
	else if(param == "sigmaCmetpred6") param <- "\\(\\sigma_{met6}\\)"
	else if(param == "sigmaCmetpred7") param <- "\\(\\sigma_{met7}\\)"
	else if(param == "sigmaCmetpred8") param <- "\\(\\sigma_{met8}\\)"
	else if(param == "sigmaCmetpred9") param <- "\\(\\sigma_{met9}\\)"
	else if(param == "sigmaCmetpred10") param <- "\\(\\sigma_{met10}\\)"
	else if(param == "sigmaCmetpred11") param <- "\\(\\sigma_{met11}\\)"
	else if(param == "sigmaCmetpred12") param <- "\\(\\sigma_{met12}\\)"
	else if(param == "sigmaCmetpred13") param <- "\\(\\sigma_{met13}\\)"
	else if(param == "sigmaCmetpred14") param <- "\\(\\sigma_{met14}\\)"
	else if(param == "sigmaCmetpred15") param <- "\\(\\sigma_{met15}\\)"
	else if(param == "sigmaGpred") param <- "\\(\\sigma_{G}\\)"
	return(param)
}

getParamPRIOR <- function(param){
	if(param == "kuw") param <- "log_{10}(k_{uw})"
	else if(param == "kus") param <- "log_{10}(k_{us})"
	else if(param == "kuf") param <- "log_{10}(k_{uf})"
	else if(param == "kupw") param <- "log_{10}(k_{upw})"
	else if(param == "kee") param <- "log_{10}(k_{ee})"
	else if(param == "keg") param <- "log_{10}(k_{eg})"
	else if(param == "km1") param <- "log_{10}(k_{m1})"
	else if(param == "km2") param <- "log_{10}(k_{m2})"
	else if(param == "km3") param <- "log_{10}(k_{m3})"
	else if(param == "km4") param <- "log_{10}(k_{m4})"	
	else if(param == "km5") param <- "log_{10}(k_{m5})"
	else if(param == "km6") param <- "log_{10}(k_{m6})"
	else if(param == "km7") param <- "log_{10}(k_{m7})"
	else if(param == "km8") param <- "log_{10}(k_{m8})"
	else if(param == "km9") param <- "log_{10}(k_{m9})"
	else if(param == "km10") param <- "log_{10}(k_{m10})"
	else if(param == "km11") param <- "log_{10}(k_{m11})"
	else if(param == "km12") param <- "log_{10}(k_{m12})"
	else if(param == "km13") param <- "log_{10}(k_{m13})"
	else if(param == "km14") param <- "log_{10}(k_{m14})"
	else if(param == "km15") param <- "log_{10}(k_{m15})"
	else if(param == "kem1") param <- "log_{10}(k_{em1})"
	else if(param == "kem2") param <- "log_{10}(k_{em2})"
	else if(param == "kem3") param <- "log_{10}(k_{em3})"
	else if(param == "kem4") param <- "log_{10}(k_{em4})"
	else if(param == "kem5") param <- "log_{10}(k_{em5})"
	else if(param == "kem6") param <- "log_{10}(k_{em6})"
	else if(param == "kem7") param <- "log_{10}(k_{em7})"
	else if(param == "kem8") param <- "log_{10}(k_{em8})"
	else if(param == "kem9") param <- "log_{10}(k_{em9})"
	else if(param == "kem10") param <- "log_{10}(k_{em10})"
	else if(param == "kem11") param <- "log_{10}(k_{em11})"
	else if(param == "kem12") param <- "log_{10}(k_{em12})"
	else if(param == "kem13") param <- "log_{10}(k_{em13})"
	else if(param == "kem14") param <- "log_{10}(k_{em14})"
	else if(param == "kem15") param <- "log_{10}(k_{em15})"
	else if(param == "g0") param <- "log_{10}(g_{0})"
	else if(param == "gmax") param <- "log_{10}(g_{max})"
	else if(param == "sigmaCpred") param <- "$\\sigma_{p}"
	else if(param == "sigmaCmetpred1") param <- "$\\sigma$_{met1}"
	else if(param == "sigmaCmetpred2") param <- "$\\sigma$_{met2}"
	else if(param == "sigmaCmetpred3") param <- "$\\sigma$_{met3}"
	else if(param == "sigmaCmetpred4") param <- "$\\sigma$_{met4}"
	else if(param == "sigmaCmetpred5") param <- "$\\sigma$_{met5}"
	else if(param == "sigmaCmetpred6") param <- "$\\sigma$_{met6}"
	else if(param == "sigmaCmetpred7") param <- "$\\sigma$_{met7}"
	else if(param == "sigmaCmetpred8") param <- "$\\sigma$_{met8}"
	else if(param == "sigmaCmetpred9") param <- "$\\sigma$_{met9}"
	else if(param == "sigmaCmetpred10") param <- "$\\sigma$_{met10}"
	else if(param == "sigmaCmetpred11") param <- "$\\sigma$_{met11}"
	else if(param == "sigmaCmetpred12") param <- "$\\sigma$_{met12}"
	else if(param == "sigmaCmetpred13") param <- "$\\sigma$_{met13}"
	else if(param == "sigmaCmetpred14") param <- "$\\sigma$_{met14}"
	else if(param == "sigmaCmetpred15") param <- "$\\sigma$_{met15}"
	else if(param == "sigmaGpred") param <- "$\\sigma$_{G}"
	return(param)
}

getParamGOF <- function(param){
	if(param == "kuw") param <- "k_{uw}"
	else if(param == "kus") param <- "k_{us}"
	else if(param == "kuf") param <- "k_{uf}"
	else if(param == "kupw") param <- "k_{upw}"
	else if(param == "kee") param <- "k_{ee}"
	else if(param == "keg") param <- "k_{eg}"
	else if(param == "km1") param <- "k_{m1}"
	else if(param == "km2") param <- "k_{m2}"
	else if(param == "km3") param <- "k_{m3}"
	else if(param == "km4") param <- "k_{m4}"
	else if(param == "km5") param <- "k_{m5}"
	else if(param == "km6") param <- "k_{m6}"
	else if(param == "km7") param <- "k_{m7}"
	else if(param == "km8") param <- "k_{m8}"
	else if(param == "km9") param <- "k_{m9}"
	else if(param == "km10") param <- "k_{m10}"
	else if(param == "km11") param <- "k_{m11}"
	else if(param == "km12") param <- "k_{m12}"
	else if(param == "km13") param <- "k_{m13}"
	else if(param == "km14") param <- "k_{m14}"
	else if(param == "km15") param <- "k_{m15}"
	else if(param == "kem1") param <- "k_{em1}"
	else if(param == "kem2") param <- "k_{em2}"
	else if(param == "kem3") param <- "k_{em3}"
	else if(param == "kem4") param <- "k_{em4}"
	else if(param == "kem5") param <- "k_{em5}"
	else if(param == "kem6") param <- "k_{em6}"
	else if(param == "kem7") param <- "k_{em7}"
	else if(param == "kem8") param <- "k_{em8}"
	else if(param == "kem9") param <- "k_{em9}"
	else if(param == "kem10") param <- "k_{em10}"
	else if(param == "kem11") param <- "k_{em11}"
	else if(param == "kem12") param <- "k_{em12}"
	else if(param == "kem13") param <- "k_{em13}"
	else if(param == "kem14") param <- "k_{em14}"
	else if(param == "kem15") param <- "k_{em15}"
	else if(param == "g0") param <- "g_{0}"
	else if(param == "gmax") param <- "g_{max}"
	else if(param == "sigmaCpred") param <- "sigma_{p}"
	else if(param == "sigmaCmetpred1") param <- "sigma_{met1}"
	else if(param == "sigmaCmetpred2") param <- "sigma_{met2}"
	else if(param == "sigmaCmetpred3") param <- "sigma_{met3}"
	else if(param == "sigmaCmetpred4") param <- "sigma_{met4}"
	else if(param == "sigmaCmetpred5") param <- "sigma_{met5}"
	else if(param == "sigmaCmetpred6") param <- "sigma_{met6}"
	else if(param == "sigmaCmetpred7") param <- "sigma_{met7}"
	else if(param == "sigmaCmetpred8") param <- "sigma_{met8}"
	else if(param == "sigmaCmetpred9") param <- "sigma_{met9}"
	else if(param == "sigmaCmetpred10") param <- "sigma_{met10}"
	else if(param == "sigmaCmetpred11") param <- "sigma_{met11}"
	else if(param == "sigmaCmetpred12") param <- "sigma_{met12}"
	else if(param == "sigmaCmetpred13") param <- "sigma_{met13}"
	else if(param == "sigmaCmetpred14") param <- "sigma_{met14}"
	else if(param == "sigmaCmetpred15") param <- "sigma_{met15}"
	else if(param == "sigmaGpred") param <- "sigma_{G}"
	return(param)
}

getParamUnit <- function(param,unit){
	if(param == "kuw") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kus") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kuf") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kupw") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kee") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "keg") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km1") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km2") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km3") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km4") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km5") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km6") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km7") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km8") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km9") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km10") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km11") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km12") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km13") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km14") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "km15") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem1") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem2") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem3") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem4") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem5") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem6") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem7") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem8") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem9") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem10") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem11") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem12") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem13") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem14") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "kem15") param = paste0("\\(",substr(unit, 1, 1), "^{-1}\\)")
	else if(param == "g0") param = paste0("\\(",substr(gunit,1,1),"\\)")
	else if(param == "gmax") param = paste0("\\(",substr(gunit,1,1),"\\)")
	else if(param == "sigmaCpred") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred1") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred2") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred3") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred4") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred5") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred6") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred7") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred8") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred9") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred10") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred11") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred12") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred13") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred14") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaCmetpred15") param = "\\(\\mu g.g^{-1}\\)"
	else if(param == "sigmaGpred") param = paste0("\\(",substr(gunit,1,1),"\\)")
}

paramsVectorToLateX <- function(param){
	for(i in param)
		i <- getParamLateX(i)
	return(param)
}

getParamHTML <- function(param){
	if(param == "kuw") param <- "<b>k<sub>uw</sub></b>"
	else if(param == "kus") param <- "<b>k<sub>us</sub></b>"
	else if(param == "kuf") param <- "<b>k<sub>uf</sub></b>"
	else if(param == "kupw") param <- "<b>k<sub>upw</sub></b>"
	else if(param == "kee") param <- "<b>k<sub>ee</sub></b>"
	else if(param == "keg") param <- "<b>k<sub>eg</sub></b>"
	else if(param == "km1") param <- "<b>k<sub>m1</sub></b>"
	else if(param == "km2") param <- "<b>k<sub>m2</sub></b>"
	else if(param == "km3") param <- "<b>k<sub>m3</sub></b>"
	else if(param == "km4") param <- "<b>k<sub>m4</sub></b>"
	else if(param == "km5") param <- "<b>k<sub>m5</sub></b>"
	else if(param == "km6") param <- "<b>k<sub>m6</sub></b>"
	else if(param == "km7") param <- "<b>k<sub>m7</sub></b>"
	else if(param == "km8") param <- "<b>k<sub>m8</sub></b>"
	else if(param == "km9") param <- "<b>k<sub>m9</sub></b>"
	else if(param == "km10") param <- "<b>k<sub>m10</sub></b>"
	else if(param == "km11") param <- "<b>k<sub>m11</sub></b>"
	else if(param == "km12") param <- "<b>k<sub>m12</sub></b>"
	else if(param == "km13") param <- "<b>k<sub>m13</sub></b>"
	else if(param == "km14") param <- "<b>k<sub>m14</sub></b>"
	else if(param == "km15") param <- "<b>k<sub>m15</sub></b>"
	else if(param == "kem1") param <- "<b>k<sub>em1</sub></b>"
	else if(param == "kem2") param <- "<b>k<sub>em2</sub></b>"
	else if(param == "kem3") param <- "<b>k<sub>em3</sub></b>"
	else if(param == "kem4") param <- "<b>k<sub>em4</sub></b>"
	else if(param == "kem5") param <- "<b>k<sub>em5</sub></b>"
	else if(param == "kem6") param <- "<b>k<sub>em6</sub></b>"
	else if(param == "kem7") param <- "<b>k<sub>em7</sub></b>"
	else if(param == "kem8") param <- "<b>k<sub>em8</sub></b>"
	else if(param == "kem9") param <- "<b>k<sub>em9</sub></b>"
	else if(param == "kem10") param <- "<b>k<sub>em10</sub></b>"
	else if(param == "kem11") param <- "<b>k<sub>em11</sub></b>"
	else if(param == "kem12") param <- "<b>k<sub>em12</sub></b>"
	else if(param == "kem13") param <- "<b>k<sub>em13</sub></b>"
	else if(param == "kem14") param <- "<b>k<sub>em14</sub></b>"
	else if(param == "kem15") param <- "<b>k<sub>em15</sub></b>"
	else if(param == "g0") param <- "<b>g<sub>0</sub></b>"
	else if(param == "gmax") param <- "<b>g<sub>max</sub></b>"
	else if(param == "sigmaCpred") param <- "<b>&sigma;<sub>p</sub></b>"
	else if(param == "sigmaCmetpred1") param <- "<b>&sigma; <sub>met1</sub></b>"
	else if(param == "sigmaCmetpred2") param <- "<b>&sigma; <sub>met2</sub></b>"
	else if(param == "sigmaCmetpred3") param <- "<b>&sigma; <sub>met3</sub></b>"
	else if(param == "sigmaCmetpred4") param <- "<b>&sigma; <sub>met4</sub></b>"
	else if(param == "sigmaCmetpred5") param <- "<b>&sigma; <sub>met5</sub></b>"
	else if(param == "sigmaCmetpred6") param <- "<b>&sigma; <sub>met6</sub></b>"
	else if(param == "sigmaCmetpred7") param <- "<b>&sigma; <sub>met7</sub></b>"
	else if(param == "sigmaCmetpred8") param <- "<b>&sigma; <sub>met8</sub></b>"
	else if(param == "sigmaCmetpred9") param <- "<b>&sigma; <sub>met9</sub></b>"
	else if(param == "sigmaCmetpred10") param <- "<b>&sigma; <sub>me10</sub></b>"
	else if(param == "sigmaCmetpred11") param <- "<b>&sigma; <sub>met11</sub></b>"
	else if(param == "sigmaCmetpred12") param <- "<b>&sigma; <sub>met12</sub></b>"
	else if(param == "sigmaCmetpred13") param <- "<b>&sigma; <sub>met13</sub></b>"
	else if(param == "sigmaCmetpred14") param <- "<b>&sigma; <sub>met14</sub></b>"
	else if(param == "sigmaCmetpred15") param <- "<b>&sigma; <sub>met15</sub></b>"
	else if(param == "sigmaGpred") param <- "<b>&sigma; <sub>G</sub></b>"
	return(param)
}

getParamUnitHTML <- function(param, unit){
	if(param == "kuw") param = paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kus") param = paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kuf") param = paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kupw") param = paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kee") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "keg") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "ke3") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km1") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km2") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km3") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km4") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km5") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km6") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km7") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km8") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km9") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km10") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km11") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km12") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km13") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km14") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "km15") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem1") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem2") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem3") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem4") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem5") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem6") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem7") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem8") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem9") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem10") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem11") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem12") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem13") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem14") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "kem15") param =  paste0("<i><b>",substr(unit, 1, 1), "<sup>-1</sup></b></i>")
	else if(param == "g0") param =  paste0("<i><b>",gunit,"</b></i>")
	else if(param == "gmax") param =  paste0("<i><b>",gunit,"</b></i>")
	else if(param == "sigmaCpred") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred1") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred2") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred3") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred4") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred5") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred6") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred7") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred8") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred9") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred10") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred11") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred12") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred13") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred14") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaCmetpred15") param = "<i><b>μg.g<sup>-1</sup></b></i>"
	else if(param == "sigmaGpred") param = paste0("<i><b>",gunit,"</b></i>")
}


# 1. Import data ####

filename <- files[x]
dataTable <- as_tibble(data[[x]])
tacc <- tacc1[x]
timeFormat <- timeFormat1[x] # Time unit

# 2. Define variables ####
Cexp <- dataTable %>%
  filter(time != 0) %>%
  select(starts_with("exp")) #Exposure concentration
concexp <- unique(Cexp[[1]])

if(filename=="Enchytraeus_La_14d_Huang2020.txt"){
	concexp <- concexp[[6]]
}else{
concexp <- concexp[[1]]
}

whichexp <- str_remove(colnames(Cexp), pattern = "exp") # Which exposure routes
if("w" %in% whichexp) whichexp <- str_replace(whichexp, "w", "water")
if("s" %in% whichexp) whichexp <- str_replace(whichexp, "s", "sediment")
if("f" %in% whichexp) whichexp <- str_replace(whichexp, "f", "food") 
if("pw" %in% whichexp) whichexp <- str_replace(whichexp, "pw", "pore water")

if(length(Cexp)==1){
  if (whichexp == "water"){
    dataTable <- dataTable %>% filter(expw == concexp) }
  if (whichexp == "sediment"){
    dataTable <- dataTable %>% filter(exps == concexp) }
  if (whichexp == "food"){
    dataTable <- dataTable %>% filter(expf == concexp) }
  if (whichexp == "pwater"){
    dataTable <- dataTable %>% filter(exppw == concexp) }
} # select data for the selected exposure concentration

if (length(Cexp)!=1){
  if (whichexp == "water"){
    dataTable <- dataTable %>%
      filter(expw == concexp | exps == concexp)
    
    Cexp <- Cexp %>%
      filter(expw == concexp | exps == concexp)
  }
  if (whichexp == "sediment"){
    dataTable <- dataTable %>%
      filter(exps == concexp)
    
    Cexp <- Cexp %>%
      filter(exps == concexp)
  }
  
}

# To define the sigma prior upper limit
# we select the higher concentration of the data
# and we multiply it by a number

concmax <- NULL
max <- max(na.omit(dataTable$conc))
concmax <- 5*max

# and we have to remove this data
# Cobs <- filter(Cobs, Cobs!=max(Cobs))
dataTable <- dataTable %>%
  filter_all(any_vars(! is.na(.))) %>%
  filter(is.na(conc)| conc!= max) 

# preparation for priors data about growth data
if("growth" %in% colnames(dataTable)){
  maxg <- max(na.omit(dataTable$growth))
  gmaxsup <- 3*maxg
  dataTable <- dataTable %>%
    filter_all(any_vars(! is.na(.))) %>%
    filter(is.na(growth)| growth!= maxg)}

# All observed internal concentrations for t > 0
# create a temporary table (in order to avoid Na values)
datatabletest <- dataTable %>%
  select(time, contains("conc"))
datatabletest <- na.omit(datatabletest)

#define the number of data for the accumulation phase
# rankacc <- max(which(datatabletest %>%
#                        filter_all(any_vars(! is.na(.))) %>%
#                        select(matches("time")) == tacc)) - nrow(dataTable %>% filter(time == 0))

if(nrow(datatabletest%>%filter(time==tacc))!=0){
	rankacc <- max(which(datatabletest %>%
						  	filter_all(any_vars(! is.na(.))) %>%
						  	select(matches("time")) == tacc)) - nrow(datatabletest %>% filter(time == 0))
} else {
	tt <- datatabletest$time[datatabletest$time<=tacc]
	tacc2 <- max(tt)
	
	rankacc <- max(which(datatabletest %>%
						  	filter_all(any_vars(! is.na(.))) %>%
						  	select(matches("time")) == tacc2)) - nrow(datatabletest %>% filter(time == 0))
	
}

#Select bioaccumulation data without NA values 
Cobs <- datatabletest %>%
  filter(time != 0) %>%
  select(contains("conc"))
#select all time for bioaccumulation without NA values
tp0 <- datatabletest["time"] 
tp <- tp0 %>% filter(time != 0) # for t > 0
tp <- as.numeric(t(data.frame(tp)))

# Variables for time points
# tp0 <- dataTable["time"] # all
# tp <- tp0 %>% filter(time != 0) # for t > 0
lentp <- length(tp)

# create time variables for predictions
# Simulation variables
nsimu <- 500 # number of time points to simulate the model
# time sequence for the simulation
vt <- seq(0.0000001, max(tp)-0.0000001, length.out = nsimu)
# Add time points at which there are observations (required for the ppc)
vt <- sort(c(vt, as.numeric(t(data.frame(tp)))))
#select vtacc: for the uptake phase
vtacc <- vt[vt<=tacc]
#select vtdep: for the depuration phase
vtdep <-vt[vt>tacc]


# Column names of the data set
cn <- colnames(dataTable)
# nbr of exposure routes (I in the equations)
nexp <- length(whichexp)
# Extract observed internal concentration for the parent compound (t=0 included)
Cobsp0 <- dataTable %>%
  select(matches("conc"), -contains("concm"))
# Extract observed internal concentration for the metabolites (t=0 included)
Cobsmet0 <- dataTable %>%
  select(contains("concm"))
met <- "no"
if(ncol(Cobsmet0) != 0) met <- "yes"
# nbr of metabolites  (L in the equations)
nmet <- ncol(Cobsmet0)

# Is there depuration data or not
elim_data <- ifelse(max(tp)>tacc, "yes", "no")

# Is elimination?
elim <- "yes" #by default

# nbr of elimination processes (J in the equations)
nelim <- 0
if(elim == "yes"){
  nelim <- 1+ncol(dataTable %>% select(contains("growth")))
}

# Is growth in data?
elim_growth <- "no"
if("growth" %in% cn){
  elim_growth <- "yes"
  ng <- 2 # nbr of growth parameters (gmax, g0)
}

# Growth unit
gunit <- NULL
if("growth" %in% cn){
  gunit <- "g"
}

# Which elimination processes: to summarize metadata as given via the data file by the user
whichelim <- NULL
if(elim == "yes"){
  whichelim <- append(whichelim, "excretion")
  if(elim_growth == "yes"){
    whichelim <- append(whichelim, "growth")
    if(nmet != 0){
      whichelim <- append(whichelim, "biotransformation")
    }
  }else{
    if(nmet != 0){
      whichelim <- append(whichelim, "biotransformation")
    }
  }
} else {
  if(nmet != 0){
    whichelim <- append(whichelim, "biotransformation")
  }
}


# Mean internal concentration of the parent compound at t = 0
C0 <- dataTable %>%
  filter(time == 0) %>%
  select(contains("conc")) %>%
  summarise(C0 = mean(conc))

# Observed growth
if(elim_growth == "yes"){
  Gobs0 <- dataTable %>% select(matches("growth")) # growth data with t = 0 included
  # dataframe for growth data
  datatableg <<- dataTable %>%
    select(time, growth)
  datatableg <<- na.omit(datatableg)
  
  #Select growth data without NA values 
  Gobs <<- datatableg %>%
    filter(time != 0) %>%
    select(growth)
  #select all time for growth without NA values
  tg0 <<- datatableg["time"] 
  tpg <<- tg0 %>% filter(time != 0) # for t > 0
  # Rank of growth time ending
  rankg <<- nrow(tpg)
  tpg <<- as.numeric(t(data.frame(tpg)))
  
  # for prediction, creat a new vector for time corresponding to growth data
  vtg <- seq(0.0000001, max(tpg)-0.0000001, length.out = nsimu)
  vtg <- sort(c(vtg, as.numeric(t(tpg))))
  
}


# prepare data in the good format
Cobs <- data.frame(Cobs)
concmax <- data.frame(concmax)
tp <- as.numeric(t(data.frame(tp)))
lentp <- length(tp) 
Cexp <- data.frame(Cexp)
C0 <- data.frame(C0)

# create a list of the data for the fitting process: data4fit
if(elim_growth == "yes"){
  Gobs <- data.frame(Gobs)
  data4fit <- list(Cobs = Cobs,
                   tp = tp,
                   tpg = tpg,
                   rankg = rankg,
                   lentp = lentp,
                   Cexp = Cexp,
                   tacc = tacc,
                   rankacc1 = rankacc + 1,
                   C0 = C0,
                   rankacc = rankacc,
                   Gobs = Gobs,
                   gmaxsup = gmaxsup,
                   vtacc=vtacc,
                   vtdep=vtdep,
                   vtg=vtg
  )
}else{
  data4fit <- list(Cobs = Cobs,
                   tp = tp,
                   lentp = lentp,
                   Cexp = Cexp,
                   tacc = tacc,
                   rankacc1 = rankacc + 1,
                   C0 = C0,
                   rankacc = rankacc,
                   vtacc=vtacc,
                   vtdep=vtdep
  )
}


# 3. MODEL ####

#3.1. CREATE SYMBOLS ####

### Create parameter names for the deterministic part
# Exposure routes (as in equations)
whichexpeq <- NULL
whichexpeq <- str_remove(colnames(dataTable %>% select(starts_with("exp"))), pattern = "exp")

parkexp <- NULL
for(i in 1:nexp){
  parkexp[i] <- paste0("ku", whichexpeq[i])
}

# Elimination processes other than biotransformation (as in equations)
if(elim == "yes") {
  parkelim <- NULL
  nelimtest <- NULL
  
  if(elim_growth == "yes") {
    nelimtest <-c("e","g")
  } else {
    nelimtest <-c("e")
  }
  
  for(j in 1:nelim){
    parkelim[j] <- paste0("ke", nelimtest[j])
  } 
} else {
  parkelim <- 0
}
# Biotransformation (only if met == "yes")
parkm <- NULL # metabolization rates
parkem <- NULL # elimination rates of metabolites
if(met == "yes"){
  for(l in 1:nmet){
    parkm[l] <- paste0("km", l) # (as in equations)
  }
  for(l in 1:nmet){
    parkem[l] <- paste0("kem", l) # (kel in equations)
  }
}
# Growth parameters (von Bertalanffy miodel): gmax and g0
if(elim_growth == "yes") parg <- c("gmax","g0")

# Set of parameters for the deterministic part
if(is.null(whichelim)){
  pardet <- c(parkexp)
}else{
  ifelse(elim =="no", pardet <- c(parkexp),pardet <- c(parkexp, parkelim))
  if(met == "yes") pardet <- c(pardet, parkm, parkem)
  if(elim_growth =="yes") pardet <- c(pardet, parg)
}
if(length(pardet) == 0) "warning" # length(pardet) must be 1 at the minimum

### Additional symbols
E <- NULL
if(nelim != 0){
  for(j in 1:nelim){
    E <- paste0(E, str_c(parkelim, "+")[j])
  }
  E <- str_sub(E, end = nchar(E)-1)
} else {
  E <- 0
}

M <- NULL
for(l in 1:nmet){
  M <- paste0(M, str_c(parkm, "+")[l])
}
M <- str_sub(M, end = nchar(M)-1)

D <- NULL # defined here as a vector for all metabolites
if (nelim == 0){
  if(nmet == 0) {
    D <- "0"
  } else {
    for(l in 1:nmet){
      D[l] <- paste0(parkem[l], "-(", M,")")
    }
  }
} else {
  if(nmet == 0) {
    D <- paste0(parkem[l], "-(", E,")")
  } else {
    for(l in 1:nmet){
      D[l] <- paste0(parkem[l], "-(", E,"+", M,")")
    }
  }
}
# U, R, and Q will be created in file "model.txt"

### Create variable names for internal concentrations
varp <- "Cpred" # predicted parent compound (C_p(t) in equations)
varmet <- NULL # predicted metabolites
varG <- NULL # predicted metabolites

vn <- varp
if(met == "yes"){
  for(l in 1:nmet){
    varmet[l] <- paste0("Cmetpred", l) # (Cm_/ell(t) in equations)
  }
  vn <- c(varp, varmet) # names of final variables to predict
  
  if(elim_growth == "yes") {
    varg <- "Gpred"
    vn <- c(varp, varmet, varg)
  }
}

if(elim_growth == "yes" & met == "no") {
  varg <- "Gpred"
  vn <- c(varp, varg)
}


### Create parameters for the stochastic part (sigma)
parsigma <- paste0("sigma", varp) # minimal requirement
if(met == "yes"){
  for(l in 1:length(varmet)){
    parsigma <- append(parsigma, paste0("sigma", varmet[l]))
  }
}
if(elim_growth == "yes"){
  parsigma <- append(parsigma, paste0("sigma", varg))
}

## Final set of parameters to estimate
params <- c(pardet, parsigma)

#3.2. PRIORS ####
priors <- NULL
for(i in 1:nexp){
  tmp <- paste0("log10", parkexp[i], " ~ dunif(-5, 5)
")
  priors<- paste0(priors, tmp, parkexp[i], " <- 10^log10", parkexp[i], "
")
}


if(nelim !=0){
  for(j in (nexp+1):(nexp+nelim)){
    tmp <- paste0("log10", parkelim[j-nexp], " ~ dunif(-5, 5)
")
    priors <- paste0(priors, tmp, parkelim[j-nexp], " <- 10^log10", parkelim[j-nexp], "
")
  }
  if(nmet!=0){
    for(l in (nexp+nelim+1):(nexp+nelim+nmet)){
      tmp <- paste0("log10", parkem[l-nexp-nelim], " ~ dunif(-5, 5)
",
                    parkem[l-nexp-nelim], " <- 10^log10", parkem[l-nexp-nelim], "
",
"log10", parkm[l-nexp-nelim], " ~ dunif(-5, 5)
"
      )
      priors <- paste0(priors, tmp, parkm[l-nexp-nelim], " <- 10^log10", parkm[l-nexp-nelim], "
")
    }
  }
  for(k in (nexp+nelim+nmet+1):(nexp+nelim+nmet+length(parsigma))){
    # tmp <- paste0(parsigma[k-nexp-nelim-nmet], " ~ dunif(0,", concmax[k-nexp-nelim-nmet],")
    tmp <- paste0(parsigma[k-nexp-nelim-nmet], " ~ dunif(0,", concmax[,1],")
")
    priors <- paste0(priors, tmp, "tau", str_remove(parsigma[k-nexp-nelim-nmet], "sigma"), " <- 1/(",
                     parsigma[k-nexp-nelim-nmet], "*", parsigma[k-nexp-nelim-nmet], ")
")
  }
} else {
  if(nmet!=0){
    for(l in (nexp+1):(nexp+nmet)){
      tmp <- paste0("log10", parkem[l-nexp], " ~ dunif(-5, 5)
",
                    parkem[l-nexp], " <- 10^log10", parkem[l-nexp], "
",
"log10", parkm[l-nexp], " ~ dunif(-5, 5)
"
      )
      priors <- paste0(priors, tmp, parkm[l-nexp], " <- 10^log10", parkm[l-nexp], "
")
    }
  }
  for(k in (nexp+nmet+1):(nexp+nmet+length(parsigma))){
    # tmp <- paste0(parsigma[k-nexp-nmet], " ~ dunif(0, ", concmax[k-nexp-nelim-nmet],")
    tmp <- paste0(parsigma[k-nexp-nmet], " ~ dunif(0, ", concmax[,1],")

")
    priors <- paste0(priors, tmp, "tau", str_remove(parsigma[k-nexp-nmet], "sigma"), " <- 1/(",
                     parsigma[k-nexp-nmet], "*", parsigma[k-nexp-nmet], ")
")
  }
}


if(elim_growth == "yes"){
  lenpriors <- length(priors)
  
  priors <- paste0(priors,
                   "gmax ~ dunif(gmaxsup/6, gmaxsup)
g0 ~ dunif(0, gmaxsup)
"
  )
}

#3.3. EQUATIONS ####

accumulation <- "for(t in 1:rankacc){
"
U <- NULL
for(i in 1:nexp){
  tmp <- paste0(parkexp[i], "*Cexp[t, ", i,"] +")
  U <- paste0(U, tmp)
}
U <- str_sub(U, end = nchar(U)-1)
accumulation <- paste0(accumulation, "U[t] <- ", U, "
")

if (nelim!=0){
  ifelse(nmet!=0,  R <- paste0(U, "/(", E, "+", M, ")"),  R <- paste0(U, "/", E))
  ifelse(nmet!=0,  B <- paste0(E, "+", M),  B <- paste0(E))
} else {
  ifelse(nmet!=0,  R <- paste0(U, "/(", M, ")"),  R <- paste0(U))
  ifelse(nmet!=0,  B <- paste0(M),  B <- "0")
}

if(nelim !=0){
  accumulation <- paste0(accumulation,
                         "R[t] <- ", R, "
# Parent compound
Cpred[t] <- (C0-R[t])*exp(-(", B,")*tp[t])+R[t]
Cobs[t,1] ~ dnorm(Cpred[t], tauCpred)

# Metabolites
"
  )
} else {
  if(nmet == 0){
    accumulation <- paste0(accumulation,
                           "# Parent compound
Cpred[t] <- C0 + U[t]*tp[t]
Cobs[t,1] ~ dnorm(Cpred[t], tauCpred)
# Metabolites
"
    )
  } else {
    accumulation <- paste0(accumulation,
                           "R[t] <- ", R, "
# Parent compound
Cpred[t] <- (C0-R[t])*exp(-(", B,")*tp[t])+R[t]
Cobs[t,1] ~ dnorm(Cpred[t], tauCpred)
# Metabolites
"
    )
  }
}

if(nmet!=0){
  lenacc <- length(accumulation)
  for(l in (lenacc+1):(lenacc+nmet)){
    tmp <- paste0("", varmet[l-lenacc], "[t] <- ")
    tmp <- paste0(tmp, parkm[l-lenacc], "*((C0-R[t])*(exp(-(",B,")*tp[t])-exp(-", parkem[l-lenacc], "*tp[t]))/(", D[l-lenacc], ")+R[t]*(1-exp(-(", parkem[l-lenacc],"*tp[t])))/", parkem[l-lenacc], ")
")
    accumulation <- paste0(accumulation, tmp, "Cobs[t,", l-lenacc+1, "] ~ dnorm(", varmet[l-lenacc], "[t], tau", varmet[l-lenacc], ") 
")
  }
}
accumulation <- paste0(accumulation, "}")

depuration <- "for(t in rankacc1:lentp){
"
U <- NULL
for(i in 1:nexp){
  tmp <- paste0(parkexp[i], "*Cexp[t,", i,"] +")
  U <- paste0(U, tmp)
}
U <- str_sub(U, end = nchar(U)-1)
depuration <- paste0(depuration, "U[t] <- ", U, "
")

if (nelim!=0){
  ifelse(nmet!=0,  R <- paste0(U, "/(", E, "+", M, ")"),  R <- paste0(U, "/", E))
  ifelse(nmet!=0,  B <- paste0(E, "+", M),  B <- paste0(E))
} else {
  ifelse(nmet!=0,  R <- paste0(U, "/(", M, ")"),  R <- paste0(U))
  ifelse(nmet!=0,  B <- paste0(M),  B <- "0")
}

if(nelim !=0){
  depuration <- paste0(
    depuration,
    "R[t] <- ", R, "
# Parent compound
Cpred[t] <- (C0 - R[t]*(1 - exp((", B,")*tacc)))*exp(-(", B,")*tp[t])
Cobs[t,1] ~ dnorm(Cpred[t], tauCpred)
# Metabolites
"
  )
} else {
  if(nmet == 0){
    depuration <- paste0(
      depuration,
      "#Parent compound
Cpred[t] <- C0 + U[t]*tacc
Cobs[t,1] ~ dnorm(Cpred[t], tauCpred)
# Metabolites
"
    )
  } else {
    depuration <- paste0(
      depuration,
      "R[t] <- ", R, "
# Parent compound
Cpred[t] <- (C0 - R[t]*(1 - exp((", B,")*tacc)))*exp(-(", B,")*tp[t])
Cobs[t,1] ~ dnorm(Cpred[t], tauCpred)
# Metabolites
"
    )
  }
}

if(nmet!=0){
  lendep <- length(depuration)
  for(l in (lendep+1):(lendep+nmet)){
    tmp <- paste0("", varmet[l-lendep], "[t] <- ")
    tmp <- paste0(tmp, parkm[l-lendep],"*(((C0-R[t])*(exp(-(", B,")*tp[t])-exp(-",parkem[l-lendep],"*tp[t]))/(", D[l-lendep],"))+(R[t]*(exp(-",parkem[l-lendep],"*(tp[t]-tacc))-exp(-",parkem[l-lendep],"*tp[t])))/",parkem[l-lendep],"+(R[t]*(exp(-(",B,")*(tp[t]-tacc))-exp(-",parkem[l-lendep],"*(tp[t]-tacc))))/(", D[l-lendep],"))
")
    depuration <- paste0(depuration, tmp, "Cobs[t,", l-lendep+1, "] ~ dnorm(", varmet[l-lendep], "[t], tau", varmet[l-lendep], ")
")
  }
}
depuration <- paste0(depuration, "}")

growtheq <- paste0(" ")

if(elim_growth == "yes"){
  growtheq <- paste0(growtheq, "# Growth 
					for(tg in 1:rankg){
") #rankg max of time growth
  tmp <- paste0("Gpred[tg] <- gmax-(gmax-g0)*exp(-",parkelim[2],"*tpg[tg]) 
")	#tg : time for growth
  growtheq <- paste0(growtheq, tmp, "Gobs[tg,1] ~ dnorm(Gpred[tg], tauGpred)
						   
 } 
")
}

#3.4. PREDICTIONS ####

# ACCUMULATION PREDICTIONS	
PREDaccumulation <- "
		for(t in 1:length(vtacc)){
"
U <- NULL
for(i in 1:nexp){
  tmp <- paste0(parkexp[i], "*Cexp[1,1] +")
  U <- paste0(U, tmp)
}
U <- str_sub(U, end = nchar(U)-1)
PREDaccumulation <- paste0(PREDaccumulation, "")


if (nelim!=0){
  ifelse(nmet!=0,  R <- paste0(U, "/(", E, "+", M, ")"),  R <- paste0(U, "/", E))
  ifelse(nmet!=0,  B <- paste0(E, "+", M),  B <- paste0(E))
} else {
  ifelse(nmet!=0,  R <- paste0(U, "/(", M, ")"),  R <- paste0(U))
  ifelse(nmet!=0,  B <- paste0(M),  B <- "0")
}

if(nelim !=0){
  PREDaccumulation <- paste0(PREDaccumulation,
                             "
# Parent compound
Cpredp[t] <- (C0-", R,")*exp(-(", B,")*vtacc[t])+", R,"
Cobsp[t,1] ~ dnorm(Cpredp[t], tauCpred)
# Metabolites
"
  )
} else {
  if(nmet == 0){
    PREDaccumulation <- paste0(PREDaccumulation,
                               "# Parent compound
Cpredp[t] <- C0 + ", U,"*vtacc[t]
Cobsp[t,1] ~ dnorm(Cpredp[t], tauCpred)
# Metabolites
"
    )
  } else {
    PREDaccumulation <- paste0(PREDaccumulation,
                               "
# Parent compound
Cpredp[t] <- (C0-", R,")*exp(-(", B,")*vtacc[t])+", R,"
Cobsp[t,1] ~ dnorm(Cpredp[t], tauCpred)
# Metabolites
"
    )
  }
}

if(nmet!=0){
  lenacc <- length(PREDaccumulation)
  for(l in (lenacc+1):(lenacc+nmet)){
    tmp <- paste0("", varmet[l-lenacc], "p", l-lendep+1, "[t] <- ")
    tmp <- paste0(tmp, parkm[l-lenacc], "*((C0-", R,")*(exp(-(",B,")*vtacc[t])-exp(-", parkem[l-lenacc], "*vtacc[t]))/(", D[l-lenacc], ")+", R,"*(1-exp(-(", parkem[l-lenacc],"*vtacc[t])))/", parkem[l-lenacc], ")
")
    PREDaccumulation <- paste0(PREDaccumulation, tmp, "Cobsp", l-lendep+1, "[t,", l-lenacc+1, "] ~ dnorm(", varmet[l-lenacc], "p", l-lendep+1, "[t], tau", varmet[l-lenacc], ") 
")
  }
}
PREDaccumulation <- paste0(PREDaccumulation, "}")


#DEPURATION PREDICTIONS
PREDdepuration <- "for(t in 1:length(vtdep)){
"
U <- NULL
for(i in 1:nexp){
  tmp <- paste0(parkexp[i], "*Cexp[1,1] +")
  U <- paste0(U, tmp)
}
U <- str_sub(U, end = nchar(U)-1)
PREDdepuration <- paste0(PREDdepuration, "")

if (nelim!=0){
  ifelse(nmet!=0,  R <- paste0(U, "/(", E, "+", M, ")"),  R <- paste0(U, "/", E))
  ifelse(nmet!=0,  B <- paste0(E, "+", M),  B <- paste0(E))
} else {
  ifelse(nmet!=0,  R <- paste0(U, "/(", M, ")"),  R <- paste0(U))
  ifelse(nmet!=0,  B <- paste0(M),  B <- "0")
}

if(nelim !=0){
  PREDdepuration <- paste0(
    PREDdepuration,
    "# Parent compound
Cpredpdep[t] <- (C0 - ", R,"*(1 - exp((", B,")*tacc)))*exp(-(", B,")*vtdep[t])
Cobspdep[t,1] ~ dnorm(Cpredpdep[t], tauCpred)
# Metabolites
"
  )
} else {
  if(nmet == 0){
    PREDdepuration <- paste0(
      PREDdepuration,
      "#Parent compound
Cpredpdep[t] <- C0 + ", U,"*tacc
Cobspdep[t,1] ~ dnorm(Cpredpdep[t], tauCpred)
# Metabolites
"
    )
  } else {
    PREDdepuration <- paste0(
      PREDdepuration,
      "
# Parent compound
Cpredpdep[t] <- (C0 - ", R,"*(1 - exp((", B,")*tacc)))*exp(-(", B,")*vtdep[t])
Cobspdep[t,1] ~ dnorm(Cpredpdep[t], tauCpred)
# Metabolites
"
    )
  }
}

if(nmet!=0){
  lendep <<- length(PREDdepuration)
  for(l in (lendep+1):(lendep+nmet)){
    tmp <- paste0("", varmet[l-lendep], "pdep", l-lendep+1, "[t] <- ")
    tmp <- paste0(tmp, parkm[l-lendep],"*(((C0-", R,")*(exp(-(", B,")*vtdep[t])-exp(-",parkem[l-lendep],"*vtdep[t]))/(", D[l-lendep],"))+(", R,"*(exp(-",parkem[l-lendep],"*(vtdep[t]-tacc))-exp(-",parkem[l-lendep],"*vtdep[t])))/",parkem[l-lendep],"+(", R,"*(exp(-(",B,")*(vtdep[t]-tacc))-exp(-",parkem[l-lendep],"*(vtdep[t]-tacc))))/(", D[l-lendep],"))
")
    PREDdepuration <- paste0(PREDdepuration, tmp, "Cobspdep", l-lendep+1, "[t,", l-lendep+1, "] ~ dnorm(", varmet[l-lendep], "pdep", l-lendep+1, "[t], tau", varmet[l-lendep], ")
")
  }
}
PREDdepuration <- paste0(PREDdepuration, "}")


# GROWTH PREDICTIONS
if(elim_growth == "yes"){
  PREDgrowth <- paste0(" ")
  PREDgrowth <- paste0(PREDgrowth, "# Growth 
					for(tg in 1:length(vtg)){
") #rankg max of time growth
  tmp <- paste0("Gpredp[tg] <- gmax-(gmax-g0)*exp(-",parkelim[2],"*vtg[tg]) 
")	#tg : time for growth
  PREDgrowth <- paste0(PREDgrowth, tmp, "Gobsp[tg,1] ~ dnorm(Gpredp[tg], tauGpred)
						   
 } 
")
}

#3.5. MODEL WRITING ####

if(file.exists("model.txt")) file.remove("model.txt")
path.model <- "model.txt"
if(elim_data=="yes" & elim_growth=="yes"){
  model <-  paste0("model{
#######################################
# ACCUMULATION PHASE (0 =< t =< tacc) #
#######################################
",
                   accumulation,
                   "#######################################
#### DEPURATION PHASE (t > tacc) ######
#######################################
",
                   depuration,
                   "#######################################
#### GROWTH (0 =< t =< tg) ######
#######################################
",
                   growtheq,
                   "#######################################
############### PRIORS ################
#######################################
",
                   priors,
                   
                   "#######################################
############### PREDICTIONS ################
#######################################
",						 
                   PREDaccumulation,
                   PREDdepuration,
                   PREDgrowth,
                   
                   
                   "}
")
}
if(elim_data=="yes" & elim_growth == "no"){
  model <-  paste0("model{
#######################################
# ACCUMULATION PHASE (0 =< t =< tacc) #
#######################################
",
                   accumulation,
                   "#######################################
#### DEPURATION PHASE (t > tacc) ######
#######################################
",
                   depuration,
                   "#######################################
############### PRIORS ################
#######################################
",
                   priors,
                   
                   "#######################################
############### PREDICTIONS ################
#######################################
",						 
                   PREDaccumulation,
                   PREDdepuration,
                   "}
")
}

if(elim_data == "no" & elim_growth=="yes"){	
  # 	if(file.exists("model.txt")) file.remove("model.txt")
  # path <- "model.txt"
  model <-  paste0("model{
#######################################
# ACCUMULATION PHASE (0 =< t =< tacc) #
#######################################
",
                   accumulation,
                   "#######################################
#### GROWTH (0 =< t =< tg) ######
#######################################
",
                   growtheq,
                   "#######################################
############### PRIORS ################
#######################################
",
                   priors,
                   
                   
                   "#######################################
############### PREDICTIONS ################
#######################################
",						 
                   PREDaccumulation,
                   PREDgrowth,
                   
                   
                   "}
")
  
}


if(elim_data == "no" & elim_growth=="no"){
  # 	if(file.exists("model.txt")) file.remove("model.txt")
  # path <- "model.txt"
  model <-  paste0("model{
#######################################
# ACCUMULATION PHASE (0 =< t =< tacc) #
#######################################
",
                   accumulation,
                   
                   "#######################################
############### PRIORS ################
#######################################
",
                   priors,
                   
                   "#######################################
############### PREDICTIONS ################
#######################################
",						 
                   PREDaccumulation,
                   
                   "}
")
  
}

write_file(model, path.model, append = TRUE)
rm(accumulation, depuration, priors)


# 4. INFERENCE ####

# 4.1. MODEL INITIALIZATION ####

# Create the Bayesian graphical model
m1 <- jags.model(file = "model.txt", data = data4fit, n.chains = 3)
# Burning phase
update(m1, 5000) # Update the Markov chain associated with the model.

# Generate posterior samples in mcmc.list format
mcmc1 <- coda.samples(m1, params, n.iter = 5000)

# Raftery and Lewis diagnostic
RD <- raftery.diag(mcmc1)
resmatrixtot <- rbind(RD[[1]]$resmatrix, RD[[2]]$resmatrix, RD[[3]]$resmatrix)

# 4.2. MODEL OPTIMIZATION ####

# Redo the optimization process with more appropriate options
#  based on the previous Raftery and Lewis diagnostic.
thin <- round(max(resmatrixtot[,"I"]) + 0.5)
niter <- max(resmatrixtot[,"Nmin"]) * thin
rm(resmatrixtot, RD)

#create the vector of parameters to estimate for predicitons
if(elim_data == "no"){
  add_params <- "Cobsp"
  if (elim_growth == "yes"){
    add_params <- c("Cobsp","Gobsp")
  }
}

if(elim_data == "yes"){
  add_params <- c("Cobsp","Cobspdep")
  
  if(elim_growth == "yes"){
    add_params <- c("Cobsp","Cobspdep", "Gobsp")
  }
  
  if (nmet !=0){
    namemetp <- NULL
    
    for(k in 1:nmet){
      namemetp[k] <- paste0("Cobsp",k+1)
    }
    namemetpdep <- NULL
    for(k in 1:nmet){
      
      namemetpdep[k] <- paste0("Cobspdep",k+1)
    }
    add_params <- c("Cobsp","Cobspdep", namemetp, namemetpdep)
    if(elim_growth == "yes"){
      add_params <- c("Cobsp","Cobspdep", namemetp, namemetpdep ,"Gobsp")
    }
  }
  
}	

# Combine to other parameters to estimate
parameters.to.save <- c(params, add_params)


# Calculations with jagsUI
m1 <- jagsUI::jags(data = data4fit,
                   parameters.to.save = parameters.to.save,
                   model.file = "model.txt",
                   n.chains = 3,
                   n.iter = niter,
                   n.burnin = 5000,
                   n.thin = thin,
                   parallel = TRUE, # if you want speed up calculations, but be careful in the WAIC section
                   n.cores = 3, #if parallel = TRUE
                   DIC = TRUE)

# 5. EXPORT PREDICTIONS ####

mcmc1 <- m1$samples
mcmctot1 <- as.data.frame(as.matrix(mcmc1))

# create a matrix Qpred for the collection of all predictions
time <- vt
Qpred <- NULL
Qpred <- matrix(NA, nrow = length(vt), ncol = (length(vn)*3)+1)

if(elim_data == "no"){
  Cpredp <- cbind(m1$q2.5$Cobsp, m1$q50$Cobsp, m1$q97.5$Cobsp)
  Cpred <- as.data.frame(Cpredp)
  colnames(Cpred) <- c("CpredQ2.5", "CpredQ50", "CpredQ97.5")
  Qpred <- cbind(time, Cpred)
  
  if(elim_growth == "yes"){
    time <- vtg
    Gpred <- cbind(m1$q2.5$Gobsp, m1$q50$Gobsp, m1$q97.5$Gobsp)
    Gpred <- as.data.frame(Gpred)
    colnames(Gpred) <- c("GpredQ2.5", "GpredQ50", "GpredQ97.5")
    QpredG <- cbind(time, Gpred)
  }
}

if(elim_data == "yes"){
  Cpredp <- cbind(m1$q2.5$Cobsp, m1$q50$Cobsp, m1$q97.5$Cobsp)
  Cpred <- as.data.frame(Cpredp)
  colnames(Cpred) <- c("CpredQ2.5", "CpredQ50", "CpredQ97.5")
  
  Cpreddep <- cbind(m1$q2.5$Cobspdep, m1$q50$Cobspdep, m1$q97.5$Cobspdep)
  Cpred <- as.data.frame(rbind(Cpredp,Cpreddep))
  colnames(Cpred) <- c("CpredQ2.5", "CpredQ50", "CpredQ97.5")
  Qpred <-  cbind(time,Cpred)
  
  if(nmet!=0){
    for(k in 1:nmet){
      Cpredpm1 <- cbind(m1$q2.5[[paste0("Cobsp",k+1)]][,k+1], m1$q50[[paste0("Cobsp",k+1)]][,k+1], m1$q97.5[[paste0("Cobsp",k+1)]][,k+1])
      Cpreddepm1 <- cbind(m1$q2.5[[paste0("Cobspdep",k+1)]][,k+1], m1$q50[[paste0("Cobspdep",k+1)]][,k+1], m1$q97.5[[paste0("Cobspdep",k+1)]][,k+1])
      Cpredm <- as.data.frame(rbind(Cpredpm1,Cpreddepm1))
      colnames(Cpredm) <- c(paste0("Cmetpred",k,"Q2.5"), paste0("Cmetpred",k,"Q50"), paste0("Cmetpred",k,"Q97.5"))
      
      Qpred <- cbind(Qpred, Cpredm)
    }
  }  	
  Qpred
  if(elim_growth == "yes"){
    time <- vtg
    Gpredp <- cbind(m1$q2.5$Gobsp, m1$q50$Gobsp, m1$q97.5$Gobsp)
    Gpred <- as.data.frame(Gpredp)
    colnames(Gpred) <- c("GpredQ2.5", "GpredQ50", "GpredQ97.5")
    QpredG <-  cbind(time,Gpred)
  }
  
}


# if negative values in Qpred, replace by 0
Qpred[Qpred < 0] <- 0

# for QpredG 
if(elim_growth == "yes"){
  QpredG[QpredG < 0] <- 0
}


# 6. FITTING PLOTS ####

# One plot per measured concentration:
# Parent compound: always
# Metabolites if met == "yes"
# Add a plot if elim_growth == "yes" (in growth)


if(elim_growth == "yes"){
  data2plot <- dataTable %>%
    select("time" | contains("conc") | "growth")
  QpredG <- as.data.frame(QpredG)
  
}else{
  data2plot <- dataTable %>%
    select("time" | contains("conc"))
}
Qpred <- as.data.frame(Qpred)
# gradient of colours (vn = variable names)
coldata <- c("#ee7202", heat.colors(n = 30, rev = TRUE)[seq(10, 30, by = (30-10)/length(vn))])
# nbr of plots for concentrations
if(elim_growth == "yes"){
  nplots <<- ncol(data2plot)-2
}else{
  nplots <<- ncol(data2plot)-1
}
plots <- list()
for(k in 1:nplots){
  local({
    k <- k
    if(k == 1){
      title <- "Parent"
    }else{
      title <- paste0("Metabolite ", (k-1))
    } 
    df <- as.data.frame(data2plot[,c(1, k+1)])
    quant <- Qpred[,str_detect(colnames(Qpred), pattern = vn[k])]
    tmp <- ggplot() +
      geom_vline(aes(xintercept = tacc), linetype = "longdash") +
      geom_ribbon(data = quant,
                  aes(x = vt, y = quant[,2],
                      ymin = quant[,1], ymax = quant[,3]),
                  fill = "grey", alpha = 0.15) +
      geom_line(data = quant, aes(x = vt, y = quant[,1]),
                col = coldata[k], linetype = "longdash") +
      geom_line(data = quant, aes(x = vt, y = quant[,2]),
                col = coldata[k], linetype = "solid") +
      geom_line(data = quant, aes(x = vt, y = quant[,3]),
                col = coldata[k], linetype = "longdash") +
      geom_point(data = df,
                 aes(x = df[,1], y = df[,2]),
                 size = 1.5, col = "black") +
      theme_classic() +
      labs(x = paste0("Time (", timeFormat,")"), y = expression("Concentration (mu g.g^{-1})"), title = title)
    assign(paste0("g", k), tmp, envir = .GlobalEnv)
    plots[[paste0("g", k)]] <<- tmp
  })
  fitPlot <<- plots
}
grid.arrange(grobs = plots, ncol = 1)
# fitPlotmet <<- plots[-1]

# plot if there is growth dilution
if(elim_growth == "yes"){
  df <- as.data.frame(data2plot[,c(1, ncol(data2plot))])
  quant <- QpredG[,str_detect(colnames(QpredG), pattern = "Gpred")]
  tmp <- ggplot() +
    geom_vline(aes(xintercept = tacc), linetype = "longdash") +
    geom_ribbon(data = quant,
                aes(x = vtg, y = quant[,2],
                    ymin = quant[,1], ymax = quant[,3]),
                fill = "grey", alpha = 0.15) +
    geom_line(data = quant, aes(x = vtg, y = quant[,1]),
              col = coldata[length(coldata)], linetype = "longdash") +
    geom_line(data = quant, aes(x = vtg, y = quant[,2]),
              col = coldata[length(coldata)], linetype = "solid") +
    geom_line(data = quant, aes(x = vtg, y = quant[,3]),
              col = coldata[length(coldata)], linetype = "longdash") +
    geom_point(data = df,
               aes(x = df[,1], y = df[,2]),
               size = 1.5, col = "black") +
    theme_classic() +
    labs(x = paste0("Time (", timeFormat,")"), y = paste0("Growth (", gunit,")"), title = "Growth")
  
  plotG <<- list("gg"=tmp)
  grid.arrange(grobs=plotG, ncol = 1, nrow = 1)
  fitPlot <<- c(plots, plotG)
}
# grid.arrange(grobs=fitPlot, ncol = 1)


# 7. PARAMETERS TABLE ####

#all estimates for parameters (3 MCMC chains)
# m1$sims.list
testparameters <- as.data.frame(as.matrix(as.data.frame(m1$sims.list))) #parameters in columns and estimates in rows
testparameters <- testparameters[,1: length(params)] #equal to mcmctot1 in old beta version (without predictions)
summary(testparameters)
quantilesTable <- NULL

for(i in params){
  quantilesTable <- rbind(quantilesTable, c(i, signif(quantile(testparameters[,i], probs = c(0.025, 0.5, 0.975)), digits = 4)))
}
quantilesTable
#summary in a matrix
# summary <- m1$summary

#graphical representations for parameters (if required)
whiskerplot(m1, params, quantiles=c(0.025,0.975), zeroline=TRUE)









# 8. BIOACCUMULATION FACTORS ####

lenp <<- nrow(mcmctot1) 
### if BCF directly estimated in the inference process


# 8.1. BCF ####

#######################
######### BCFk #########
########################
#Only when exposure by water because BCF, otherwise calculate other bioaccumulation factors
#add if exposure by water in data, calcultae BCF

if("water" %in% whichexp & elim == "yes"){
	Ubcf <- m1$sims.list$kuw
	Ebcf <- m1$sims.list$kee
	
	#WITHOUT GROWTH
	if(elim_growth == "no"){
		if(nmet == 0){
			bcf <<- Ubcf/Ebcf
		}
		if(nmet != 0){
			for(i in 1:nmet){
				Mbcf <- array(0, dim = lenp)
				Mbcf <- Mbcf+m1$sims.list[[paste0(parkem[i])]]
				
				bcf <<- Ubcf/Ebcf+Mbcf
			}
		}
	}
	
	#WITH GROWTH
	if(elim_growth == "yes"){
		Ebcf <- m1$sims.list$kee+m1$sims.list$keg
		
		if(nmet == 0){
			bcf <<- Ubcf/Ebcf
		}
		if(nmet != 0){
			for(i in 1:nmet){
				Mbcf <- array(0, dim = lenp)
				Mbcf <- Mbcf+m1$sims.list[[paste0(parkem[i])]]
				bcf <<- Ubcf/Ebcf+Mbcf
			}
		}
	}
	
	#removing outliers
	
	bcf <- bcf[-which(bcf%in%boxplot(bcf)$out)]
	pdf(NULL)
	bcf <<- na.omit(bcf)
	# if bcf is empty with removed outliers
	if(is_empty(bcf)==TRUE){
		Ubcf <- m1$sims.list$kuw
		Ebcf <- m1$sims.list$kee
		
		#WITHOUT GROWTH
		if(elim_growth == "no"){
			if(nmet == 0){
				bcf <<- Ubcf/Ebcf
			}
			if(nmet != 0){
				for(i in 1:nmet){
					Mbcf <- array(0, dim = lenp)
					Mbcf <- Mbcf+m1$sims.list[[paste0(parkem[i])]]
					
					bcf <<- Ubcf/Ebcf+Mbcf
				}
			}
		}
		
		#WITH GROWTH
		if(elim_growth == "yes"){
			Ebcf <- m1$sims.list$kee+m1$sims.list$keg
			
			if(nmet == 0){
				bcf <<- Ubcf/Ebcf
			}
			if(nmet != 0){
				for(i in 1:nmet){
					Mbcf <- array(0, dim = lenp)
					Mbcf <- Mbcf+m1$sims.list[[paste0(parkem[i])]]
					bcf <<- Ubcf/Ebcf+Mbcf
				}
			}
		}			
	}
	
	###################################
	
	# distributions of BCF
	bcfMed <<- round(quantile(bcf, probs = 0.5), digits = 0)
	bcfInf <<- round(quantile(bcf, probs = 0.025), digits = 0)
	bcfSup <<- round(quantile(bcf, probs = 0.975), digits = 0)
	
	if(max(bcf) < 1){
		bcfMed <<- round(quantile(bcf, probs = 0.5), digits = 4)
		bcfInf <<- round(quantile(bcf, probs = 0.025), digits = 4)
		bcfSup <<- round(quantile(bcf, probs = 0.975), digits = 4)	
	}
	
	CVw <<- NULL
	CVw <<- formatC((as.numeric(bcfSup)-as.numeric(bcfInf))/(4*(as.numeric(bcfMed))), digits=2)
	CVw <<- as.numeric(CVw)
	CVw <<- as.data.frame(CVw, row.names = "CV")
	
	bcfk <<- c("<p><b>BCF<sub>k</sub></b></p>", paste0("<p>", bcfInf, "</p>"), paste0("<p>", bcfMed, "</p>"), paste0("<p>", bcfSup, "</p>"), ifelse(CVw <= formatC(0.500, digits=2), paste0("<p style='color:#63ad00;'>", CVw, "</p>"), paste0("<p style='color:red;'>", CVw, "</p>")))
	
	bcfkreport <<- c("<b>BCF<sub>k</sub></b>", bcfInf, bcfMed, bcfSup, CVw)
	
	data4bcf <- with(density(bcf), data.frame(x, y))
	data4bcf <- na.omit(data4bcf[is.finite(rowSums(data4bcf)),])
	# data4bcf<-data4bcf[-which(data4bcf$x<0),]
	# 
	# bcfPlot <<- ggplot(data = data4bcf, mapping = aes(x = x, y = y), xlab()) +
	# 	geom_line( color = "#ee7202", size = 1) +
	# 	labs(x = "BCFk", y = "Density")
	
	bcfPlot <<- ggplot(data = data4bcf, mapping = aes(x = x, y = y), xlab()) +
		geom_line( color = "#ee7202", size = 1) +
		labs(x = expression(paste(BCF[k])), y = "Density") +
		geom_area(mapping = aes(x = ifelse( x >= bcfInf & x <= bcfSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
		geom_vline(xintercept = bcfInf, linetype = "longdash") +
		geom_vline(xintercept = bcfMed, linetype = "longdash") +
		geom_vline(xintercept = bcfSup, linetype = "longdash") +
		theme_classic() +
		scale_x_continuous(limits = c(bcfInf*0.8, bcfSup/0.8), breaks = c(bcfInf, bcfMed, bcfSup), labels = c(bcfInf, bcfMed, bcfSup))
}

####### if there is no elimination, BCFk could not be calculated, but BCFss yes
if(elim=="no"){
	if("water" %in% whichexp & elim == "no"){
		CVw <<- NA
		bcfMed <<- NA
		bcfInf <<- NA
		bcfSup <<- NA
		bcfk <<- c("<p><b>BCF<sub>k</sub></p></b>", bcfInf, bcfMed, bcfSup, CVw)
		bcfkreport <<- c("<b>BCF<sub>k</sub></b>", bcfInf, bcfMed, bcfSup, CVw)
		
		bcfPlot <<-	ggplot() +
			annotate("text", x = 4, y = 25, size=5, label = paste("\n   Elimination is null, BCFk plot can not be displayed. \n If steady-state is reached at the end of the accumulation phase, \n you can ask the BCFss plot.\n")) +
			theme_void()
		bcf <<- as.data.frame(c(0,0,0))
		colnames(bcf) <<- c("bcfk")
		bcf
	}
}
# ########################
# ######### BCFss ########
# ########################
# 
# if("water" %in% whichexp){
# 	#Cpred for steady state (equal at tacc)
# 	Cpredss <<- m1$sims.list$Cobsp[,length(vtacc),1]
# 	bcfss <<- Cpredss/unique(Cexp$expw)
# 	#removing outliers
# 	bcfss <- bcfss[-which(bcfss%in%boxplot(bcfss)$out)]
# 	#Calculations of BCF at steady state
# 	bcfss <<- na.omit(bcfss)   
# 	
# 	#obtain the quantiles
# 	bcfssMed <<- round(quantile(bcfss, probs = 0.5), digits = 0) #50%
# 	bcfssInf <<- round(quantile(bcfss, probs = 0.025), digits = 0) #2.5%
# 	bcfssSup <<- round(quantile(bcfss, probs = 0.975), digits = 0) #97.5%
# 	
# 	if(max(bcfss) < 1){
# 		bcfssMed <<- round(quantile(bcfss, probs = 0.5), digits = 4) #50%
# 		bcfssInf <<- round(quantile(bcfss, probs = 0.025), digits = 4) #2.5%
# 		bcfssSup <<- round(quantile(bcfss, probs = 0.975), digits = 4) #97.5%
# 	}
# 	#prepare the data for the density plot
# 	data4bcfss <<- with(density(bcfss), data.frame(x, y))
# 	data4bcfss <<- na.omit(data4bcfss[is.finite(rowSums(data4bcfss)),])
# 	
# 	CVwss <<- NULL
# 	CVwss <<- formatC((as.numeric(bcfssSup)-as.numeric(bcfssInf))/(4*(as.numeric(bcfssMed))), digits=2)
# 	CVwss <<- as.numeric(CVwss)
# 	
# 	bcfssRow <<- c("<p><b>BCF<sub>ss</sub></b></p>", paste0("<p>",c(bcfssInf, bcfssMed, bcfssSup),"</p>"),  ifelse(CVwss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVwss, "</p>"), paste0("<p style='color:red;'>", CVwss, "</p>")))
# 	bcfssRowReport <<- c("<b>BCF<sub>ss</sub></b>", bcfssInf, bcfssMed, bcfssSup, CVwss)
# 	
# 	
# 	# plot for BCFss
# 	bcfssPlot <<- ggplot(data = data4bcfss, mapping = aes(x = x, y = y), xlab()) +
# 		geom_line( color = "#ee7202", size = 1) +
# 		labs(x = expression(paste(BCF[ss])), y = "Density") +
# 		geom_area(mapping = aes(x = ifelse( x >= bcfssInf & x <= bcfssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
# 		geom_vline(xintercept = bcfssInf, linetype = "longdash") +
# 		geom_vline(xintercept = bcfssMed, linetype = "longdash") +
# 		geom_vline(xintercept = bcfssSup, linetype = "longdash") +
# 		theme_classic() +
# 		scale_x_continuous(limits = c(bcfssInf*0.8, bcfssSup/0.8), breaks = c(bcfssInf, bcfssMed, bcfssSup), labels = c(bcfssInf, bcfssMed, bcfssSup))+
# 		scale_y_continuous(limits = c(0,mean(data4bcfss[,2])*8))
	
	
	#for report markdown
	bcfkTablereport <<- data.frame(matrix(unlist(bcfkreport), ncol = 5, byrow = T))
	colnames(bcfkTablereport) = c("", "2.5%", "50%", "97.5%", "CV")
	# bcfTablereport <<- rbind(bcfkreport,bcfssRowReport)
 # }

# ######################################################################
# ######################################################################
# ######################################################################
# # Lipid dilution ####
# # BCF #####
# if("water" %in% whichexp){
# 	if(lipidyn==TRUE){
# 		
# 		# for table
# 		bcfkl <<- c("<p><b>BCF<sub>k,l</sub></b></p>", 
# 					paste0("<p>",c(format(bcfInf*0.05/lipids, digits=0, scientific=FALSE), 
# 								   format(bcfMed*0.05/lipids, digits=0, scientific = FALSE), 
# 								   format(bcfSup*0.05/lipids, digits=0, scientific = FALSE)),"</p>"),
# 					ifelse(CVw <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVw, "</p>"),
# 						   paste0("<p style='color:red;'>", CVw, "</p>")))
# 		bcfklreport <<- c("<b>BCF<sub>k,l</sub></b>", format(bcfInf*0.05/lipids, digits=0, scientific=FALSE), format(bcfMed*0.05/lipids, digits=0, scientific = FALSE), format(bcfSup*0.05/lipids, digits=0, scientific = FALSE), CVw)
# 		bcfsslRow <<- c("<p><b>BCF<sub>ss,l</sub></b></p>", 
# 						paste0("<p>",c(format(bcfssInf*0.05/lipids,digits=0, scientific=FALSE),
# 									   format(bcfssMed*0.05/lipids, digits=0, scientific=FALSE),
# 									   format(bcfssSup*0.05/lipids,digits=0, scientific=FALSE)),"</p>"), 
# 						ifelse(CVwss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVwss, "</p>"), 
# 							   paste0("<p style='color:red;'>", CVwss, "</p>")))
# 		bcfsslRowReport <<- c("<b>BCF<sub>ss,l</sub></b>",
# 							  format(bcfssInf*0.05/lipids,digits=0, scientific=FALSE), 
# 							  format(bcfssMed*0.05/lipids, digits=0, scientific=FALSE),
# 							  format(bcfssSup*0.05/lipids,digits=0, scientific=FALSE), 
# 							  CVwss)
# 		
# 	}
# }

#######################
######### BCFPWk #########
########################
#Only when exposure by water because BCF, otherwise calculate other bioaccumulation factors
#add if exposure by water in data, calcultae BCF

#WITHOUT GROWTH
if("pwater" %in% whichexp & elim == "yes"){
	# if("sediment" %in% whichexp & "water" %in% whichexp & "food" %in% whichexp){
	# 	Ubcfpw <- m1$sims.list$kupw
	# } 	else { 
	# 	if (length(whichexp) == 3){
	# 		Ubcfpw <- m1$sims.list$kupw
	# 	}  else {
	# 		if ("sediment" %in% whichexp & length(whichexp) == 2){
	# 			Ubcfpw <- m1$sims.list$kupw
	# 		}
	# 	}
	# }
	Ubcfpw <- m1$sims.list$kupw
	
	Ebcfpw <- m1$sims.list$kee
	
	#WITHOUT GROWTH
	if(elim_growth == "no"){
		if(nmet == 0){
			bcfpw <<- Ubcfpw/Ebcfpw
		} else {
			for(i in 1:nmet){
				Mbcfpw <- array(0, dim = lenp)
				Mbcfpw <- Mbcfpw+m1$sims.list[[paste0(parkem[i])]]
				bcfpw <<- Ubcfpw/Ebcfpw+Mbcfpw
			}
		}
	}
	
	
	#WITH GROWTH
	if(elim_growth == "yes"){
		Ebcfpw <- m1$sims.list$kee+m1$sims.list$keg      
		if(nmet == 0){
			bcfpw <<- Ubcfpw/Ebcfpw
		}
		if(nmet != 0){
			for(i in 1:nmet){
				Mbcfpw <- array(0, dim = lenp)
				Mbcfpw <- Mbcfpw+m1$sims.list[[paste0(parkem[i])]]
				bcfpw <<- Ubcfpw/Ebcfpw+Mbcfpw
			}
		}
	}
	
	#removed outliers
	bcfpw <- bcfpw[-which(bcfpw%in%boxplot(bcfpw)$out)]
	pdf(NULL)
	bcfpw <<- na.omit(bcfpw)  
	
	
	bcfpwMed <<- round(quantile(bcfpw, probs = 0.5), digits = 0) 
	bcfpwInf <<- round(quantile(bcfpw, probs = 0.025), digits = 0)
	bcfpwSup <<- round(quantile(bcfpw, probs = 0.975), digits = 0)
	
	if(max(bcfpw) < 1){
		bcfpwMed <<- round(quantile(bcfpw, probs = 0.5), digits = 4) #50%
		bcfpwInf <<- round(quantile(bcfpw, probs = 0.025), digits = 4) #2.5%
		bcfpwSup <<- round(quantile(bcfpw, probs = 0.975), digits = 4) #97.5%
	}
	
	
	bcfpwk <<- c("bcfpwk", bcfpwInf, bcfpwMed, bcfpwSup)
	
	CVpw <<- NULL
	CVpw <<- formatC((as.numeric(bcfpwSup)-as.numeric(bcfpwInf))/(4*(as.numeric(bcfpwMed))),digits=2)
	CVpw <<- as.numeric(CVpw)
	CVpw <<- as.data.frame(CVpw, row.names = "CV")
	
	bcfpwk <<- c("<p><b>BCF<sub>pw<sub>k</sub></sub></b></p>", paste0("<p>",c(bcfpwInf, bcfpwMed, bcfpwSup),"</p>"),  ifelse(CVpw <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVpw, "</p>"), paste0("<p style='color:red;'>", CVpw, "</p>")))
	bcfpwkreport <<- c("<b>BCF<sub>pw<sub>k</sub></sub></b>", bcfpwInf, bcfpwMed, bcfpwSup,CVpw)
	
	
	data4bcfpw <- with(density(bcfpw), data.frame(x, y))
	data4bcfpw <- na.omit(data4bcfpw[is.finite(rowSums(data4bcfpw)),])
	
	bcfpwPlot <<- ggplot(data = data4bcfpw, mapping = aes(x = x, y = y), xlab()) +
		geom_line( color = "#ee7202", size = 1) +
		labs(x = expression(paste(BCF[pw][k])), y = "Density") +
		geom_area(mapping = aes(x = ifelse( x >= bcfpwInf & x <= bcfpwSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
		geom_vline(xintercept = bcfpwInf, linetype = "longdash") +
		geom_vline(xintercept = bcfpwMed, linetype = "longdash") +
		geom_vline(xintercept = bcfpwSup, linetype = "longdash") +
		theme_classic() +
		scale_x_continuous(limits = c(bcfpwInf*0.8, bcfpwSup/0.8), breaks = c(bcfpwInf, bcfpwMed, bcfpwSup), labels = c(bcfpwInf, bcfpwMed, bcfpwSup))
	
	# bcfpw <<- as.data.frame(bcfpw)
	# colnames(bcfpw) <<- c("bcfpwk")
}

####### if there is no elimination, BCFpwk could not be calculated, but BCFpwss yes
if(elim=="no"){
	if("pwater" %in% whichexp & elim == "no"){
		CVpw <<- NA
		bcfpwMed <<- NA
		bcfpwInf <<- NA
		bcfpwSup <<- NA
		bcfpwk <<- c("<p><b>BCF<sub>pw<sub>k</sub></sub></p></b>", bcfpwInf, bcfpwMed, bcfpwSup, CVpw)
		bcfpwkreport <<- c("<b>BCF<sub>pw<sub>k</sub></sub></b>", bcfpwInf, bcfpwMed, bcfpwSup, CVpw)
		
		bcfpwPlot <<-	ggplot() +
			annotate("text", x = 4, y = 25, size=5, label = paste("\n   Elimination is null, BCFpwk plot can not be displayed. \n If steady-state is reached at the end of the accumulation phase, \n you can ask the BCFpw,ss plot.\n")) +
			theme_void()
		bcfpw <<- as.data.frame(c(0,0,0))
		colnames(bcfpw) <<- c("bcfpwk")
		
	}
}
# ########################
# ######### bcfpwss ######
# ########################
# 
# if("pwater" %in% whichexp){
# 	#Cpred for steady state (equal at tacc)
# 	Cpredss <<- m1$sims.list$Cobsp[,length(vtacc),1]
# 	bcfpwss <<- Cpredss/unique(Cexp$exppw)
# 	
# 	#removing outliers
# 	bcfpwss <- bcfpwss[-which(bcfpwss%in%boxplot(bcfpwss)$out)]
# 	#Calculations of BCF at steady state
# 	bcfpwss <<- na.omit(bcfpwss)   
# 	
# 	#obtain the quantiles
# 	bcfpwssMed <<- round(quantile(bcfpwss, probs = 0.5), digits = 0) #50%
# 	bcfpwssInf <<- round(quantile(bcfpwss, probs = 0.025), digits = 0) #2.5%
# 	bcfpwssSup <<- round(quantile(bcfpwss, probs = 0.975), digits = 0) #97.5%
# 	
# 	#prepare the data for the density plot
# 	data4bcfpwss <<- with(density(bcfpwss), data.frame(x, y))
# 	data4bcfpwss <<- na.omit(data4bcfpwss[is.finite(rowSums(data4bcfpwss)),])
# 	
# 	
# 	CVpwss <<- NULL
# 	CVpwss <<- formatC((as.numeric(bcfpwssSup)-as.numeric(bcfpwssInf))/(4*(as.numeric(bcfpwssMed))), digits=2)
# 	CVpwss <<- as.numeric(CVpwss)
# 	
# 	bcfpwssRow <<- c("<p><b>BCF<sub>pw<sub>ss</sub></sub></b></p>", paste0("<p>",c(bcfpwssInf, bcfpwssMed, bcfpwssSup),"</p>"),  ifelse(CVpwss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVpwss, "</p>"), paste0("<p style='color:red;'>", CVpwss, "</p>")))
# 	bcfpwssRowReport <<- c("<b>BCF<sub>pw<sub>ss</sub></sub></b>", bcfpwssInf, bcfpwssMed, bcfpwssSup, CVpwss)
# 	
# 	# plot for BCFss
# 	bcfpwssPlot <<- ggplot(data = data4bcfpwss, mapping = aes(x = x, y = y), xlab()) +
# 		geom_line( color = "#ee7202", size = 1) +
# 		labs(x = expression(paste(BCF[pw][ss])), y = "Density") +
# 		geom_area(mapping = aes(x = ifelse( x >= bcfpwssInf & x <= bcfpwssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
# 		geom_vline(xintercept = bcfpwssInf, linetype = "longdash") +
# 		geom_vline(xintercept = bcfpwssMed, linetype = "longdash") +
# 		geom_vline(xintercept = bcfpwssSup, linetype = "longdash") +
# 		theme_classic() +
# 		scale_x_continuous(limits = c(bcfpwssInf*0.8, bcfpwssSup/0.8), breaks = c(bcfpwssInf, bcfpwssMed, bcfpwssSup), labels = c(bcfpwssInf, bcfpwssMed, bcfpwssSup))+
# 		scale_y_continuous(limits = c(0,mean(data4bcfpwss[,2])*8))
# 	
# 	# for BCFss quantiles table
# 	# bcfpwssRow <<- c("<i><b>BCF<sub>pw<sub>ss</sub></sub></i></b>", bcfpwssInf, bcfpwssMed, bcfpwssSup)
# 	# bcfpwss <<- as.data.frame(bcfpwss)
# 	
# }

#####################
###   bcfPW TABLE   #
#####################
if("pwater" %in% whichexp){
	bcfpwkTable <<- data.frame(matrix(unlist(bcfpwk), ncol = length(bcfpwk), byrow = T))
	colnames(bcfpwkTable) <<- c("", "2.5%", "50%", "97.5%")
	# bcfpwTable <<- rbind(bcfpwk, bcfpwssRow)
	#for report markdown
	bcfpwkTablereport <<- data.frame(matrix(unlist(bcfpwkreport), ncol = length(bcfpwk), byrow = T))
	colnames(bcfpwkTablereport) = c("", "2.5%", "50%", "97.5%", "CV")
	# bcfpwTablereport <<- rbind (bcfpwkreport,bcfpwssRowReport)
	
}


# BCFpw #####
# if("pwater" %in% whichexp){
# 	if(lipidyn==TRUE){
# 		# for table
# 		bcfpwkl <<- c("<p><b>BCFpw<sub>k,l</sub></b></p>",
# 					  paste0("<p>", c(
# 					  	format(bcfpwInf*0.05/lipids, digits=0, scientific=FALSE), 
# 					  	format(bcfpwMed*0.05/lipids, digits=0, scientific=FALSE), 
# 					  	format(bcfpwSup*0.05/lipids, digits=0, scientific=FALSE)),
# 					  	"</p>"), 
# 					  ifelse(CVpw <= formatC(0.500, digits=2),
# 					  	   paste0("<p style='color:#63ad00;'>", CVpw, "</p>"),
# 					  	   paste0("<p style='color:red;'>", CVpw, "</p>")))
# 		
# 		bcfpwklreport <<- c("<b>BCFpw<sub>k,l</sub></b>", 
# 							format(bcfpwInf*0.05/lipids, digits=0, scientific=FALSE), 
# 							format(bcfpwMed*0.05/lipids, digits=0, scientific=FALSE), 
# 							format(bcfpwSup*0.05/lipids, digits=0, scientific=FALSE),
# 							CVpw)
# 		
# 		bcfpwsslRow <<- c("<p><b>BCFpw<sub>ss,l</sub></b></p>", paste0("<p>",c(
# 			format(bcfpwssInf*0.05/lipids, digits=0, scientific=FALSE), 
# 			format(bcfpwssMed*0.05/lipids, digits=0, scientific=FALSE), 
# 			format(bcfpwssSup*0.05/lipids, digits=0, scientific=FALSE)),
# 			"</p>"),  ifelse(CVpwss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVpwss, "</p>"), paste0("<p style='color:red;'>", CVpwss, "</p>")))
# 		
# 		bcfpwsslRowReport <<- c("<b>BCFpw<sub>ss,l</sub></b>",
# 								format(bcfpwssInf*0.05/lipids, digits=0, scientific=FALSE), 
# 								format(bcfpwssMed*0.05/lipids, digits=0, scientific=FALSE), 
# 								format(bcfpwssSup*0.05/lipids, digits=0, scientific=FALSE), CVpwss)
# 		
# 	}
# }



########################
######### BSAFk ########
########################
#Only when exposure by sediment
#if only one route of exposure
#WITHOUT GROWTH

if("sediment" %in% whichexp & elim == "yes"){
	if("water" %in% whichexp){
		Ubsaf <- m1$sims.list$kus # when several routes of exposure?
	} else {
		Ubsaf <- m1$sims.list$kus
	}
	Ebsaf <- m1$sims.list$kee
	
	#WITHOUT GROWTH
	if(elim_growth == "no"){
		if(nmet == 0){
			bsaf <- Ubsaf/Ebsaf 
		}
		if(nmet != 0){
			for(i in 1:nmet){
				Mbsaf <- array(0, dim = lenp)
				Mbsaf <- Mbsaf+m1$sims.list[[paste0(parkem[i])]]
				bsaf <- Ubsaf/Ebsaf+Mbsaf
			}
		}
	}
	
	#WITH GROWTH
	if(elim_growth == "yes"){
		Ebsaf <- m1$sims.list$kee+m1$sims.list$keg
		
		if(nmet == 0){
			bsaf <- Ubsaf/Ebsaf
		}
		if(nmet != 0){
			for(i in 1:nmet){}
			Mbsaf <- array(0, dim = lenp)
			Mbsaf <- Mbsaf+m1$sims.list[[paste0(parkem[i])]]
			bsaf <- Ubsaf/Ebsaf+Mbsaf
		}
	}
	
	
	#removing outliers
	bsaf <- bsaf[-which(bsaf%in%boxplot(bsaf)$out)]
	pdf(NULL)
	bsaf <<- na.omit(bsaf)  
	
	bsafMed <<- round(quantile(bsaf, probs = 0.5), digits = 0)
	bsafInf <<- round(quantile(bsaf, probs = 0.025), digits = 0)
	bsafSup <<- round(quantile(bsaf, probs = 0.975), digits = 0)
	
	if(max(bsaf) < 1){
		bsafMed <<- round(quantile(bsaf, probs = 0.5), digits = 4) #50%
		bsafInf <<- round(quantile(bsaf, probs = 0.025), digits = 4) #2.5%
		bsafSup <<- round(quantile(bsaf, probs = 0.975), digits = 4) #97.5%
	}
	
	CVs <<- NULL
	CVs <<- formatC((as.numeric(bsafSup)-as.numeric(bsafInf))/(4*(as.numeric(bsafMed))), digits=2)
	CVs <<- as.numeric(CVs)
	CVs <<- as.data.frame(CVs, row.names = "CV")
	
	bsafk <<- c("<p><b>BSAF<sub>k</sub></b></p>", paste0("<p>",c(bsafInf, bsafMed, bsafSup),"</p>"),  ifelse(CVs <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVs, "</p>"), paste0("<p style='color:red;'>", CVs, "</p>")))
	bsafkReport <<- c("<b>BSAF<sub>k</sub></b>", bsafInf, bsafMed, bsafSup,  CVs)
	
	data4bsaf <- with(density(bsaf), data.frame(x, y))
	data4bsaf <- na.omit(data4bsaf[is.finite(rowSums(data4bsaf)),])
	
	bsafPlot <<- ggplot(data = data4bsaf, mapping = aes(x = x, y = y), xlab()) +
		geom_line( color = "#ee7202", size = 1) +
		labs(x = expression(paste(BSAF[k])), y = "Density") +
		geom_area(mapping = aes(x = ifelse( x >= bsafInf & x <= bsafSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
		geom_vline(xintercept = bsafInf, linetype = "longdash") +
		geom_vline(xintercept = bsafMed, linetype = "longdash") +
		theme_classic() +
		geom_vline(xintercept = bsafSup, linetype = "longdash")+
		scale_x_continuous(limits = c(bsafInf*0.8, bsafSup/0.8), breaks = c(bsafInf, bsafMed, bsafSup), labels = c(bsafInf, bsafMed, bsafSup))
	
}

####### if there is no elimination, BSAFk could not be calculated, but BSAFss yes
if(elim=="no"){
	if("sediment" %in% whichexp & elim == "no"){
		CVs <<- NA
		bsafMed <<- NA
		bsafInf <<- NA
		bsafSup <<- NA
		bsafk <<- c("<p><b>BSAF<sub>k</sub></p></b>", bsafInf, bsafMed, bsafSup, CVs)
		bsafkReport <<- c("<b>BSAF<sub>k</sub></b>", bsafInf, bsafMed, bsafSup, CVs)
		
		bsafPlot <<-	ggplot() +
			annotate("text", x = 4, y = 25, size=5, label = paste("\n   Elimination is null, BSAFk plot can not be displayed. \n If steady-state is reached at the end of the accumulation phase, \n you can ask the BSAFss plot.\n")) +
			theme_void()
		bsaf <<- as.data.frame(c(0,0,0))
		colnames(bsaf) <<- c("bsafk")
		
	}
}
########################
######### BSAFss ########
########################

# if("sediment" %in% whichexp){
# 	#Cpred for steady state (equal at tacc)
# 	Cpredss <<- m1$sims.list$Cobsp[,length(vtacc),1]
# 	bsafss <<- Cpredss/unique(Cexp$exps)
# 	
# 	#removing outliers
# 	bsafss <- bsafss[-which(bsafss%in%boxplot(bsafss)$out)]
# 	#Calculations of BSAF at steady state
# 	bsafss <<- na.omit(bsafss)   
# 	
# 	bsafssMed <<- round(quantile(bsafss, probs = 0.5), digits = 0)
# 	bsafssInf <<- round(quantile(bsafss, probs = 0.025), digits = 0)
# 	bsafssSup <<- round(quantile(bsafss, probs = 0.975), digits = 0)
# 	
# 	if(max(bsafss) < 1){
# 		bsafssMed <<- round(quantile(bsafss, probs = 0.5), digits = 4) #50%
# 		bsafssInf <<- round(quantile(bsafss, probs = 0.025), digits = 4) #2.5%
# 		bsafssSup <<- round(quantile(bsafss, probs = 0.975), digits = 4) #97.5%
# 	}
# 	
# 	data4bsafss <<- with(density(bsafss), data.frame(x, y))
# 	data4bsafss <<- na.omit(data4bsafss[is.finite(rowSums(data4bsafss)),])
# 	
# 	CVsss <<- NULL
# 	CVsss <<- formatC((as.numeric(bsafssSup)-as.numeric(bsafssInf))/(4*(as.numeric(bsafssMed))), digits=2)
# 	CVsss <<- as.numeric(CVsss)
# 	
# 	bsafssRow <<- c("<p><b>BSAF<sub>ss</sub></b></p>", paste0("<p>",c(bsafssInf, bsafssMed, bsafssSup),"</p>"),  ifelse(CVsss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVsss, "</p>"), paste0("<p style='color:red;'>", CVsss, "</p>")))
# 	bsafssRowReport <<- c("<b>BSAF<sub>ss</sub></b>", bsafssInf, bsafssMed, bsafssSup,  CVsss)
# 	
# 	bsafssPlot <<- ggplot(data = data4bsafss, mapping = aes(x = x, y = y), xlab()) +
# 		geom_line( color = "#ee7202", size = 1) +
# 		labs(x = expression(paste(BSAF[ss])), y = "Density") +
# 		geom_area(mapping = aes(x = ifelse( x >= bsafssInf & x <= bsafssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
# 		geom_vline(xintercept = bsafssInf, linetype = "longdash") +
# 		geom_vline(xintercept = bsafssMed, linetype = "longdash") +
# 		geom_vline(xintercept = bsafssSup, linetype = "longdash") +
# 		theme_classic() +
# 		scale_x_continuous(limits = c(bsafssInf*0.8, bsafssSup/0.8), breaks = c(bsafssInf, bsafssMed, bsafssSup), labels = c(bsafssInf, bsafssMed, bsafssSup))
# 	
	if("sediment" %in% whichexp){
	#for report markdown
	bsafkTablereport <<- data.frame(matrix(unlist(bsafkReport), ncol = length(bsafk), byrow = T))
	colnames(bsafkTablereport) = c("", "2.5%", "50%", "97.5%", "CV")
	# bsafTablereport <<- rbind (bsafkReport,bsafssRowReport)
	}
# 	
# 	
# }

# BSAF #####
# if("sediment" %in% whichexp){
# 	if(lipidyn==TRUE){
# 		# for table
# 		bsafkl <<- c("<p><b>BSAF<sub>k,l</sub></b></p>", 
# 					 paste0("<p>",c(
# 					 	format(bsafInf*0.05/lipids, digits=0, scientific=FALSE),
# 					 	format(bsafMed*0.05/lipids, digits=0, scientific=FALSE),
# 					 	format(bsafSup*0.05/lipids,digits=0, scientific=FALSE)),
# 					 	"</p>"), ifelse(CVs <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVs, "</p>"), paste0("<p style='color:red;'>", CVs, "</p>")))
# 		
# 		bsafklreport <<- c("<b>BSAF<sub>k,l</sub></b>", 
# 						   format(bsafInf*0.05/lipids, digits=0, scientific=FALSE),
# 						   format(bsafMed*0.05/lipids, digits=0, scientific=FALSE),
# 						   format(bsafSup*0.05/lipids,digits=0, scientific=FALSE),
# 						   CVs)
# 		
# 		bsafsslRow <<- c("<p><b>BSAF<sub>ss,l</sub></b></p>", paste0("<p>",c(
# 			format(bsafssInf*0.05/lipids, digits=0, scientific=FALSE),
# 			format(bsafssMed*0.05/lipids, digits=0, scientific=FALSE),
# 			format(bsafSup*0.05/lipids,digits=0, scientific=FALSE)),
# 			"</p>"),  ifelse(CVsss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVsss, "</p>"), paste0("<p style='color:red;'>", CVsss, "</p>")))
# 		
# 		bsafsslRowReport <<- c("<b>BSAF<sub>ss,l</sub></b>",
# 							   format(bsafssInf*0.05/lipids, digits=0, scientific=FALSE),
# 							   format(bsafssMed*0.05/lipids, digits=0, scientific=FALSE),
# 							   format(bsafSup*0.05/lipids,digits=0, scientific=FALSE),
# 							   CVsss)
# 		
# 	}
# }

########################
######### BMFk ########
########################
#Only when exposure by food

if("food" %in% whichexp & elim == "yes"){
	if("sediment" %in% whichexp & "water" %in% whichexp){
		Ubmf <- m1$sims.list$kuf # when several routes of exposure?
	} else { 
		if (length(whichexp) == 2){
			Ubmf <- m1$sims.list$kuf
		}  else {
			Ubmf <- m1$sims.list$kuf
		}
	}
	Ebmf <- m1$sims.list$kee
	
	#WITHOUT GROWTH
	if(elim_growth == "no"){
		if(nmet == 0){
			bmf <- Ubmf/Ebmf 
		}
		if(nmet != 0){
			for(i in 1:nmet){
				Mbmf <- array(0, dim = lenp)
				Mbmf <- Mbmf+m1$sims.list[[paste0(parkem[i])]]
				bmf <- Ubmf/Ebmf+Mbmf
			}
		}
	}
	
	#WITH GROWTH
	if(elim_growth == "yes"){
		Ebmf <- m1$sims.list$kee+m1$sims.list$keg
		
		if(nmet == 0){
			bmf <- Ubmf/Ebmf
		}
		if(nmet != 0){
			for(i in 1:nmet){
				Mbmf <- array(0, dim = lenp)
				Mbmf <- Mbmf+m1$sims.list[[paste0(parkem[i])]]
				bmf <- Ubmf/Ebmf+Mbmf
			}
		}
	}
	
	#removing outliers
	bmf <- bmf[-which(bmf%in%boxplot(bmf)$out)]
	pdf(NULL)
	bmf <<- na.omit(bmf)  
	
	
	bmfMed <<- round(quantile(bmf, probs = 0.5), digits = 0)
	bmfInf <<- round(quantile(bmf, probs = 0.025), digits = 0)
	bmfSup <<- round(quantile(bmf, probs = 0.975), digits = 0)
	
	if(max(bmf) < 1){
		bmfMed <<- round(quantile(bmf, probs = 0.5), digits = 4) #50%
		bmfInf <<- round(quantile(bmf, probs = 0.025), digits = 4) #2.5%
		bmfSup <<- round(quantile(bmf, probs = 0.975), digits = 4) #97.5%
	}
	
	CVf <<- NULL
	CVf <<- formatC((as.numeric(bmfSup)-as.numeric(bmfInf))/(4*(as.numeric(bmfMed))), digits=2)
	CVf <<- as.numeric(CVf)
	CVf <<- as.data.frame(CVf, row.names = "CV")
	
	bmfk <<- c("<p><b>BMF<sub>k</sub></b></p>", paste0("<p>",c(bmfInf, bmfMed, bmfSup),"</p>"),  ifelse(CVf <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVf, "</p>"), paste0("<p style='color:red;'>", CVf, "</p>")))
	bmfkReport<<- c("<b>BMF<sub>k</sub></b>", bmfInf, bmfMed, bmfSup, CVf)
	
	data4bmf <- with(density(bmf), data.frame(x, y))
	data4bmf <- na.omit(data4bmf[is.finite(rowSums(data4bmf)),])
	
	# bmf <<- as.data.frame(bmf)
	# colnames(bmf) <<- c("bmfk")
	# 
	bmfPlot <<- ggplot(data = data4bmf, mapping = aes(x = x, y = y), xlab()) +
		geom_line( color = "#ee7202", size = 1) +
		labs(x = expression(paste(BMF[k])), y = "Density") +
		geom_area(mapping = aes(x = ifelse( x >= bmfInf & x <= bmfSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
		geom_vline(xintercept = bmfInf, linetype = "longdash") +
		geom_vline(xintercept = bmfMed, linetype = "longdash") +
		geom_vline(xintercept = bmfSup, linetype = "longdash") +
		theme_classic() +
		scale_x_continuous(limits = c(bmfInf*0.8, bmfSup/0.8), breaks = c(bmfInf, bmfMed, bmfSup), labels = c(bmfInf, bmfMed, bmfSup)) 
}

####### if there is no elimination, BMFk could not be calculated, but BMFss yes
if(elim=="no"){
	if("food" %in% whichexp & elim == "no"){
		CVf <<- NA
		bmfMed <<- NA
		bmfInf <<- NA
		bmfSup <<- NA
		bmfk <<- c("<p><b>BMF<sub>k</sub></p></b>", bmfInf, bmfMed, bmfSup, CVf)
		bmfkReport <<- c("<b>BMF<sub>k</sub></b>", bmfInf, bmfMed, bmfSup, CVf)
		
		bmfPlot <<-	ggplot() +
			annotate("text", x = 4, y = 25, size=5, label = paste("\n   Elimination is null, BMFk plot can not be displayed. \n If steady-state is reached at the end of the accumulation phase, \n you can ask the BMFss plot.\nn")) +
			theme_void()
		bmf <<- as.data.frame(c(0,0,0))
		colnames(bmf) <<- c("bmfk")
		
	}
}

########################
######### BMFss ########
########################
# if("food" %in% whichexp){
# 	#Cpred for steady state (equal at tacc)
# 	Cpredss <<- m1$sims.list$Cobsp[,length(vtacc),1]
# 	
# 	#Calculations of BMF at steady state
# 	bmfss <<- Cpredss/unique(Cexp$expf)
# 	#removing outliers
# 	bmfss <- bmfss[-which(bmfss%in%boxplot(bmfss)$out)]
# 	bmfss <<- na.omit(bmfss)  
# 	
# 	bmfssMed <<- round(quantile(bmfss, probs = 0.5), digits = 0)
# 	bmfssInf <<- round(quantile(bmfss, probs = 0.025), digits = 0)
# 	bmfssSup <<- round(quantile(bmfss, probs = 0.975), digits = 0)
# 	
# 	if(max(bmfss) < 1){
# 		bmfssMed <<- round(quantile(bmfss, probs = 0.5), digits = 4) #50%
# 		bmfssInf <<- round(quantile(bmfss, probs = 0.025), digits = 4) #2.5%
# 		bmfssSup <<- round(quantile(bmfss, probs = 0.975), digits = 4) #97.5%
# 	}
# 	
# 	
# 	CVfss <<- NULL
# 	CVfss <<- formatC((as.numeric(bmfssSup)-as.numeric(bmfssInf))/(4*(as.numeric(bmfssMed))), digits=2)
# 	CVfss <<- as.numeric(CVfss)
# 	
# 	data4bmfss <<- with(density(bmfss), data.frame(x, y))
# 	data4bmfss <<- na.omit(data4bmfss[is.finite(rowSums(data4bmfss)),])
# 	
# 	bmfssPlot <<- ggplot(data = data4bmfss, mapping = aes(x = x, y = y), xlab()) +
# 		geom_line( color = "#ee7202", size = 1) +
# 		labs(x = expression(paste(BMF[ss])), y = "Density") +
# 		geom_area(mapping = aes(x = ifelse( x >= bmfssInf & x <= bmfssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
# 		geom_vline(xintercept = bmfssInf, linetype = "longdash") +
# 		geom_vline(xintercept = bmfssMed, linetype = "longdash") +
# 		geom_vline(xintercept = bmfssSup, linetype = "longdash") +
# 		theme_classic() +
# 		scale_x_continuous(limits = c(bmfssInf*0.8, bmfssSup/0.8), breaks = c(bmfssInf, bmfssMed, bmfssSup), labels = c(bmfssInf, bmfssMed, bmfssSup)) 
# 	
# 	bmfssRow <<- c("<p><b>BMF<sub>ss</sub></b></p>", paste0("<p>",c(bmfssInf, bmfssMed, bmfssSup),"</p>"),  ifelse(CVfss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVfss, "</p>"), paste0("<p style='color:red;'>", CVfss, "</p>")))
# 	bmfssRowReport <<- c("<b>BMF<sub>ss</sub></b>", bmfssInf, bmfssMed, bmfssSup,CVfss)
# 	
	if("food" %in% whichexp){
	#for report markdown
	bmfkTablereport <<- data.frame(matrix(unlist(bmfkReport), ncol = length(bmfk), byrow = T))
	colnames(bmfkTablereport) = c("", "2.5%", "50%", "97.5%", "CV")
	# bmfTablereport <<- rbind (bmfkReport,bmfssRowReport)
	}
# }

# BMF #####
# if("food" %in% whichexp){
# 	if(lipidyn==TRUE){
# 		# for table
# 		bmfkl <<- c("<p><b>BMF<sub>k,l</sub></b></p>", paste0("<p>",c(
# 			format(bmfInf*0.05/lipids, digits=0, scientific=FALSE),
# 			format(bmfMed*0.05/lipids, digits=0, scientific=FALSE),
# 			format(bmfSup*0.05/lipids, digits=0, scientific=FALSE)),
# 			"</p>"), ifelse(CVf <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVf, "</p>"), paste0("<p style='color:red;'>", CVf, "</p>")))
# 		
# 		bmfklreport <<- c("<b>BMF<sub>k,l</sub></b>", 
# 						  format(bmfInf*0.05/lipids, digits=0, scientific=FALSE),
# 						  format(bmfMed*0.05/lipids, digits=0, scientific=FALSE),
# 						  format(bmfSup*0.05/lipids, digits=0, scientific=FALSE),
# 						  CVf)
# 		
# 		bmfsslRow <<- c("<p><b>BMF<sub>ss,l</sub></b></p>", paste0("<p>",c(
# 			format(bmfssInf*0.05/lipids, digits=0, scientific=FALSE),
# 			format(bmfssMed*0.05/lipids, digits=0, scientific=FALSE),
# 			format(bmfssSup*0.05/lipids, digits=0, scientific=FALSE)),
# 			"</p>"),  ifelse(CVfss <= formatC(0.500, digits=2),paste0("<p style='color:#63ad00;'>", CVfss, "</p>"), paste0("<p style='color:red;'>", CVfss, "</p>")))
# 		
# 		bmfsslRowReport <<- c("<b>BMF<sub>ss,l</sub></b>", 
# 							  format(bmfssInf*0.05/lipids, digits=0, scientific=FALSE),
# 							  format(bmfssMed*0.05/lipids, digits=0, scientific=FALSE),
# 							  format(bmfssSup*0.05/lipids, digits=0, scientific=FALSE),
# 							  CVfss)
# 	}
# }



# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# ###
# ### BCFk 
# ###
# 
# #Only when exposure by water because BCF, otherwise calculate other bioaccumulation factors
# #add if exposure by water in data, calcultae BCF
# 
# if("water" %in% whichexp & elim == "yes"){
#   Ubcf <- m1$sims.list$kuw
#   Ebcf <- m1$sims.list$kee
#   
#   #WITHOUT GROWTH
#   if(elim_growth == "no"){
#     if(nmet == 0){
#       bcf <- Ubcf/Ebcf
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbcf <- array(0, dim = lenp)
#         Mbcf <- Mbcf+m1$sims.list[[paste0(parkem[i])]]
#         
#         bcf <- Ubcf/Ebcf+Mbcf
#       }
#     }
#   }
#   
#   #WITH GROWTH
#   if(elim_growth == "yes"){
#     Ebcf <- m1$sims.list$kee+m1$sims.list$keg
#     
#     if(nmet == 0){
#       bcf <- Ubcf/Ebcf
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbcf <- array(0, dim = lenp)
#         Mbcf <- Mbcf+m1$sims.list[[paste0(parkem[i])]]
#         bcf <- Ubcf/Ebcf+Mbcf
#       }
#     }
#   }
#   
#   # distributions of BCF
#   bcfMed <- round(quantile(bcf, probs = 0.5), digits = 4)
#   bcfInf <- round(quantile(bcf, probs = 0.025), digits = 4)
#   bcfSup <- round(quantile(bcf, probs = 0.975), digits = 4)
#   
#   data4bcf <- with(density(bcf), data.frame(x, y))
#   data4bcf <- na.omit(data4bcf[is.finite(rowSums(data4bcf)),])
#   
#   bcfPlot <- ggplot(data = data4bcf, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "BCFk", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bcfInf & x <= bcfSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bcfInf, linetype = "longdash") +
#     geom_vline(xintercept = bcfMed, linetype = "longdash") +
#     geom_vline(xintercept = bcfSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bcfInf*0.8, bcfSup/0.8), breaks = c(bcfInf, bcfMed, bcfSup), labels = c(bcfInf, bcfMed, bcfSup)) 
# }
# 
# ###
# ### BCFss 
# ###
# 
# if("water" %in% whichexp){
#   #Cpred for steady state (equal at tacc)
#   Cpredss <- m1$sims.list$Cobsp[,length(vtacc),1]
#   bcfss <- Cpredss/unique(Cexp$expw)
#   
#   #Calculations of BCF at steady state
#   bcfss <- na.omit(bcfss)   
#   
#   #obtain the quantiles
#   bcfssMed <- round(quantile(bcfss, probs = 0.5), digits = 4) #50%
#   bcfssInf <- round(quantile(bcfss, probs = 0.025), digits = 4) #2.5%
#   bcfssSup <- round(quantile(bcfss, probs = 0.975), digits = 4) #97.5%
#   
#   #prepare the data for the density plot
#   data4bcfss <- with(density(bcfss), data.frame(x, y))
#   data4bcfss <- na.omit(data4bcfss[is.finite(rowSums(data4bcfss)),])
#   
#   # plot for BCFss
#   bcfssPlot <- ggplot(data = data4bcfss, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "BCFss", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bcfssInf & x <= bcfssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bcfssInf, linetype = "longdash") +
#     geom_vline(xintercept = bcfssMed, linetype = "longdash") +
#     geom_vline(xintercept = bcfssSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bcfssInf*0.8, bcfssSup/0.8), breaks = c(bcfssInf, bcfssMed, bcfssSup), labels = c(bcfssInf, bcfssMed, bcfssSup))+
#     scale_y_continuous(limits = c(0,mean(data4bcfss[,2])*8))
# }
# 
# # table for report
# 
# bcfkTablereport <<- data.frame(matrix(unlist(bcfkreport), ncol = 5, byrow = T))
# colnames(bcfkTablereport) = c("", "2.5%", "50%", "97.5%", "CV")
# bcfTablereport <<- rbind(bcfkreport,bcfssRowReport)
# 
# 
# # 8.2. BCFpw ####
# 
# ###
# ### BCFPWk 
# ###
# 
# #Only when exposure by water because BCF, otherwise calculate other bioaccumulation factors
# #add if exposure by water in data, calcultae BCF
# 
# #WITHOUT GROWTH
# if("pwater" %in% whichexp & elim == "yes"){
#   if("sediment" %in% whichexp & "water" %in% whichexp & "food" %in% whichexp){
#     Ubcfpw <- m1$sims.list$kupw
#   } 	else { 
#     if (length(whichexp) == 3){
#       Ubcfpw <- m1$sims.list$kupw
#     }  else {
#       if ("sediment" %in% whichexp & length(whichexp) == 2){
#         Ubcfpw <- m1$sims.list$kupw
#       }
#     }
#   }
#   
#   Ebcfpw <- m1$sims.list$kee
#   
#   #WITHOUT GROWTH
#   if(elim_growth == "no"){
#     if(nmet == 0){
#       bcfpw <- Ubcfpw/Ebcfpw
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbcfpw <- array(0, dim = lenp)
#         Mbcfpw <- Mbcfpw+m1$sims.list[[paste0(parkem[i])]]
#         bcfpw <- Ubcfpw/Ebcfpw+Mbcfpw
#       }
#     }
#   }
#   
#   #WITH GROWTH
#   if(elim_growth == "yes"){
#     Ebcfpw <- m1$sims.list$kee+m1$sims.list$keg      
#     if(nmet == 0){
#       bcfpw <- Ubcfpw/Ebcfpw
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbcfpw <- array(0, dim = lenp)
#         Mbcfpw <- Mbcfpw+m1$sims.list[[paste0(parkem[i])]]
#         bcfpw <- Ubcfpw/Ebcfpw+Mbcfpw
#       }
#     }
#   }
#   
#   bcfpwMed <- round(quantile(bcfpw, probs = 0.5), digits = 0) 
#   bcfpwInf <- round(quantile(bcfpw, probs = 0.025), digits = 0)
#   bcfpwSup <- round(quantile(bcfpw, probs = 0.975), digits = 0)
#   bcfpwk <- c("bcfpwk", bcfpwInf, bcfpwMed, bcfpwSup)
#   
#   if(lipidyn==TRUE){
#     # for table
#     bcfklreport <- c("<b>BCF<sub>k,l</sub></b>", bcfInf*0.05/lipids, bcfMed*0.05/lipids, bcfSup*0.05/lipids, CVw)
#     bcfsslRowReport <- c("<b>BCF<sub>ss,l</sub></b>", bcfssInf*0.05/lipids, bcfssMed*0.05/lipids, bcfssSup*0.05/lipids, CVwss)
#   }
#   
#   data4bcfpw <- with(density(bcfpw), data.frame(x, y))
#   data4bcfpw <- na.omit(data4bcfpw[is.finite(rowSums(data4bcfpw)),])
#   
#   bcfpwPlot <- ggplot(data = data4bcfpw, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "bcfpwk", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bcfpwInf & x <= bcfpwSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bcfpwInf, linetype = "longdash") +
#     geom_vline(xintercept = bcfpwMed, linetype = "longdash") +
#     geom_vline(xintercept = bcfpwSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bcfpwInf*0.8, bcfpwSup/0.8), breaks = c(bcfpwInf, bcfpwMed, bcfpwSup), labels = c(bcfpwInf, bcfpwMed, bcfpwSup))
#   
#   bcfpw <- as.data.frame(bcfpw)
#   colnames(bcfpw) <- c("bcfpwk")
# }
# 
# ###
# ### BCFpwss 
# ###
# 
# if("pwater" %in% whichexp){
#   #Cpred for steady state (equal at tacc)
#   Cpredss <- m1$sims.list$Cobsp[,length(vtacc),1]
#   bcfpwss <- Cpredss/unique(Cexp$exppw)
#   
#   #Calculations of BCF at steady state
#   bcfpwss <- na.omit(bcfpwss)   
#   
#   #obtain the quantiles
#   bcfpwssMed <- round(quantile(bcfpwss, probs = 0.5), digits = 4) #50%
#   bcfpwssInf <- round(quantile(bcfpwss, probs = 0.025), digits = 4) #2.5%
#   bcfpwssSup <- round(quantile(bcfpwss, probs = 0.975), digits = 4) #97.5%
#   
#   #prepare the data for the density plot
#   data4bcfpwss <- with(density(bcfpwss), data.frame(x, y))
#   data4bcfpwss <- na.omit(data4bcfpwss[is.finite(rowSums(data4bcfpwss)),])
#   
#   # plot for BCFss
#   bcfssPlot <- ggplot(data = data4bcfpwss, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "BCFss", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bcfpwssInf & x <= bcfpwssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bcfpwssInf, linetype = "longdash") +
#     geom_vline(xintercept = bcfpwssMed, linetype = "longdash") +
#     geom_vline(xintercept = bcfpwssSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bcfpwssInf*0.8, bcfpwssSup/0.8), breaks = c(bcfpwssInf, bcfpwssMed, bcfpwssSup), labels = c(bcfpwssInf, bcfpwssMed, bcfpwssSup))+
#     scale_y_continuous(limits = c(0,mean(data4bcfpwss[,2])*8))
#   
#   # for BCFss quantiles table
#   bcfpwssRow <- c("<i><b>BCF<sub>pw<sub>ss</sub></sub></i></b>", bcfpwssInf, bcfpwssMed, bcfpwssSup)
#   bcfpwss <- as.data.frame(bcfpwss)
#   
# }
# 
# 
# ### BCFpw TABLE
# if("pwater" %in% whichexp){
#   bcfpwkTable <- data.frame(matrix(unlist(bcfpwk), ncol = length(bcfpwk), byrow = T))
#   colnames(bcfpwkTable) <- c("", "2.5%", "50%", "97.5%")
#   bcfpwTable <- rbind(bcfpwk, bcfpwssRow)
#   if(lipidyn==TRUE){
#     # for table
#     bcfklpwreport <- c("<b>BCFpw<sub>k,l</sub></b>", bcfpwInf*0.05/lipids, bcfpwMed*0.05/lipids, bcfpwSup*0.05/lipids, CVpw)
#     bcfsslpwRowReport <- c("<b>BCFpw<sub>ss,l</sub></b>", bcfpwssInf*0.05/lipids, bcfpwssMed*0.05/lipids, bcfpwssSup*0.05/lipids, CVpwss)
#   }
# }
# 
# 
# 
# # 8.3. BSAF ####
# 
# ###
# ### BSAFk 
# ###
# 
# #Only when exposure by sediment
# #if only one route of exposure
# #WITHOUT GROWTH
# 
# if("sediment" %in% whichexp & elim == "yes"){
#   if("water" %in% whichexp){
#     Ubsaf <- m1$sims.list$kus # when several routes of exposure?
#   } else {
#     Ubsaf <- m1$sims.list$kus
#   }
#   Ebsaf <- m1$sims.list$kee
#   
#   #WITHOUT GROWTH
#   if(elim_growth == "no"){
#     if(nmet == 0){
#       bsaf <- Ubsaf/Ebsaf 
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbsaf <- array(0, dim = lenp)
#         Mbsaf <- Mbsaf+m1$sims.list[[paste0(parkem[i])]]
#         bsaf <- Ubsaf/Ebsaf+Mbsaf
#       }
#     }
#   }
#   
#   #WITH GROWTH
#   if(elim_growth == "yes"){
#     Ebsaf <- m1$sims.list$kee+m1$sims.list$keg
#     
#     if(nmet == 0){
#       bsaf <- m1$sims.list$kus/Ebsaf
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){}
#       Mbsaf <- array(0, dim = lenp)
#       Mbsaf <- Mbsaf+m1$sims.list[[paste0(parkem[i])]]
#       bsaf <- Ubsaf/Ebsaf+Mbsaf
#     }
#   }
#   
#   bsafMed <- round(quantile(bsaf, probs = 0.5), digits = 4)
#   bsafInf <- round(quantile(bsaf, probs = 0.025), digits = 4)
#   bsafSup <- round(quantile(bsaf, probs = 0.975), digits = 4)
#   
#   
#   data4bsaf <- with(density(bsaf), data.frame(x, y))
#   data4bsaf <- na.omit(data4bsaf[is.finite(rowSums(data4bsaf)),])
#   
#   bsafPlot <- ggplot(data = data4bsaf, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "bsafk", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bsafInf & x <= bsafSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bsafInf, linetype = "longdash") +
#     geom_vline(xintercept = bsafMed, linetype = "longdash") +
#     geom_vline(xintercept = bsafSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bsafInf*0.8, bsafSup/0.8), breaks = c(bsafInf, bsafMed, bsafSup), labels = c(bsafInf, bsafMed, bsafSup)) 
#   
# }
# 
# ###
# ### BSAFss 
# ###
# 
# if("sediment" %in% whichexp){
#   #Cpred for steady state (equal at tacc)
#   Cpredss <- m1$sims.list$Cobsp[,length(vtacc),1]
#   bsafss <- Cpredss/unique(Cexp$exps)
#   
#   #Calculations of BCF at steady state
#   bsafss <- na.omit(bsafss)   
#   
#   bsafssMed <- round(quantile(bsafss, probs = 0.5), digits = 4)
#   bsafssInf <- round(quantile(bsafss, probs = 0.025), digits = 4)
#   bsafssSup <- round(quantile(bsafss, probs = 0.975), digits = 4)
#   
#   if(lipidyn==TRUE){
#     # for table
#     bsafklreport <- c("<b>BSAF<sub>k,l</sub></b>", bsafInf*0.05/lipids, bsafMed*0.05/lipids, bsafSup*0.05/lipids, CVs)
#     bsafsslRowReport <- c("<b>BSAF<sub>ss,l</sub></b>", bsafssInf*0.05/lipids, bsafssMed*0.05/lipids, bsafssSup*0.05/lipids, CVsss)
#   }
#   
#   data4bsafss <- with(density(bsafss), data.frame(x, y))
#   data4bsafss <- na.omit(data4bsafss[is.finite(rowSums(data4bsafss)),])
#   
#   bsafssPlot <- ggplot(data = data4bsafss, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "bsafss", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bsafssInf & x <= bsafssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bsafssInf, linetype = "longdash") +
#     geom_vline(xintercept = bsafssMed, linetype = "longdash") +
#     geom_vline(xintercept = bsafssSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bsafssInf*0.8, bsafssSup/0.8), breaks = c(bsafssInf, bsafssMed, bsafssSup), labels = c(bsafssInf, bsafssMed, bsafssSup)) 
# }
# 
# # 8.4. BMF ####
# 
# ###
# ### BMFk
# ###
# 
# #Only when exposure by food
# 
# if("food" %in% whichexp & elim == "yes"){
#   if("sediment" %in% whichexp & "water" %in% whichexp){
#     Ubmf <- m1$sims.list$kuf # when several routes of exposure?
#   } else { 
#     if (length(whichexp) == 2){
#       Ubmf <- m1$sims.list$kuf
#     }  else {
#       Ubmf <- m1$sims.list$kuf
#     }
#   }
#   Ebmf <- m1$sims.list$kee
#   
#   #WITHOUT GROWTH
#   if(elim_growth == "no"){
#     if(nmet == 0){
#       bmf <- Ubmf/Ebmf 
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbmf <- array(0, dim = lenp)
#         Mbmf <- Mbmf+m1$sims.list[[paste0(parkem[i])]]
#         bmf <- Ubmf/Ebmf+Mbmf
#       }
#     }
#   }
#   
#   #WITH GROWTH
#   if(elim_growth == "yes"){
#     Ebmf <- m1$sims.list$kee+m1$sims.list$keg
#     
#     if(nmet == 0){
#       bmf <- Ubmf/Ebmf
#     }
#     if(nmet != 0){
#       for(i in 1:nmet){
#         Mbmf <- array(0, dim = lenp)
#         Mbmf <- Mbmf+m1$sims.list[[paste0(parkem[i])]]
#         bmf <- Ubmf/Ebmf+Mbmf
#       }
#     }
#   }
#   bmfMed <- round(quantile(bmf, probs = 0.5), digits = 4)
#   bmfInf <- round(quantile(bmf, probs = 0.025), digits = 4)
#   bmfSup <- round(quantile(bmf, probs = 0.975), digits = 4)
#   
#   data4bmf <- with(density(bmf), data.frame(x, y))
#   data4bmf <- na.omit(data4bmf[is.finite(rowSums(data4bmf)),])
#   
#   bmfPlot <- ggplot(data = data4bmf, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "bmfk", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bmfInf & x <= bmfSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bmfInf, linetype = "longdash") +
#     geom_vline(xintercept = bmfMed, linetype = "longdash") +
#     geom_vline(xintercept = bmfSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bmfInf*0.8, bmfSup/0.8), breaks = c(bmfInf, bmfMed, bmfSup), labels = c(bmfInf, bmfMed, bmfSup)) 
# }
# 
# ###
# ### BMFss
# ###
# 
# if("food" %in% whichexp){
#   #Cpred for steady state (equal at tacc)
#   Cpredss <- m1$sims.list$Cobsp[,length(vtacc),1]
#   
#   #Calculations of BMF at steady state
#   bmfss <- Cpredss/unique(Cexp$expf)
#   bmfss <- na.omit(bmfss)  
#   
#   bmfssMed <- round(quantile(bmfss, probs = 0.5), digits = 4)
#   bmfssInf <- round(quantile(bmfss, probs = 0.025), digits = 4)
#   bmfssSup <- round(quantile(bmfss, probs = 0.975), digits = 4)
#   
#   if(lipidyn==TRUE){
#     # for table
#     bmfklreport <- c("<b>BMF<sub>k,l</sub></b>", bmfInf*0.05/lipids, bmfMed*0.05/lipids, bmfSup*0.05/lipids, CVf)
#     bmfsslRowReport <- c("<b>BMF<sub>ss,l</sub></b>", bmfssInf*0.05/lipids, bmfssMed*0.05/lipids, bmfssSup*0.05/lipids, CVfss)
#   }
#   
#   data4bmfss <- with(density(bmfss), data.frame(x, y))
#   data4bmfss <- na.omit(data4bmfss[is.finite(rowSums(data4bmfss)),])
#   
#   bmfssPlot <- ggplot(data = data4bmfss, mapping = aes(x = x, y = y), xlab()) +
#     geom_line( color = "#ee7202", size = 1) +
#     labs(x = "bmfss", y = "Density") +
#     geom_area(mapping = aes(x = ifelse( x >= bmfssInf & x <= bmfssSup, x, 0)), fill = "#ee7202", alpha = 0.4) +
#     geom_vline(xintercept = bmfssInf, linetype = "longdash") +
#     geom_vline(xintercept = bmfssMed, linetype = "longdash") +
#     geom_vline(xintercept = bmfssSup, linetype = "longdash") +
#     scale_x_continuous(limits = c(bmfssInf*0.8, bmfssSup/0.8), breaks = c(bmfssInf, bmfssMed, bmfssSup), labels = c(bmfssInf, bmfssMed, bmfssSup)) 
# }
# 

# 9. Goodness-of-fit criteria ####


parameters <- str_replace(params, "sigmaCpred","sigmaCp") # Get parameters for GOF
parameters <- str_replace(parameters, "sigmaCmet","sigmaCm")
parameterssigma <- str_replace(parsigma, "sigmaCpred","sigmaCp")
parameterssigma <- str_replace(parameterssigma, "sigmaCmet","sigmaCm")

P <- data.frame(Parameter = params, Label = parameters)
Psigma <- data.frame(Parameter = parsigma, Label = parameterssigma)

# 9.1. PPC ####
# 9.1.1. Extract all de the required data ####

tp0 <- as.numeric(t(data.frame(tp0)))
qpred4ppc <- Qpred %>% 
  filter(Qpred$time %in% tp0) %>%
  select(2:ncol(Qpred))

data4plot <- as.data.frame(datatabletest)
data4plot <- data4plot %>%
  filter(time != 0) 

table4ppc <- bind_cols(data4plot, qpred4ppc)

if(elim_growth == "yes"){   #if growth, create an other table for ppc
  data4plotg <- NULL     
  data4plotg <- as.data.frame(datatableg)
  data4plotg <- data4plotg %>%
    filter(time != 0)     #exclude values for t=0
  tpg <- as.numeric(t(data.frame(tpg)))
  
  qpred4ppcg <- QpredG %>% 
    filter(QpredG$time %in% tpg) %>%
    select(2:ncol(QpredG))		
  
  #create a table for PPC about concentrations of chemicals
  table4ppcg <- bind_cols(data4plotg, qpred4ppcg)
}


table4ppc <- table4ppc %>%
  mutate(col = case_when(
    CpredQ2.5 > conc &&  CpredQ97.5 < conc ~ "out", 
    CpredQ2.5 < conc & CpredQ97.5 > conc ~ "in"))   #ppc data for parent compound

inppc <- format(na.omit(table4ppc$col=="in"))
percentppc <- format(sum(length(inppc))*100/nrow(table4ppc), digits=4)

if (nmet!=0){  #ppc data for metabolites
  concmi <- table4ppc %>%
    select(starts_with("concm"))
  
  Qinf <- table4ppc %>%
    select(starts_with("Cmetpred") & (ends_with("Q2.5")))
  
  Qsup <- table4ppc %>%
    select(starts_with("Cmetpred") & (ends_with("Q97.5")))
  
  fn <- function(table4ppc, i) {
    varname <- paste("colm", i)
    mutate(table4ppc, !!varname := case_when(
      Qinf[i] > concmi[i] && Qsup[i] < concmi[i]  ~ "out", 
      Qinf[i] < concmi[i] &  Qsup[i] > concmi[i]  ~ "in"))
  }
  
  inppcm<-NULL
  inppcm2<-NULL
  percentppcm <- NULL
  
  for(i in 1:nmet) {
    table4ppc <- fn(table4ppc, i=i)
    table4ppc[is.na(table4ppc)] <- "out"
    inppcm[i] <- table4ppc %>%
      select(starts_with("colm ") & ends_with(paste0(i)))
    inppcm <- data.frame(inppcm) 
    inppcm2[i] <- inppcm[i] %>%
      filter(inppcm[i] == "in")
    percentppcm[i]<- format(sum(length(unlist(inppcm2[i])))*100/nrow(table4ppc), digits=4)
  }   
}

if (elim_growth == "yes"){    #ppc data for growth data
  table4ppcg <- table4ppcg %>%
    mutate(colg = case_when(
      GpredQ2.5 > growth && GpredQ97.5 < growth ~ "out", #or &&
      GpredQ2.5 <= growth & GpredQ97.5 >= growth ~ "in"))
  inppcG <- format(na.omit(table4ppcg$colg=="in"))
  table4ppcg$colg[is.na(table4ppcg$colg)] <- "out"
  percentppcG <- format(sum(length(inppcG))*100/nrow(table4ppcg), digits = 4)
}

# 9.1.2. PPC Plots ####

plots <- list()
if(elim_growth == "yes"){
  nplotsppc <- ncol(data2plot)-2
}else{
  nplotsppc <- ncol(data2plot)-1
}
for(k in 1:nplotsppc){
  local({
    k <- k
    if(k == 1){
      title <- paste0("Parent compound: 

 percentage of data in CI: 

", percentppc,
                      "% (",sum(length(inppc)), "/", nrow(table4ppc), ")")
    }else{
      title <- paste0("Metabolite", k-1, ": 

 percentage of data in CI: 

 ", percentppcm[k-1],
                      "% (",sum(length(inppcm2[[k-1]])), "/", nrow(table4ppc), ")")
    }
    
    df <- as.data.frame(table4ppc)
    x <- df %>%
      select(starts_with("conc"))
    ymin <- df %>%
      select(starts_with("C")& ends_with(paste0("Q2.5")))
    ymax <- df %>%
      select(starts_with("C")& ends_with(paste0("Q97.5")))
    ymed <- df %>%
      select(starts_with("C")& ends_with(paste0("Q50")))
    color <- df %>%
      select(starts_with("col"))
    
    
    tmp <- ggplot(data = table4ppc) +
      xlab("Observed concentrations") +
      ylab("Predicted concentrations") +
      scale_colour_manual(values = c("green", "red")) +
      geom_linerange(aes(x = x[,k], ymin = ymin[,k], ymax = ymax[,k] ,
                         color = color[,k]),
                     show.legend = FALSE) +
      geom_point(aes(x = x[,k], y = ymed[,k])) +
      geom_abline(slope = 1, intercept = 0) +
      coord_fixed(ratio = 1) +
      theme_classic() +
      theme(plot.title = element_text(hjust = 0.5, size = "25px"), aspect.ratio = 1)+
      labs(x = "Observed concentrations", y = "Predicted concentrations", title = title)
    
    assign(paste0("g", k), tmp, envir = .GlobalEnv)
    plots[[paste0("g", k)]] <<- tmp
  })
  print(plots)
}
# ppcPlot <- grid.arrange(grobs = plots, ncol = 2)
ppcPlot <- plots



if(elim_growth == "yes"){  #ppc for growth
	ppcPlotG <- ggplot(data = table4ppcg) +
    xlab("Observed growth") +
    ylab("Predicted growth") +
    scale_colour_manual(values = c("green", "red")) +
    geom_linerange(aes(x = growth, ymin = GpredQ2.5, ymax = GpredQ97.5,
                       color = colg),
                   show.legend = FALSE) +
    geom_point(aes(x = growth, y = GpredQ50)) +
    geom_abline(slope = 1, intercept = 0) +
    coord_fixed(ratio = 1) +
    ggtitle(paste0("Growth: 

 percentage of data in CI : ", percentppcG,
                   "% (",sum(length(inppcG)), "/", nrow(table4ppcg), ")")) +
    theme_classic() +
    theme(plot.title = element_text(hjust = 0.5, size = "25px"), aspect.ratio = 1)
}

# 9.2. priors posteriors ####

# 9.2.1. Create a list for the fitting process of priors without any observed data: data4fit0 ####
if(elim_growth == "yes"){
  Gobs <- data.frame(Gobs)
  data4fit0 <- list(tp = tp,
                    tpg = tpg,
                    rankg = rankg,
                    lentp = lentp,
                    Cexp = Cexp,
                    tacc = tacc,
                    rankacc1 = rankacc + 1,
                    C0 = C0,
                    rankacc = rankacc,
                    gmaxsup = gmaxsup,
                    vtacc=vtacc,
                    vtdep=vtdep,
                    vtg=vtg)
}else{
  data4fit0 <- list(tp = tp,
                    lentp = lentp,
                    Cexp = Cexp,
                    tacc = tacc,
                    rankacc1 = rankacc + 1,
                    C0 = C0,
                    rankacc = rankacc,
                    vtacc=vtacc,
                    vtdep=vtdep)
}

orangeMOSAIC <- rgb(238/256, 114/256, 2/256) # MOSAIC colors
grayMOSAIC <- rgb(211/256, 211/256, 211/256) # MOSAIC colors

# 9.2.2.Built priors ####
m0 <- jags.model(file = "model.txt", data = data4fit0, n.chains = 3)
update(m0, 5000)
mcmc0 <- coda.samples(m0, params, n.iter = 100000, thin = 1)
mcmctot0 <- as.data.frame(as.matrix(mcmc0))

# 9.2.3. Function to draw the probability distributions on log10 ####

probaDistrbution <- function(dat, dat0, mcmctot1, mcmctot0, datn){
	coef <- 1.5
	limits <- c(min(dat)/coef, max(dat)*coef)
	datDens <- with(density(dat),data.frame(x,y))
	datDens0 <- with(density(dat0), data.frame(x, y))
	
	g <- ggplot() +
		theme_classic() +
		geom_density(data = mcmctot0, aes(x = log10(dat0)),
					 fill = "grey", color = NA) +
		scale_x_continuous(limits = log10(limits)) +
		geom_density(data = mcmctot1, aes(x = log10(dat)),
					 fill = "orange", color = NA) +
		xlab(paste0("log10(",datn,")"))
	
	return(g)
}

# 9.2.4. Function to draw the probability distributions ####

probaDistrbutionnotlog10 <- function(dat, dat0, mcmctot1, mcmctot0, datn){
	coef <- 1.5
	limits <- c(min(dat)/coef, max(dat)*coef)
	datDens <- with(density(dat),data.frame(x,y))
	datDens0 <- with(density(dat0), data.frame(x, y))
	
	g <- ggplot() +
		theme_classic() +
		geom_density(data = mcmctot0, aes(x = (dat0)),
					 fill = "grey", color = NA) +
		scale_x_continuous(limits = (limits)) +
		geom_density(data = mcmctot1, aes(x = (dat)),
					 fill = "orange", color = NA) +
		xlab(paste0(datn))
	
	return(g)
}

# 9.2.5.Plots ####
plots <- list()
nplots <- length(pardet) # Number of plots = nbr of parameters

for(k in 1:nplots){
	dat <- mcmctot1[,k]
	datn <- colnames(mcmctot0[k])
	datDens <- with(density(dat),data.frame(x,y))
	dat0 <- mcmctot0[,k]
	datDens0 <- with(density(dat0),data.frame(x,y))

	plots[[paste0("g", k)]] <- probaDistrbution(dat, dat0, mcmctot1, mcmctot0, datn)
} # Plot for deterministic parameters
plotsparam <- plots
# grid.arrange(grobs = plots, ncol=2)
# plotsparam <- grid.arrange(grobs = plots, ncol=2)


plotssigma <- list() 
nplotssto <- length(parsigma) #number of plots for stochastic part

for(k in 1:nplotssto){
	dat <- mcmctot1[,length(pardet)+k]
	datn <- parsigma[k]
	datDens <- with(density(dat),data.frame(x,y))
	dat0 <- mcmctot0[,length(pardet)+k]
	datDens0 <- with(density(dat0),data.frame(x,y))
	plotssigma[[paste0("g", k)]] <- probaDistrbutionnotlog10(dat, dat0, mcmctot1, mcmctot0, datn)
} # Plot for stochastic parameters

# grid.arrange(grobs = plotssigma, ncol=2)
# plotssigma <- grid.arrange(grobs = plotssigma, ncol=2)


# plotssssss <- list(plotsparam, plotssigma) # all
densityPlotSave <- grid.arrange(grobs = c(plotsparam, plotssigma), ncol=2)

# 
# nplotsparam <- length(pardet)
# for(k in 1:nplotsparam){
# 	dat <- mcmctot1[,k]
# 	datn <- colnames(mcmctot0[k])
# 	datDens <- with(density(dat),data.frame(x,y))
# 	dat0 <- mcmctot0[,k]
# 	datDens0 <- with(density(dat0),data.frame(x,y))
# 	paramlatex <- getParamPRIOR(pardet[k])
# 	
# 	plotsparam[[paste0("g", k)]] <- probaDistrbution(dat, dat0, mcmctot1, mcmctot0, datn, paramlatex)
# }
# #png(filename = paste0("FIGS/", filename, "-priors-posteriors.png"), res = 300, units = "cm", width = 20, height = 20)
# plotsparam <- plotsparam
# 
# # plotssigma <- list()
# nplotssto <- length(parsigma)
# for(k in 1:nplotssto){
# 	dat <- mcmctot1[,length(pardet)+k]
# 	datn <- parsigma[k]
# 	datDens <- with(density(dat),data.frame(x,y))
# 	dat0 <- mcmctot0[,length(pardet)+k]
# 	datDens0 <- with(density(dat0),data.frame(x,y))
# 	paramlatex <- getParamPRIOR(parsigma[k])
# 	plotssigma[[paste0("g", k)]] <- probaDistrbutionnotlog10(dat, dat0, mcmctot1, mcmctot0, datn, paramlatex)
# }
# plotssigma <- plotssigma
# 
# densityPlotSave <- grid.arrange(grobs=c(plotsparam, plotssigma), ncol = 2) # all

# densityPlotSave <- grid.arrange(grobs = densityPlot, ncol = 2)
# 9.3. correlations ####

S <- ggs(mcmc1, family="^k|^g|^sigma", par_labels=P) # for all parameters
Sdet <- ggs(mcmc1, family="^k|^g") # for deterministic parameters
Ssigma <- ggs(mcmc1, family="sigma", par_labels=Psigma) # for stochastic parameters (at least 2 parameters required)
Scorr <- S %>% mutate(Parameter = factor(Parameter, levels = parameters)) %>% select(-5)
Scorrdet <- Sdet %>% mutate(Parameter = factor(Parameter, levels = pardet)) 

ggs_pairs(Scorrdet, lower = list(continuous = wrap("density", color = "#ee7202"))) 	# Plot correlations for deterministic parameters

ggs_pairs(Scorr, lower = list(continuous = wrap("density", color = "#ee7202"))) 	# Plot correlations for all parameters

ggs_crosscorrelation(Scorrdet, absolute_scale	= TRUE) + 
  scale_fill_gradient(low = "#ee7202", high = "#63ad00", breaks=c(-1,0,1),labels=c(-1,0,1),limits=c(-1,1)) +
  scale_x_discrete(position="top")+
  scale_y_discrete(position="right", limits=rev(pardet)) +
  theme(axis.text.x=element_text(angle = 0, hjust = 0.5), axis.ticks = element_blank()) 	# Plot coloured matrix correlations for deterministic parameters

ggs_crosscorrelation(Scorr, absolute_scale	= TRUE) + 
  scale_fill_gradient(low = "#ee7202", high = "#63ad00", breaks=c(-1,0,1),labels=c(-1,0,1),limits=c(-1,1)) +
  scale_x_discrete(position="top")+
  scale_y_discrete(position="right", limits=rev(parameters)) +
  theme(axis.text.x=element_text(angle = 0, hjust = 0.5), axis.ticks = element_blank()) 	# Plot coloured matrix correlations for all parameters

# 9.4. PSRF ####
# 9.4.1 Table ####
Rhat <- as.data.frame(as.matrix(m1$Rhat)) #as a dataframe class
Rhat <- as.data.frame(as.matrix(Rhat[1:length(params),])) # need to be less than 1.05
colnames(Rhat) <- c("PSRF") 
psrf <- Rhat
psrf
# 9.4.2 Plot ####
Spsrf <- S %>% mutate(Parameter = factor(Parameter, levels = rev(parameters))) 
ggs_Rhat(Spsrf, greek = TRUE,) +
  ggtitle(NULL) + 
  xlab("R_hat") + 
  theme(panel.grid.major = element_line(colour = "#f2f2f2"))

# 9.5. DIC ####
dic <- m1$DIC
dic

# 9.6. WAIC ####
### if parallel = FALSE

# samples.m1 <- jags.samples(m1$model$cluster1,
#                            c("WAIC","deviance"),
#                            type = "mean",
#                            n.iter = niter,
#                            n.burnin = 5000,
#                            n.thin = thin)
# 
# samples.m1$p_waic <- samples.m1$WAIC
# samples.m1$waic <- samples.m1$deviance + samples.m1$p_waic
# tmp <- sapply(samples.m1, sum)
# waic.m1 <- round(c(waic = tmp[["waic"]], p_waic = tmp[["p_waic"]]),1)
# waic.m1[1]

### if parallel = TRUE
### perform again the model and without the parallel option... (in JAGS)
### required to have R2jags package

# library("R2jags")
m1.jags <- jagsUI::jags(data = data4fit,
                parameters.to.save = parameters.to.save,
                model.file = textConnection(model),
                n.chains = 3,
                n.iter = niter,
                n.burnin = 5000,
                n.thin = thin)

samples.m1 <- jags.samples(m1.jags$model,
                           c("WAIC","deviance"),
                           type = "mean",
                           n.iter = niter,
                           n.burnin = 5000,
                           n.thin = thin)
# 

 samples.m1$p_waic <- samples.m1$WAIC
 samples.m1$waic <- samples.m1$deviance + samples.m1$p_waic
 tmp <- sapply(samples.m1, sum)
 waic.m1 <- round(c(waic = tmp[["waic"]], p_waic = tmp[["p_waic"]]),1)
 waic <- waic.m1[1]

# 9.7. MCMC traces ####

Strace <- S %>% mutate(Parameter = factor(Parameter, levels = parameters)) 
Strace <- S %>% select(-5)

t<-ggs_traceplot(Strace, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
  theme(legend.title = element_blank()) #all parameters MCMC traces



ggs_traceplot(Scorrdet, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
  theme(legend.title = element_blank()) #deterministic parameters MCMC traces

tracesPlotsto <-ggs_traceplot(Ssigma, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
  theme(legend.title = element_blank()) #stochastic parameters MCMC traces


if(length(pardet) > 5){
  Straceskm <- ggs(mcmc1, family="^km")
  tracesPlotdetkm <- ggs_traceplot(Straceskm, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
    theme(legend.title = element_blank())
  
  Straceskem <- ggs(mcmc1, family="^kem")
  tracesPlotdetkem <- ggs_traceplot(Straceskem, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
    theme(legend.title = element_blank())
  
  if(elim_growth == "yes"){
    Stracesk <- ggs(mcmc1, family="^keg|^g|^kee|^ku")
    tracesPlotdetk <- ggs_traceplot(Stracesk, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
      theme(legend.title = element_blank())
  } else {
    Stracesk <- ggs(mcmc1, family="^kee|^ku")
    tracesPlotdetk <-  ggs_traceplot(Stracesk, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
      theme(legend.title = element_blank())
  }
} else {
  tracesPlotdet <- ggs_traceplot(Scorrdet, greek = TRUE,) + scale_colour_manual(values = alpha(c("#333333", "#ee7202", "#63ad00"), 1)) +
    theme(legend.title = element_blank())
}

