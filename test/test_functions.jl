using Test
function test_vec(var,key,td)
    for i = 1:length(td[key])
        name = "element #"*string(i)*" of "*key;
        @testset "$name" begin @test isapprox(var[i], td[key][i],atol = 1e-10); end;
    end
    return nothing
end

function test_vec(var,tru)
    for i = 1:length(tru)
        name = "element #"*string(i)
        @testset "$name" begin @test isapprox(var[i], tru[i],atol = 1e-10); end;
    end
    return nothing
end
