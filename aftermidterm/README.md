# aftermidterm

這個資料夾裡的檔案是期中發表會之後，我決定要把這首歌唱出來，而製造的檔案

## 當初的流程

1. 把期中發表時做的 `mysong004.mscz` (在 `midterm` 資料夾) 轉成 XML 檔： `mysong004.xml`
2. 寫一個 XSLT 檔案 `移除彈性節拍.xslt` 來轉換 `mysong004.xml` 譜中的彈性節拍
3. 用 `移除彈性節拍.xslt` 把 `mysong004.xml` 轉成 `mysong004v2.xml`
4. 做彈性節拍的圖示 `彈性節拍.png` (在 `pic` 資料夾)
5. 用 MuseScore 匯入 `mysong004v2.xml`，加上彈性節拍的圖示後，存檔為 `mysong004v2.mscz`
6. 我修了一些音之後，把 `mysong004v2.mscz` 升級成 `mysong004v2.1.mscz`
7. 把 `mysong004v2.1.mscz` 匯出成 `音樂好難寫v2.pdf`
