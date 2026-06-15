clear all
* Write down the directory below
cd "C:\Users\aidan\OneDrive\Desktop\Github test\my-hello-world-econ/data"

* IMPORT DATA FROM .CSV TO .DTA
insheet using "input/urbanpop.csv", clear
save "output/finaldata.dta", replace
