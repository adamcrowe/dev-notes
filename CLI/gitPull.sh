for d in */ # directories only
do
    ( cd "$d" && git pull origin master )
done
