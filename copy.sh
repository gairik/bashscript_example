if [[ -d cache ]]; then

echo "cache exists"
tar -czvf cache.tar.gz cache
fi

if [[ ! -d cache_dest ]]; then

echo "cache_dest dir does not exist"
mkdir cache_dest

fi

if [[ -d cache_dest ]]; then

tar -xzvf cache.tar.gz -C cache_dest

fi