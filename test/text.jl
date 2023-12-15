@testitem "span" begin
    rt = rt"a"
    @test rt.type == :span
    @test rt.children == ["a"]
end

@testitem "italic" begin
    rt = rt"a"i
    @test rt.type == :span
    @test rt.children == ["a"]
    @test rt.attributes[:font] == :italic
end
