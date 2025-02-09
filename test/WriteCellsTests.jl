using LightXML

folder = "test_folder"
path_to_ic_cell_xml = joinpath(folder, "cells.xml")
createICCellXMLTemplate(folder)
@test isdir(folder)
@test isfile(path_to_ic_cell_xml)

path_to_ic_cell_file = joinpath(folder, "cells.csv")
domain_dict = Dict{String,Float64}("x_min"=>-500.0, "x_max"=>500.0, "y_min"=>-500.0, "y_max"=>500.0, "z_min"=>-500.0, "z_max"=>500.0)
generateICCell(path_to_ic_cell_xml, path_to_ic_cell_file, domain_dict)
@test isfile(path_to_ic_cell_file)
