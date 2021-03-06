function [graph distance] = regularmesh_1d_graph(L, k)
    % 1D regular mesh (a chain).
    % L         = (int) length of the mesh, N = L.
    % k         = (int) interaction length. Each
    % node is connected with nodex at a distance
    % equal or less than k.
    % For 1D, each agent has 2*k edges.
    % distance  = flattened vector with the distances
    % between points. Useful for correlations.
    % Can be ignored.
    [xx yy] = meshgrid(1:L) ;
    distance = abs(xx-yy) ;
    graph = distance <= k ;
    % Flatten distance for correlation function
    distance = distance(:) ;
    end
