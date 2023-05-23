module GetLine
export getline

"""
    getline(in; default=nothing)

Reads a line removing whitespace, if eof is reached returns `default`
"""
function getline(in=stdin; default=nothing)
    line = readline(in, keep=true) 
    if line === ""
        default
    else
        chomp(line)
    end
end

end # module GetLine
