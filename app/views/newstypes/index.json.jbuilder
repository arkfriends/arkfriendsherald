json.array!(@newstypes) do |newstype|
  json.extract! newstype, :id, :extension, :viewer, :jscript, :pretags, :posttags
  json.url newstype_url(newstype, format: :json)
end
