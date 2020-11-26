# !/bin/sh
#Write a Shell Script to concatenate the n1-n5 lines of File1 and n8-n15 Lines of File2 to #file3 using proper filter command of head and tail

echo "Enter file names"
read f1 f2
echo "Enter the destination file"
read f3
rm -rf $f3
touch $f3

cat $f1 | head -5 >>$f3
cat $f2 | head -15 | tail -8 >>$f3
echo "Copied lines 1-5 from $f1 and lines 8-15 from $f2 into $f3"


