def cube_checker(volume, side)
    return false if side <= 0 || volume <= 0
    return volume == side**3
end