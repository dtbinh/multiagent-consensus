function w = cutoff(sys)
    % Compute cutoff frequency of a
    % linear state space model.
    % Cutoff frequency defined as the
    % frequency at which the gain is
    %  3dB lower than at w=0.
    %
    % Produces an error if the system
    % doesn't have cutoff frequency.
    [mag pha freqs] = bode(sys) ;
    gain = mag2db(mag) - mag2db(mag(1)) ;
    w = freqs(gain<-3)(1) ;
end
