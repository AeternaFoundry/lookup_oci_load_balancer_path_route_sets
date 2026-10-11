output "load_balancer_path_route_sets_lookup_id" {
  description = "Map of id values across all load_balancer_path_route_sets_lookup, keyed the same as var.load_balancer_path_route_sets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_load_balancer_path_route_sets.load_balancer_path_route_sets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_path_route_sets_lookup_filter" {
  description = "Map of filter values across all load_balancer_path_route_sets_lookup, keyed the same as var.load_balancer_path_route_sets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_load_balancer_path_route_sets.load_balancer_path_route_sets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "load_balancer_path_route_sets_lookup_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_path_route_sets_lookup, keyed the same as var.load_balancer_path_route_sets_lookup except keys with no load_balancer_id are omitted"
  value       = { for k, v in data.oci_load_balancer_path_route_sets.load_balancer_path_route_sets_lookup : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "load_balancer_path_route_sets_lookup_path_route_sets" {
  description = "Map of path_route_sets values across all load_balancer_path_route_sets_lookup, keyed the same as var.load_balancer_path_route_sets_lookup except keys with no path_route_sets are omitted"
  value       = { for k, v in data.oci_load_balancer_path_route_sets.load_balancer_path_route_sets_lookup : k => v.path_route_sets if v.path_route_sets != null && length(v.path_route_sets) > 0 }
}

