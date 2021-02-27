function uncertainPar = makeParUncertain(cleanPar,relativeNoiseMagnitude)

if isscalar(relativeNoiseMagnitude) 
    relativeNoiseMagnitude = repmat(relativeNoiseMagnitude,size(cleanPar));
end

uncertainPar = cleanPar.*(1+relativeNoiseMagnitude.*2.*(rand(size(cleanPar))-0.5));

end