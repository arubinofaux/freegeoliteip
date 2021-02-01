class FREEGEOLITEIP::Jobs::Asn::ReadIpv4Job < Mosquito::QueuedJob
  params(raw : MaxMindDB::Any, ip : String)

  def perform
    ip = ip?
    data = raw?.as(MaxMindDB::Any)

    pp ip
    pp data["autonomous_system_number"].as_i
    pp data["autonomous_system_organization"].as_s 
  end

  def deserialize_max_mind_db__any(data)
    
  end

end