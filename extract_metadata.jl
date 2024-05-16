using JSON
using DataFrames
using JSONTables

json_files = readdir("data/")

full_df = DataFrame()

for file in json_files
    json_string = read(file, )
    data = JSON.parse(json_string)
    df = DataFrame(data)
    full_df = vcat(full_df, df)
end



print(nrows(df))

