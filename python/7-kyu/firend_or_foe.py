def friend(x):
    new = []
    for name in x:
        if len(name) == 4:
            new.append(name)
    return new
