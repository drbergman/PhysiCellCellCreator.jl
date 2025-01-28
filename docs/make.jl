using PhysiCellCellCreator
using Documenter

DocMeta.setdocmeta!(PhysiCellCellCreator, :DocTestSetup, :(using PhysiCellCellCreator); recursive=true)

makedocs(;
    modules=[PhysiCellCellCreator],
    authors="Daniel Bergman <danielrbergman@gmail.com> and contributors",
    sitename="PhysiCellCellCreator.jl",
    format=Documenter.HTML(;
        canonical="https://drbergman.github.io/PhysiCellCellCreator.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/drbergman/PhysiCellCellCreator.jl",
    devbranch="main",
)
