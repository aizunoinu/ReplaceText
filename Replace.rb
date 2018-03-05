#文字列の一部を置換するプログラム

#文字列の一部を置換するメソッド
def Replace(str, rstr)
    print "置換前の文字列\"#{str}\"\n"
    str[4] = rstr
    print "置換後の文字列\"#{str}\"\n"
end

#文字列を宣言する
str = "Hello World"
rstr = "good"

#Replaceメソッドを呼び出す
Replace(str, rstr)
