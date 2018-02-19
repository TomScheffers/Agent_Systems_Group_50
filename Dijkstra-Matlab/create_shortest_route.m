close all
clear all
clc

connections = {[22 15 14] ;[11 19 23 7]  ; [8] ;  [16 4 20 9]  ; [3 5 10] ;
[4 16 10 17]  ;[8]  ;  [1 17 13]  ; [2 6 9]  ;  [3 8 20]  ;[4 5 17 13 21];
[1 16 17] ; [20 15 22]  ; [7 10 22 23]  ;[0 23]  ;[0 12 18]  ;[3 5 11] ;
[5 7 10 11] ; [15]  ; [1 23] ; [3 9 12 21]; [10 20 22] ; [0 12 13 21];[1 13 14 19] };

G = zeros(length(connections),length(connections));

for i = 1:length(connections)
   stop = connections{i};
   
   for j = 1:length(stop)
      G(i,stop(j)+1) = 1;
   end
   
end

[e, L] = dijkstra(G,7,19);

disp (L - 1)


