module ArDCA

using Random: randperm 
using Distributed: @distributed   
using Printf: @printf 
using LinearAlgebra: rmul!, norm
using ExtractMacro: @extract
using NLopt: Opt,ftol_abs!,xtol_rel!,xtol_abs!,ftol_rel!,maxeval!,min_objective!,optimize
using Distributions: wsample
using LoopVectorization: @avx 
using DCAUtils: read_fasta_alignment,remove_duplicate_sequences,compute_weights

export ardca,ArVar,ArAlg,ArNet,sample,sample_with_weights,epistatic_score,dms_single_site

include("types.jl")
include("ar.jl")
include("utils.jl")
include("dca.jl")

end # end module
