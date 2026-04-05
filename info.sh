target=sslf-help

animation() {
    echo -n "loading"

    for i in {1..3}; do
        sleep 0.5
        echo -n "."
    done

    echo ""
}

if [ -f "./$target" ]; then
    animation
    ./$target -s && ./$target -v && ./$target -a && ./$target -l && ./$target -fn
else
    echo "Executable '$target' not found."
fi