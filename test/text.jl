@testitem "split" begin
    f = MakieRichText.split
    @test f("αβ") == ["αβ"]
    @test f("αβ^γδ") == ["αβ", "^γδ"]
    @test f("αβ_γδ") == ["αβ", "_γδ"]
    @test f("^γδ") == ["^γδ"]
    @test f("_γδ") == ["_γδ"]
end

@testitem "normal" begin
    using MakieRichText: richtext
    using Makie
    rt = richtext("abc")
    println(rt)
    @test rt isa Makie.RichText
    @test rt.type == :span
    @test rt.children == ["abc"]
    @test rt.attributes[:font] == :regular
    rt = richtext("^def")
    @test rt.type == :sup
    @test rt.children == ["def"]
    rt = richtext("_αβγ")
    @test rt.type == :sub
    @test rt.children == ["αβγ"]
end

@testitem "italic" begin
    rt = R"αβ"i
    @test rt.type == :span
    @test rt.children == ["αβ"]
    @test rt.attributes[:font] == :italic
    rt = R"γ"
    @test rt.children == ["γ"]
    @test rt.attributes[:font] == :italic
end

@testitem "unknown" begin
    rt = R"abc"X
    @test rt.type == :span
    @test rt.children == ["abc"]
    @test rt.attributes[:font] == :regular
end

@testitem "compound" begin
    using Makie
    rt = R"α^β"
    for i in 1:2
        a = rt.children[i]
        @test a.type == [:span, :sup][i]
        @test a.attributes[:font] == :italic
    end
    rt = R"ab^cd"
    for i in 1:2
        a = rt.children[i]
        @test a.type == [:span, :sup][i]
        @test a.attributes[:font] == :regular
    end
    rt = R"α_β"
    for i in 1:2
        a = rt.children[i]
        @test a.type == [:span, :sub][i]
        @test a.attributes[:font] == :italic
    end
    rt = R"ab_cd"
    for i in 1:2
        a = rt.children[i]
        @test a.type == [:span, :sub][i]
        @test a.attributes[:font] == :regular
    end
end