using MakieRichText
using Documenter

DocMeta.setdocmeta!(MakieRichText, :DocTestSetup, :(using MakieRichText); recursive=true)

makedocs(;
    modules=[MakieRichText],
    authors="daizutabi <daizutabi@gmail.com> and contributors",
    repo="https://github.com/daizutabi/MakieRichText.jl/blob/{commit}{path}#{line}",
    sitename="MakieRichText.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://daizutabi.github.io/MakieRichText.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/daizutabi/MakieRichText.jl",
    devbranch="main",
)
