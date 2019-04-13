## これだけは抑えておくポイント
- 音楽を使うときはAVFoundationというライブラリを追加して，AVAudioPlayerを使うことを宣言する
  ```
  import AVFoundation
  ~~~~~~クラスの中~~~~~~
  var audioPlayer: AVAudioPlayer!
  ```
- 流す音楽を設定するメソッドでは，音楽ファイル名と拡張子を引数として渡す
  ```
  setAudioPlayer(soundName: "natsu", type: "mp3")
  ```
  



  


