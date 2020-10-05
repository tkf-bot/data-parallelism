# This file was generated, do not modify it. # hide
(imin2, xmin2, imax2, xmax2) = ThreadsX.reduce(
    ((i, x, i, x) for (i, x) in pairs([0, 1, 3, 2]));
    init = (-1, Inf, -1, -Inf)
) do (imin, xmin, imax, xmax), (i1, x1, i2, x2)
    if xmin > x1
        xmin = x1
        imin = i1
    end
    if xmax < x2
        xmax = x2
        imax = i2
    end
    return (imin, xmin, imax, xmax)
end

@assert (imin2, xmin2, imax2, xmax2) == (imin, xmin, imax, xmax)