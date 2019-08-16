member(x,[x|xs]).
member(x,[y|ys]):- member(x,ys).