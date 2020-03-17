filename=main
cmd=xelatex
$cmd $filename
bibtex $filename
$cmd $filename
$cmd $filename

rm chap/*.aux
rm format/*.aux

for ext in aux blg bbl log out lot toc lof
do
    rm $filename.$ext
done



