module MakieRichText

using Makie

export @R_str

function split(str)
    index = findfirst('^', str)
    isnothing(index) && (index = findfirst('_', str))
    isnothing(index) && return [str]
    prefix, suffix = str[1:prevind(str, index)], str[index:end]
    isempty(prefix) && return [suffix]
    return [prefix, suffix]
end

function gethead(str)
    sub = str[nextind(str, 1):end]
    occursin(r"^\^", str) && return superscript, sub
    occursin(r"^_", str) && return subscript, sub
    return rich, str
end

function getfont(flags)
    flags == "i" && return :italic
    flags == "b" && return :bold
    flags == "bi" && return :bold_italic
    return :regular
end

# function richtext(str, flags="")
#     return strs = split(str)
# end

function richtext(str, flags="")
    strs = split(str)
    length(strs) == 2 && return rich(richtext.(strs)...)
    str = first(strs)
    head, str = gethead(str)
    font = getfont(flags)
    length(str) == 1 && font == :regular && (font = :italic)
    return head(str; font)
end

macro R_str(str, flags="")
    rt = richtext(str, flags)
    return :($rt)
end

end
