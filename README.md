# DPRs_test
複数DPRをやってみる<br>
Arria10のDPR領域は2つまでらしい. これは, <br>
`1.そもそもPR-IPを2つまでしか置けないのか`<br>
`2.PR-IPはいっぱい作れるけど, 同時にDPRできるのが2つまでなのか`<br>
確かめる


# 環境
|ツール    |Quartus Prime Version 18.1.0 Pro Edition|
|:---------|:---------------------------------------|
|評価ボード|DE5a-Net DDR4 Edition                   |
|FPGA      |Intel Arria10 10AX115N2F45E1SG          |


# 実験

### [実験1](./ex1) : PR-IPを複数インスタンス化してみる
- コンパイルエラー
  - Found 2 PR blocks in design -- only one PR block is allowed

### [実験2](./ex2) : PR-IPを複数作成してみる
- コンパイルエラー
  - Found 2 CRC blocks in design -- only one CRC block is allowed
  - Found 2 PR blocks in design -- only one PR block is allowed

### [実験3](./ex3) : PR-IP 1つ. 複数ペルソナを作ることで複数の再構成対象をそれぞれ再構成したりしなかったりしてみる
- 1つのペルソナの中に複数の再構成対象インスタンスがあっても, それらをまとめて再構成することはできず, 1つずつしか再構成できない??
  - インスタンスA : count up, count down
  - インスタンスB : count up, count down
    - OK : (A, B) = (up, up) -> (up, down)
    - NG : (A, B) = (up, up) -> (down, down)
    - 

### [階層的部分再構成](./hpr_tutorial/flat2) : Hierarchical Partial Reconfiguration (HPR)
- tclスクリプトでエラー発生中



# ユーザガイド
- [partial reconfiguration](https://www.intel.co.jp/content/www/jp/ja/programmable/documentation/tnc1513987819990.html)



