[cp]
%{ for ip in k8s_control_plane ~}
${ip}
%{ endfor ~}

[workers]
%{ for ip in k8s_worker_node ~}
${ip}
%{ endfor ~}