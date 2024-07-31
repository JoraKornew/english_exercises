#!/usr/bin/env bash
#
createPage(){
# create dictionary pages files

for line in "${fileList[@]}"; do
  touch output/"${line}".html
  cat "pattern-others-pages-part-1.html" > output/"${line}".html # pre title
  echo "<title>${line}</title>" >> output/"${line}".html # title
  cat "pattern-others-pages-part-2.html" >> output/"$line".html #  menu
  echo "<section><h1>${line}</h1>" >> output/"${line}".html  # body title h1
  cat "pattern-dictionary-page-part-1.html" >> output/"${line}".html # app body
  cat "$1"/"${line}" >> output/"${line}".html # aside data
  cat "pattern-dictionary-page-part-2.html" >> output/"${line}".html # js tag
  cat "pattern-others-pages-part-3.html" >> output/"${line}".html # close html tags

done

}


# create grammar header page
ls grammar-pages-data/ -1 > datalist.txt
readarray -t fileList < datalist.txt

touch others-pages/grammar.html
cat "pattern-main-grammar-part-1.html" > "others-pages/grammar.html"
for line in "${fileList[@]}"; do
echo "<div><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/grammar.html"
done
cat "pattern-main-grammar-part-2.html" >> "others-pages/dictionary.html"


# create grammar pages files




# create dictionary header page
#---------1
#---------1
ls dictionary-pages-data-a1-nouns/ -1 > datalist.txt
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-1.html" > "others-pages/dictionary.html"
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------2
createPage "dictionary-pages-data-a1-nouns"
#---------2
ls dictionary-pages-data-a1-verbs/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-2.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------3
createPage "dictionary-pages-data-a1-verbs"
#---------3
ls dictionary-pages-data-a1-adj/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-3.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------4
createPage "dictionary-pages-data-a1-adj"
#---------4
ls dictionary-pages-data-a1-adv/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-4.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------5
createPage "dictionary-pages-data-a1-adv"
#---------5
ls dictionary-pages-data-a2-nouns/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-5.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------6
createPage "dictionary-pages-data-a2-nouns"
#---------6
ls dictionary-pages-data-a2-verbs/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-6.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------7
createPage "dictionary-pages-data-a2-verbs"
#---------7
ls dictionary-pages-data-a2-adj/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-7.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------8
createPage "dictionary-pages-data-a2-adj"
#---------8
ls dictionary-pages-data-a2-adv/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-8.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#---------9
createPage "dictionary-pages-data-a2-adv"
#---------9
ls dictionary-pages-data-b1-nouns/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-9.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------10
createPage "dictionary-pages-data-b1-nouns"
#--------10
ls dictionary-pages-data-b1-verbs/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-10.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------11
createPage "dictionary-pages-data-b1-verbs"
#--------11
ls dictionary-pages-data-b1-adj/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-11.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------12
createPage "dictionary-pages-data-b1-adj"
#--------12
ls dictionary-pages-data-b1-adv/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-12.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------13
createPage "dictionary-pages-data-b1-adv"
#--------13
ls dictionary-pages-data-b2-nouns/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-13.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------14
createPage "dictionary-pages-data-b2-nouns"
#--------14
ls dictionary-pages-data-b2-verbs/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-14.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------15
createPage "dictionary-pages-data-b2-verbs"
#--------15
ls dictionary-pages-data-b2-adj/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-15.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------16
createPage "dictionary-pages-data-b2-adj"
#--------16
ls dictionary-pages-data-b2-adv/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-16.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------17
createPage "dictionary-pages-data-b2-adv"
#--------17
ls dictionary-pages-data-c1-nouns/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-17.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------18
createPage "dictionary-pages-data-c1-nouns"
#--------18
ls dictionary-pages-data-c1-verbs/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-18.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------19
createPage "dictionary-pages-data-c1-verbs"
#--------19
ls dictionary-pages-data-c1-adj/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-19.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------20
createPage "dictionary-pages-data-c1-adj"
#--------20
ls dictionary-pages-data-c1-adv/ -1 > datalist.txt # !!!!
readarray -t fileList < datalist.txt

touch others-pages/dictionary.html
cat "pattern-main-dictionary-part-20.html" >> "others-pages/dictionary.html" # !!!!
for line in "${fileList[@]}"; do
echo "<div><input class='inProgress' type='color' value='#ffffff' data-id='"$line"'/><a href=\""$line".html\">"$line"</a></div>" >> "others-pages/dictionary.html"
done
#--------21
createPage "dictionary-pages-data-c1-adv"
#--------21
cat "pattern-main-dictionary-part-21.html" >> "others-pages/dictionary.html"


# create all others pages
ls others-pages/ -1 > datalist.txt

readarray -t fileList < datalist.txt


for line in "${fileList[@]}"; do
  touch output/"$line"
  cat "pattern-others-pages-part-1.html" > output/"$line"
  cat title/"$line" >> output/"$line"
  cat "pattern-others-pages-part-2.html" >> output/"$line"
  cat others-pages/"$line" >> output/"$line"
  cat "pattern-others-pages-part-3.html" >> output/"$line"

done




