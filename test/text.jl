@testitem "span" begin
    using Makie
    rt = rt"a"
    @test rt isa Makie.RichText
    @test rt.type == :span
    @test rt.children == ["a"]
    @test isempty(rt.attributes)
end

@testitem "italic" begin
    rt = rt"a"i
    @test rt.type == :span
    @test rt.children == ["a"]
    @test rt.attributes[:font] == :italic
end

@testitem "unknown" begin
    rt = rt"a"X
    @test rt.type == :span
    @test rt.children == ["a"]
    @test isempty(rt.attributes)
end
