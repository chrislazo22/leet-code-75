require "debug"

def valid_ip_address(query_ip)
  if query_ip.count(".") == 3
    validate_ipv4(query_ip)
  elsif query_ip.count(":") == 7
    validate_ipv6(query_ip)
  else
    return "Neither"
  end
end

def validate_ipv4(query)
  arr = query.split(".")

  arr.each do |section|
    debugger
    return "Neither" if section[0] == "0" && section.length > 1
    return "Neither" if section.to_i > 255
    return "Neither" if section.match?(/[a-zA-Z]/)
  end

  return "IPv4"
end

def validate_ipv6(query)
  arr = query.split(":")

  arr.each do |section|
    return "Neither" unless section.length >= 1 && section.length <= 4
    return "Neither" unless section.match?(/^[0-9A-Fa-f]+$/)
  end

  return "IPv6"
end

# p valid_ip_address("172.16.254.1")
# p valid_ip_address("192.168.1.0")
# p valid_ip_address("192.168.01.1")
# p valid_ip_address("2001:db8:85a3:0:0:8A2E:0370:7334")
# p valid_ip_address("2001:db8:85a3:0:0:8A2E:0370:7334")
# p valid_ip_address("2001:0db8:85a3::8A2E:037j:7334")
# p valid_ip_address("256.256.256.256")
p valid_ip_address("1e1.4.5.6")
