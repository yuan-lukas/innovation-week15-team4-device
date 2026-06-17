# 鍒涙柊瀹為獙绗?5鍛細鍥㈤槦鍗忎綔涓?Android 鐪熸満杩愯绀轰緥

鏈」鐩敤浜庣15鍛ㄨ鍫備换鍔★細鍦ㄧ14鍛?Flutter Hello World 鍜?GitHub 鎻愪氦缁冧範鐨勫熀纭€涓婏紝灏忕粍閫氳繃 Pull Request 鍗忎綔淇敼鍚屼竴涓?Flutter 椤圭洰锛屽苟鎶婃渶缁堢増鏈繍琛屽埌鐪熷疄 Android 鎵嬫満涓娿€?

## 鏈€缁堣鎻愪氦浠€涔?

姣忕粍闇€瑕佹彁浜わ細
1. GitHub 鍘熷浠撳簱閾炬帴銆?
2. 4 鍚嶇粍鍛樼殑 Fork銆佸垎鏀€乧ommit 鎴?Pull Request 璇佹嵁銆?
3. 缁勯暱鍚堝苟 PR 鍚庣殑鏈€缁?`main` 鍒嗘敮鎴浘銆?
4. 鐪熷疄 Android 鎵嬫満杩愯鏈簲鐢ㄧ殑鐓х墖銆?
5. README 涓睍绀虹湡鏈虹収鐗囧拰灏忕粍鍒嗗伐銆?

## 鎺ㄨ崘鍗忎綔鏂瑰紡

鏈懆缁熶竴浣跨敤 Fork + Pull Request锛?

```text
缁勯暱鍒涘缓鍘熷浠撳簱
鈫?
缁勫憳 Fork 鍒拌嚜宸辩殑 GitHub
鈫?
缁勫憳 clone 鑷繁鐨?Fork
鈫?
缁勫憳鍒涘缓涓汉鍒嗘敮骞朵慨鏀规寚瀹氬尯鍩?
鈫?
缁勫憳 push 鍒拌嚜宸辩殑 Fork
鈫?
缁勫憳鍚戠粍闀夸粨搴撴彁浜?Pull Request
鈫?
缁勯暱 Review 骞跺悎骞?
鈫?
涓荤數鑴戣繍琛屽悎骞跺悗鐨勬渶缁堢増鏈?
```

缁勫憳涓嶈鐩存帴 push 鍒扮粍闀夸粨搴撶殑 `main` 鍒嗘敮銆?

## 灏忕粍鍒嗗伐寤鸿

| 瑙掕壊 | 淇敼浣嶇疆 | 浠诲姟 |
| --- | --- | --- |
| 缁勯暱 | GitHub 浠撳簱 | 鍒涘缓浠撳簱銆佺淮鎶?`main`銆佸鏍?PR銆佺粍缁囩湡鏈鸿繍琛?|
| 缁勫憳 A | `lib/main.dart` | 淇敼 `groupName`銆乣projectTitle`銆乣projectSlogan` |
| 缁勫憳 B | `lib/main.dart` | 琛ュ叏 `members` 涓殑灏忕粍鎴愬憳濮撳悕涓庡垎宸?|
| 缁勫憳 C | `lib/main.dart` | 琛ュ厖 `realDeviceChecks` 涓殑鐪熸満妫€鏌ラ」 |
| 缁勫憳 D | `lib/main.dart` 鍜?`README.md` | 琛ュ厖 `evidenceRules`锛屾彁浜ょ湡鏈虹収鐗囪鏄?|

## 杩愯鍛戒护

杩涘叆椤圭洰鏍圭洰褰曞悗鎵ц锛?
```bash
flutter pub get
flutter test
flutter run
```

濡傛灉鐢佃剳杩炴帴浜嗗鍙拌澶囷紝鍏堟煡鐪嬭澶囷細
```bash
flutter devices
```
鍐嶆寚瀹氱湡瀹?Android 鎵嬫満杩愯锛?
```bash
flutter run -d 璁惧ID
```

## Android 鐪熸満妫€鏌?

杩炴帴鎵嬫満鍚庡厛妫€鏌ワ細
```bash
adb devices
flutter devices
```
`adb devices` 鐨勭姸鎬佸簲涓猴細
```text
device
```
濡傛灉鏄剧ず `unauthorized`锛岃瑙ｉ攣鎵嬫満骞跺厑璁?USB 璋冭瘯銆?

## 鐪熸満鐓х墖瑕佹眰

璇锋妸鐓х墖鏀惧埌锛?
```text
images/android-real-device.jpg
```
骞跺湪鏈?README 涓紩鐢細
```markdown
![Android 鐪熸満杩愯鐓х墖](images/android-real-device.jpg)
```

鍚堟牸鐓х墖蹇呴』婊¤冻锛?
- 鐪熷疄 Android 鎵嬫満姝ｅ湪杩愯鏈皬缁?Flutter 搴旂敤锛?
- 涓嶈兘鏄?Web 鎴浘锛?
- 涓嶈兘鏄?Android 妯℃嫙鍣ㄦ埅鍥撅紱
- 涓嶈兘鐢ㄦ墜鏈烘湰鏈烘埅鍥句唬鏇匡紱
- 蹇呴』鐢辩浜岄儴鎵嬫満鎷嶆憚锛?
- 鐓х墖涓兘鐪嬪埌鎵嬫寔鎵嬫満锛?
- 涓嶅寘鍚亰澶╄褰曘€佹墜鏈哄彿銆佸畾浣嶇瓑闅愮淇℃伅銆?

## 鏈粍鐪熸満杩愯鐓х墖

鎻愪氦鐓х墖鍚庯紝涓嬮潰搴旀樉绀烘湰缁勮繍琛屾晥鏋滐細

![Android 鐪熸満杩愯鐓х墖](images/android-real-device.jpg)

濡傛灉鍥剧墖鏆傛椂鏃犳硶鏄剧ず锛岃妫€鏌?`images/android-real-device.jpg` 鏄惁宸叉彁浜わ紝浠ュ強鏂囦欢鍚嶅ぇ灏忓啓鏄惁涓€鑷淬€?
