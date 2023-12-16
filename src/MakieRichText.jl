module MakieRichText

using Makie

export @rt_str

macro rt_str(str, flags="")
    flags == "i" && return :(rich($str; font=:italic))
    return :(rich($str))
end

end
