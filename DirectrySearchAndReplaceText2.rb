#カレントディレクトリとそのサブディレクトリ内のファイルを検索し、
#該当するファイル全てに対して
#置換処理を実施する。

#カレントディレクトリの取得
DIR = Dir.pwd

#変数DIRで指定したディレクトリとそのサブディレクトリでtxtファイルを検索する
Dir.glob("#{DIR}/**/*.txt") do |file|
    print "#{file} に対して置換処理を実施します\n"
    #ファイルを読み取り形式で開く
    f = File.open(file, "r")

    #ファイルからコンテンツを読み込む
    buffer = f.read()

    #ファイルから読み込んだコンテンツをコンソールに表示する
    print buffer
    print "\n"

    #ファイルの中身を置換する
    buffer.gsub!("オレンジ", "アップル")

    #置換後のファイルコンテンツをコンソールに表示する。
    print buffer
    print "\n"

    #ファイルを書き込み形式で開く
    f = File.open(file, "w")

    f.write(buffer)

    #ファイルの先頭に戻す(ファイルを先頭から読み直すときに使用する)
    f.rewind()

    f.close()
    puts
    puts
end
