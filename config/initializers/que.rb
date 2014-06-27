require 'que'

Que.log_formatter = proc do |data|
  if data[:event] != :job_unavailable
    JSON.dump(data)
  end
end
