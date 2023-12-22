# MakieRichText

A small package for typing `RichText` of [Makie](https://docs.makie.org/stable/).

[![Stable][docs-stable-img]][docs-stable-url]
[![Dev][docs-dev-img]][docs-dev-url]
[![Build Status][GHA-img]][GHA-url]
[![Coverage][codecov-img]][codecov-url]
[![PkgEval][pkgeval-img]][pkgeval-url]
[![Code Style: Blue][codestyle-blue-img]][codestyle-blue-url]
[![Aqua][aqua-img]][aqua-url]

## Usage

```
using MakieRichText

R"a"  # rich("a"; font=:italic)
R"a"b  # rich("a"; font=:bold)
R"abc"  # rich("abc"; font=:regular)
R"abc"i  # rich("abc"; font=:italic)

R"^a"  # superscript("a"; font=:italic)
R"_a"  # subscript("a"; font=:italic)

# other examples
R"α^β"  # italic
R"α_β"  # italic
R"ab^cd"  # regular
R"ab_cd"  # regular
```

[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://daizutabi.github.io/MakieRichText.jl/dev/

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://daizutabi.github.io/MakieRichText.jl/stable/

[GHA-img]: https://github.com/daizutabi/MakieRichText.jl/actions/workflows/CI.yml/badge.svg?branch=main
[GHA-url]: https://github.com/daizutabi/MakieRichText.jl/actions/workflows/CI.yml?query=branch%3Amain

[codecov-img]: https://codecov.io/gh/daizutabi/MakieRichText.jl/branch/main/graph/badge.svg
[codecov-url]: https://codecov.io/gh/daizutabi/MakieRichText.jl

[pkgeval-img]: https://juliaci.github.io/NanosoldierReports/pkgeval_badges/M/MakieRichText.svg
[pkgeval-url]: https://juliaci.github.io/NanosoldierReports/pkgeval_badges/M/MakieRichText.html

[codestyle-blue-img]: https://img.shields.io/badge/code%20style-blue-4495d1.svg
[codestyle-blue-url]: https://github.com/invenia/BlueStyle

[aqua-img]: https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg
[aqua-url]: https://github.com/JuliaTesting/Aqua.jl
