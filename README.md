# MakieRichText

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://daizutabi.github.io/MakieRichText.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://daizutabi.github.io/MakieRichText.jl/dev/)
[![Build Status](https://github.com/daizutabi/MakieRichText.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/daizutabi/MakieRichText.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/daizutabi/MakieRichText.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/daizutabi/MakieRichText.jl)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

## Usage

```julia
using MakieRichText

R"a"  # rich("a"; font=:italic)
R"a"b  # rich("a"; font=:bold)
R"abc"  # rich("a"; font=:regular)
R"abc"i  # rich("a"; font=:italic)

R"^a"  # superscript("a"; font=:italic)
R"_a"  # subscript("a"; font=:italic)

# other examples
R"α^β"  # italic
R"α_β"  # italic
R"ab^cd"  # regular
R"ab_cd"  # regular
```
