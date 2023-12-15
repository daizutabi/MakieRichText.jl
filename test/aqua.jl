@testitem "aqua" begin
    using Aqua: Aqua
    Aqua.test_all(MakieRichText; ambiguities=false)
end