# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HelloWorldMPIC_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("HelloWorldMPIC")
JLLWrappers.@generate_main_file("HelloWorldMPIC", Base.UUID("48f8ecbd-289f-54fe-bc68-e8703618723a"))
end  # module HelloWorldMPIC_jll
