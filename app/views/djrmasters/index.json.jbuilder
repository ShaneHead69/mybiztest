json.array!(@djrmasters) do |djrmaster|
  json.extract! djrmaster, :id, :subdate, :subnum, :subform, :subformver, :sectname, :projname, :djrdate, :weather, :foreman, :jobphase, :worktoday, :accdelay, :workschednextday
  json.url djrmaster_url(djrmaster, format: :json)
end
