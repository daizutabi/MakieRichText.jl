using MakieRichText
using Test
using Aqua

@testset "MakieRichText.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(MakieRichText; ambiguities = false,)
    end
    # Write your tests here.
end
