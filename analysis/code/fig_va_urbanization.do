clear all
* Write down the directory below
cd "C:\Users\aidan\OneDrive\Desktop\Github test\my-hello-world-econ"

program main
	clean_data
	make_figure
end

program clean_data
	use "data/output/finaldata.dta", clear
	gen va_rural_worker = va_ag/(pop_total-pop_urban)
	gen urban_share = pop_urban/pop_total
end

program make_figure
	twoway (scatter urban_share va_rural_worker, mlabel(iso))	///
		, yscale(log) xscale(log) title("Hello World! I'm an Economist!")
	graph export "analysis/output/fig_hello_world.png", as(png) replace
end

main
