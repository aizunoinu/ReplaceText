#カレントディレクトリを指定(Dirオブジェクトのメソッドを使用)
DIR = Dir.pwd

#カレントディレクトリのsample.txtを読み取り形式で開く
f = File.open("#{DIR}/sample.txt", "r")

#ファイルからファイルコンテンツを読み込む
buffer = f.read()

#読み込んだファイルコンテンツをコンソールに出力する。
print "ファイルから入力されたファイルコンテンツを表示します。\n"
puts buffer
print "\n"

#中身を置換
buffer.gsub!("パイナップル", "りんご")

#置換したあとのファイルコンテンツをコンソールに出力する。
print "置換したファイルコンテンツを出力します。\n"
puts buffer
print "\n"

#カレントディレクトリのsample.txtを書き込み形式で開く
f = File.open("#{DIR}/sample.txt", "w")

#置換したあとのファイルコンテンツをファイルに書き込む
f.write(buffer)

#ファイルを閉じる
f.close()

