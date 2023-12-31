
unit Urovo_SDK;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os;

type
// ===== Forward declarations =====

  JIPackageDeleteObserver = interface;//android.content.pm.IPackageDeleteObserver
  JIPackageDeleteObserver_Stub = interface;//android.content.pm.IPackageDeleteObserver$Stub
  JIPackageInstallObserver = interface;//android.content.pm.IPackageInstallObserver
  JIPackageInstallObserver_Stub = interface;//android.content.pm.IPackageInstallObserver$Stub
  JOnFinishObserver = interface;//android.content.pm.OnFinishObserver
  JDeviceManager = interface;//android.device.DeviceManager
  JIccManager = interface;//android.device.IccManager
  JKeyMapManager = interface;//android.device.KeyMapManager
  JKeyMapManager_KeyEntry = interface;//android.device.KeyMapManager$KeyEntry
  JLed = interface;//android.device.Led
  JLedManager = interface;//android.device.LedManager
  JMagManager = interface;//android.device.MagManager
  JMaxqManager = interface;//android.device.MaxqManager
  JMaxqManager_PedInputListener = interface;//android.device.MaxqManager$PedInputListener
  JPiccManager = interface;//android.device.PiccManager
  JPrinterManager = interface;//android.device.PrinterManager
  JSEManager = interface;//android.device.SEManager
  JSEManager_PedInputListener = interface;//android.device.SEManager$PedInputListener
  JSEManager_OperationPedInputListener = interface;//android.device.SEManager$OperationPedInputListener
  JScanManager = interface;//android.device.ScanManager
  JSettingProperty = interface;//android.device.SettingProperty
  JUFSManager = interface;//android.device.UFSManager
  Jconfiguration_Constants = interface;//android.device.scanner.configuration.Constants
  JConstants_Symbology = interface;//android.device.scanner.configuration.Constants$Symbology
  JPropertyID = interface;//android.device.scanner.configuration.PropertyID
  JSymbology = interface;//android.device.scanner.configuration.Symbology
  JTriggering = interface;//android.device.scanner.configuration.Triggering
  Jsdk_BuildConfig = interface;//android.device.sdk.BuildConfig
  JIInputActionListener = interface;//android.os.IInputActionListener
  JIInputActionListener_Stub = interface;//android.os.IInputActionListener$Stub
  JIInputActionListener_Stub_Proxy = interface;//android.os.IInputActionListener$Stub$Proxy

// ===== Interface declarations =====

  JIPackageDeleteObserverClass = interface(JIInterfaceClass)
    ['{5E6BFA25-40AE-4823-B973-BEDFAD0292E9}']
  end;

  [JavaSignature('android/content/pm/IPackageDeleteObserver')]
  JIPackageDeleteObserver = interface(JIInterface)
    ['{20BA0238-4CA0-4445-BC1B-AD7987B5E039}']
    procedure packageDeleted(string_: JString; i: Integer); cdecl;
  end;
  TJIPackageDeleteObserver = class(TJavaGenericImport<JIPackageDeleteObserverClass, JIPackageDeleteObserver>) end;

  JIPackageDeleteObserver_StubClass = interface(JBinderClass)
    ['{D97C2EF0-2828-4550-B6FA-41DE6F352CBF}']
    {class} function asInterface(iBinder: JIBinder): JIPackageDeleteObserver; cdecl;
    {class} function init: JIPackageDeleteObserver_Stub; cdecl;
  end;

  [JavaSignature('android/content/pm/IPackageDeleteObserver$Stub')]
  JIPackageDeleteObserver_Stub = interface(JBinder)
    ['{3DF8CAF3-BB3E-4A71-81BE-E917637158D0}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIPackageDeleteObserver_Stub = class(TJavaGenericImport<JIPackageDeleteObserver_StubClass, JIPackageDeleteObserver_Stub>) end;

  JIPackageInstallObserverClass = interface(JIInterfaceClass)
    ['{BAB9E293-F546-482C-9950-87F3D856481C}']
  end;

  [JavaSignature('android/content/pm/IPackageInstallObserver')]
  JIPackageInstallObserver = interface(JIInterface)
    ['{4FE5B8E8-428D-4A4F-B5D0-0DC8B613FAB0}']
    procedure packageInstalled(string_: JString; i: Integer); cdecl;
  end;
  TJIPackageInstallObserver = class(TJavaGenericImport<JIPackageInstallObserverClass, JIPackageInstallObserver>) end;

  JIPackageInstallObserver_StubClass = interface(JBinderClass)
    ['{FB58403C-A69F-4CB1-86B3-FFF791395801}']
    {class} function asInterface(iBinder: JIBinder): JIPackageInstallObserver; cdecl;
    {class} function init: JIPackageInstallObserver_Stub; cdecl;
  end;

  [JavaSignature('android/content/pm/IPackageInstallObserver$Stub')]
  JIPackageInstallObserver_Stub = interface(JBinder)
    ['{035C7BDB-2E07-46E0-9F1C-E4FD71DFC633}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIPackageInstallObserver_Stub = class(TJavaGenericImport<JIPackageInstallObserver_StubClass, JIPackageInstallObserver_Stub>) end;

  JOnFinishObserverClass = interface(IJavaClass)
    ['{749E146D-04C7-4D44-998B-3511F5FD4E07}']
    {class} procedure packageDeleted(string_: JString; i: Integer); cdecl;
  end;

  [JavaSignature('android/content/pm/OnFinishObserver')]
  JOnFinishObserver = interface(IJavaInstance)
    ['{CED1A17D-E3EC-4F33-B96C-A4F2ECC00E78}']
    procedure packageInstalled(string_: JString; i: Integer); cdecl;
  end;
  TJOnFinishObserver = class(TJavaGenericImport<JOnFinishObserverClass, JOnFinishObserver>) end;

  JDeviceManagerClass = interface(JObjectClass)
    ['{2149D97D-A0D6-4C16-9E6D-787F8CA304AC}']
    {class} procedure enableStatusBar(b: Boolean); cdecl;
    {class} function getAdbStatus: Integer; cdecl;
    {class} function getDeviceId: JString; cdecl;
    {class} function getMemInfo: JBundle; cdecl;
    {class} function getShowScanButton: Boolean; cdecl;
    {class} function getTrafficInfo(l: Int64; l1: Int64; i: Integer): Int64; cdecl;
    {class} function getVpnState: Integer; cdecl;
    {class} function init: JDeviceManager; cdecl;
    {class} function isDeviceOwner(string_: JString): Boolean; cdecl;
    {class} procedure shutdown(b: Boolean); cdecl;
  end;

  [JavaSignature('android/device/DeviceManager')]
  JDeviceManager = interface(JObject)
    ['{C53C91AB-A738-4A3A-8FBC-839B737662E5}']
    procedure cleanDeviceOwner(string_: JString); cdecl;
    procedure clearLock; cdecl;
    procedure connectVPN(string_: JString; i: Integer; string_1: JString; string_2: JString; string_3: JString; string_4: JString; string_5: JString; string_6: JString; b: Boolean; string_7: JString; string_8: JString; string_9: JString; string_10: JString; string_11: JString; string_12: JString); cdecl;
    procedure controlAdb(b: Boolean); cdecl;
    procedure controlBT(b: Boolean); cdecl;
    procedure controlGPS(b: Boolean); cdecl;
    procedure controlHotpot(b: Boolean); cdecl;
    procedure controlMobileDate(b: Boolean); cdecl;
    procedure controlRecoverySystem(b: Boolean); cdecl;
    procedure controlScaner(i: Integer); cdecl;
    procedure controlUSB(b: Boolean); cdecl;
    procedure controlWifi(b: Boolean); cdecl;
    procedure controlWifiAP(b: Boolean); cdecl;
    function deleteAPN(string_: JString; string_1: TJavaObjectArray<JString>): Integer; cdecl;
    procedure disconnectVpn; cdecl;
    procedure enableAdb(b: Boolean); cdecl;
    procedure enableGPS(b: Boolean); cdecl;
    procedure enableHomeKey(b: Boolean); cdecl;
    procedure enableMTP(b: Boolean); cdecl;
    procedure enableMobileDate(b: Boolean); cdecl;
    procedure executeShellInput(string_: JString); cdecl;
    function executeShellToSetIptables(string_: JString): JString; cdecl;
    function getAllAppsMemUsage: Int64; cdecl;
    function getAllAppsPowerUsage: Double; cdecl;
    function getAllowInstallApps(i: Integer): JList; cdecl;
    function getAppMemUsage(string_: JString): Int64; cdecl;
    function getAppPowerUsage(string_: JString): Double; cdecl;
    function getAppTrafficInfo(string_: JString): Int64; cdecl;
    function getApplicationEnabledSetting(string_: JString): Boolean; cdecl;
    function getAppsUseTimes: JBundle; cdecl;
    function getAutoCallRecordPath: JString; cdecl;
    function getAutoPopInputMethod: Boolean; cdecl;
    function getAutoRunningApp: JList; cdecl;
    function getBTStatus: Integer; cdecl;
    function getBatteryInfo: JBundle; cdecl;
    function getCCZCBTWhiteList: JList; cdecl;
    function getCCZCPkgWhiteList: JList; cdecl;
    function getDeviceOwner: JString; cdecl;
    function getDockerState: Boolean; cdecl;
    function getEnableAutoCallRecord: Boolean; cdecl;
    function getFlashId: JString; cdecl;
    function getGPSStatus: Integer; cdecl;
    function getHideApplicationIcon: JList; cdecl;
    function getHideCallNumber: Boolean; cdecl;
    function getHomeKeyEnabled: Boolean; cdecl;
    function getHotpotStatus: Integer; cdecl;
    function getImei(i: Integer): JString; cdecl;
    function getKeyguardKeyEnabled: Boolean; cdecl;
    function getLeftKeyEnabled: Boolean; cdecl;
    function getLeftKeyguardEnabled: Boolean; cdecl;
    function getMobileDataStatus: Integer; cdecl;
    function getPTTDownAction: JString; cdecl;
    function getPTTUpAction: JString; cdecl;
    function getPackageInstaller: JList; cdecl;
    function getPowerUsage: JBundle; cdecl;
    function getRamId: JString; cdecl;
    function getRestrictionPolicy(string_: JString): Integer; cdecl;
    function getRightKeyEnabled: Boolean; cdecl;
    function getRightKeyguardEnabled: Boolean; cdecl;
    function getRomId: JString; cdecl;
    function getRunningAppProcesses: JList; cdecl;
    function getScanKeyPass: Boolean; cdecl;
    function getScannerStatus: Integer; cdecl;
    function getSettingProperty(string_: JString): JString; cdecl;
    function getSingleAppUseTimes(string_: JString): JBundle; cdecl;
    function getTIDSN: JString; cdecl;
    function getTopPackageName: JString; cdecl;
    function getUSBState: Boolean; cdecl;
    function getVersionCode: Integer; cdecl;
    function getWIFIStatus: Integer; cdecl;
    function getWhiteList: JString; cdecl;
    function getWifiWhiteList: JList; cdecl;
    function hasPackageName(string_: JString): Boolean; cdecl;
    function insertToWifiWhiteList(string_: JString): Boolean; cdecl;
    function installApplication(string_: JString): Boolean; cdecl; overload;
    function installApplication(string_: JString; b: Boolean; iPackageInstallObserver: JIPackageInstallObserver): Boolean; cdecl; overload;
    procedure isCCZCAllowBTOthers; cdecl;
    procedure isCCZCNotAllowBTOthers; cdecl;
    function isFeatureSupport(string_: JString): Boolean; cdecl;
    function queryAPN(string_: JString; string_1: TJavaObjectArray<JString>): JString; cdecl;
    function removeCCZCBTWhiteList(string_: JString): Boolean; cdecl;
    function removeCCZCPkgWhiteList(string_: JString): Boolean; cdecl;
    function removeDefaultLauncher(string_: JString): Boolean; cdecl;
    function removeFromWifiWhiteList(string_: JString): Boolean; cdecl;
    procedure resetPassword; cdecl;
    procedure saveLockPassword(string_: JString; i: Integer); cdecl;
    procedure saveLockPattern(string_: JString); cdecl;
    function setAPN(string_: JString; string_1: JString; string_2: JString; i: Integer; string_3: JString; string_4: JString; string_5: JString; string_6: JString; string_7: JString; string_8: JString; string_9: JString; i1: Integer; i2: Integer; string_10: JString; string_11: JString; i3: Integer; string_12: JString; b: Boolean): Boolean; cdecl;
    procedure setAirplaneMode(b: Boolean); cdecl;
    procedure setAllowInstallApps(string_: JString; i: Integer; i1: Integer); cdecl;
    procedure setApplicationEnabledSetting(string_: JString; b: Boolean); cdecl;
    procedure setAutoCallRecordPath(string_: JString); cdecl;
    procedure setAutoPopInputMethod(b: Boolean); cdecl;
    procedure setAutoRunningApp(componentName: JComponentName; i: Integer); cdecl;
    function setCurrentTime(l: Int64): Boolean; cdecl;
    function setDefaultLauncher(componentName: JComponentName): Boolean; cdecl;
    procedure setDeviceOwner(componentName: JComponentName); cdecl;
    procedure setEnableAutoCallRecord(b: Boolean); cdecl;
    procedure setHideApplicationIcon(string_: JString; i: Integer); cdecl;
    procedure setHideCallNumber(b: Boolean); cdecl;
    procedure setHomeKeyEnabled(b: Boolean); cdecl;
    procedure setKeyguardKeyEnabled(b: Boolean); cdecl;
    procedure setLeftKeyEnabled(b: Boolean); cdecl;
    procedure setLeftKeyguardEnabled(b: Boolean); cdecl;
    procedure setLocationEnabled(b: Boolean); cdecl;
    procedure setLockScreenEnabled(b: Boolean); cdecl;
    procedure setLockSreenNon; cdecl;
    procedure setLockTaskMode(string_: JString; b: Boolean); cdecl;
    procedure setLockTaskModePassword(string_: JString); cdecl;
    procedure setPTTDownAction(string_: JString); cdecl;
    procedure setPTTUpAction(string_: JString); cdecl;
    procedure setPackageInstaller(string_: JString; i: Integer); cdecl;
    procedure setProximityScanEnabled(b: Boolean); cdecl;
    function setRestrictionPolicy(string_: JString; i: Integer): Integer; cdecl;
    procedure setRightKeyEnabled(b: Boolean); cdecl;
    procedure setRightKeyguardEnabled(b: Boolean); cdecl;
    procedure setScanKeyPass(b: Boolean); cdecl;
    function setSettingProperty(string_: JString; string_1: JString): Boolean; cdecl;
    procedure setShowScanButton(b: Boolean); cdecl;
    procedure setSysProperties(string_: JString; string_1: JString); cdecl;
    procedure switchUSB(b: Boolean); cdecl;
    function uninstallApplication(string_: JString): Boolean; cdecl; overload;
    function uninstallApplication(string_: JString; b: Boolean; iPackageDeleteObserver: JIPackageDeleteObserver): Boolean; cdecl; overload;
    function whiteListAppRemove(string_: JString): Integer; cdecl;
    function whiteListReset: Boolean; cdecl;
    function whiteListsAppInsert(string_: JString): Integer; cdecl;
    procedure wipeData; cdecl; overload;
    procedure wipeData(i: Integer); cdecl; overload;
    function writeCCZCBTWhiteList(string_: JString): Boolean; cdecl;
    function writeCCZCPkgWhiteList(string_: JString): Boolean; cdecl;
  end;
  TJDeviceManager = class(TJavaGenericImport<JDeviceManagerClass, JDeviceManager>) end;

  JIccManagerClass = interface(JObjectClass)
    ['{E3BBB487-9F7D-494F-8495-3265074B868A}']
    {class} function IccOpen: Boolean; cdecl;
    {class} function IccSelect(c: Char): Integer; cdecl;
    {class} function ReadDataOf102Card(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    {class} function close: Integer; cdecl;
    {class} function deactivate: Integer; cdecl;
    {class} function init: JIccManager; cdecl;
    {class} function sle4436_verifyPassword(b: TJavaArray<Byte>): Integer; cdecl;
  end;

  [JavaSignature('android/device/IccManager')]
  JIccManager = interface(JObject)
    ['{65D7936A-87D5-428E-953F-766F3193BF81}']
    function CheckCard102: Boolean; cdecl;
    function CheckCard1608: Boolean; cdecl;
    function CheckCard24: Boolean; cdecl;
    function EarseEzData(i: Integer; i1: Integer; i2: Integer): Boolean; cdecl;
    function Get1608ConfigZoneData(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function IccAct(c: Char): TJavaArray<Byte>; cdecl;
    function IccAutoResponse(b: Byte): Integer; cdecl;
    function IccClose: Boolean; cdecl;
    function IccExapdu(b: TJavaArray<Byte>; c: Char): TJavaArray<Byte>; cdecl;
    function IccFound: TJavaArray<Byte>; cdecl;
    function IccSetBaudrate(i: Integer; i1: Integer): Boolean; cdecl;
    function ReadDataOf1608Card(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function ReadDataOf24Card(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function Update102UserKey(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function Verify102EzKey(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function Verify102UserKey(i: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function Verify1608ReadKey(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function Verify1608WriteKey(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function WriteDataOf102Card(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function WriteDataOf1608Card(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function WriteDataOf24Card(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function activate(b: TJavaArray<Byte>): Integer; cdecl;
    function apduTransmit(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function at88sc102_VerifyPassword(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function at88sc102_read(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function at88sc102_write(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function detect: Integer; cdecl;
    function getEzKey(i: Integer; i1: Integer; b: TJavaArray<Byte>): Boolean; cdecl;
    function getResponseEnable(b: Byte): Integer; cdecl;
    function open(b: Byte; b1: Byte; b2: Byte): Integer; cdecl;
    function request_Type(b: TJavaArray<Byte>): Integer; cdecl;
    function setETU(i: Integer): Integer; cdecl;
    function sle4428_password(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function sle4428_readMemory(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function sle4428_reset(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4428_writeMemory(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function sle4436_authenticate(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl;
    function sle4436_decValue(i: Integer): Integer; cdecl;
    function sle4436_readBit(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4436_readMemory(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function sle4436_regIncrease(i: Integer): Integer; cdecl;
    function sle4436_reloadByte: Integer; cdecl;
    function sle4436_reset(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4436_writeBit: Integer; cdecl;
    function sle4436_writeCarry(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer): Integer; cdecl;
    function sle4436_writeMemory(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function sle4442_changePassword(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4442_readErrorCounter(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4442_readMainMemory(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function sle4442_readProtectionMemory(i: Integer; i1: Integer): TJavaArray<Byte>; cdecl;
    function sle4442_reset(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4442_verifyPassword(b: TJavaArray<Byte>): Integer; cdecl;
    function sle4442_writeMainMemory(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function sle4442_writeProtectionMemory(i: Integer; b: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
  end;
  TJIccManager = class(TJavaGenericImport<JIccManagerClass, JIccManager>) end;

  JKeyMapManagerClass = interface(JObjectClass)
    ['{C9FC7AF3-72C3-4EFA-B9DA-7AE37453B43A}']
    {class} function _GetKEY_TYPE_KEYCODE: Integer; cdecl;
    {class} function _GetKEY_TYPE_STARTAC: Integer; cdecl;
    {class} procedure disableInterception(b: Boolean); cdecl;
    {class} function getKeytype(i: Integer): Integer; cdecl;
    {class} function hasKeyEntry(i: Integer): Boolean; cdecl;
    {class} function init(context: JContext): JKeyMapManager; cdecl;//Deprecated
    {class} property KEY_TYPE_KEYCODE: Integer read _GetKEY_TYPE_KEYCODE;
    {class} property KEY_TYPE_STARTAC: Integer read _GetKEY_TYPE_STARTAC;
  end;

  [JavaSignature('android/device/KeyMapManager')]
  JKeyMapManager = interface(JObject)
    ['{0E3C2CF0-45B0-460F-B61B-73E9B8CF91CC}']
    procedure delKeyEntry(i: Integer); cdecl;
    function getKeyAction(i: Integer): JString; cdecl;
    function getKeyCode(i: Integer): Integer; cdecl;
    function getKeyList: JList; cdecl;
    function getKeyMeta(i: Integer): Integer; cdecl;
    function isInterception: Boolean; cdecl;
    procedure mapKeyEntry(keyEvent: JKeyEvent; i: Integer; string_: JString); cdecl;
  end;
  TJKeyMapManager = class(TJavaGenericImport<JKeyMapManagerClass, JKeyMapManager>) end;

  JKeyMapManager_KeyEntryClass = interface(JObjectClass)
    ['{695ECC52-287F-4195-BA41-F6F1A5B340BB}']
    {class} function _Getkeycode: Integer; cdecl;
    {class} procedure _Setkeycode(Value: Integer); cdecl;
    {class} function _Getthis0: JKeyMapManager; cdecl;
    {class} function init(keyMapManager: JKeyMapManager): JKeyMapManager_KeyEntry; cdecl;//Deprecated
    {class} property keycode: Integer read _Getkeycode write _Setkeycode;
  end;

  [JavaSignature('android/device/KeyMapManager$KeyEntry')]
  JKeyMapManager_KeyEntry = interface(JObject)
    ['{F6AFDBD2-4092-4E75-AF19-5C9EA3DBB326}']
    function _Getaction: JString; cdecl;
    procedure _Setaction(Value: JString); cdecl;
    function _Getkeycode_meta: Integer; cdecl;
    procedure _Setkeycode_meta(Value: Integer); cdecl;
    function _Getscancode: Integer; cdecl;
    function _Gettype: Integer; cdecl;
    procedure _Settype(Value: Integer); cdecl;
    property action: JString read _Getaction write _Setaction;
    property keycode_meta: Integer read _Getkeycode_meta write _Setkeycode_meta;
    property scancode: Integer read _Getscancode;
    property &type: Integer read _Gettype write _Settype;
  end;
  TJKeyMapManager_KeyEntry = class(TJavaGenericImport<JKeyMapManager_KeyEntryClass, JKeyMapManager_KeyEntry>) end;

  JLedClass = interface(JEnumClass)
    ['{E0ED1973-1138-41CC-AD66-87E642FEBDC7}']
    {class} function _GetLED_1: JLed; cdecl;
    {class} function _GetLED_2: JLed; cdecl;
    {class} function _GetLED_3: JLed; cdecl;
    {class} function _GetLED_4: JLed; cdecl;
    {class} function _GetLED_5: JLed; cdecl;
    {class} function _GetLED_6: JLed; cdecl;
    {class} function _GetLED_7: JLed; cdecl;
    {class} function _GetLED_8: JLed; cdecl;
    {class} function valueOf(string_: JString): JLed; cdecl;
    {class} function values: TJavaObjectArray<JLed>; cdecl;//Deprecated
    {class} property LED_1: JLed read _GetLED_1;
    {class} property LED_2: JLed read _GetLED_2;
    {class} property LED_3: JLed read _GetLED_3;
    {class} property LED_4: JLed read _GetLED_4;
    {class} property LED_5: JLed read _GetLED_5;
    {class} property LED_6: JLed read _GetLED_6;
    {class} property LED_7: JLed read _GetLED_7;
    {class} property LED_8: JLed read _GetLED_8;
  end;

  [JavaSignature('android/device/Led')]
  JLed = interface(JEnum)
    ['{BB0AB48D-FD0F-4022-9092-8AE650AAE4DD}']
    function toInt: Integer; cdecl;
  end;
  TJLed = class(TJavaGenericImport<JLedClass, JLed>) end;

  JLedManagerClass = interface(JObjectClass)
    ['{179DB5A2-8066-48FE-8368-356A6C14DACD}']
    {class} procedure enableLedIndicator(led: JLed; b: Boolean); cdecl;
    {class} function init: JLedManager; cdecl;
  end;

  [JavaSignature('android/device/LedManager')]
  JLedManager = interface(JObject)
    ['{E0E12BBD-A1E9-4C63-8456-AE0E60B95ACC}']
  end;
  TJLedManager = class(TJavaGenericImport<JLedManagerClass, JLedManager>) end;

  JMagManagerClass = interface(JObjectClass)
    ['{1C95964D-8187-414E-B024-D4FDF0300521}']
    {class} function getAllStripInfo(b: TJavaArray<Byte>): Integer; cdecl;
    {class} function init: JMagManager; cdecl;
    {class} function open(i: Integer): JFileDescriptor; cdecl; overload;
  end;

  [JavaSignature('android/device/MagManager')]
  JMagManager = interface(JObject)
    ['{D7569AA4-275C-485B-B487-D076B553C571}']
    function checkCard: Integer; cdecl;
    function close: Integer; cdecl;
    function getEncryptStripInfo(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl; overload;
    function getEncryptStripInfo(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl; overload;
    function getSingleStripInfo(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function open: Integer; cdecl; overload;
  end;
  TJMagManager = class(TJavaGenericImport<JMagManagerClass, JMagManager>) end;

  JMaxqManagerClass = interface(JObjectClass)
    ['{99969D8C-696B-467C-92EC-E292333887CE}']
    {class} function _GetALGORITHM_CBC: Integer; cdecl;
    {class} function _GetALGORITHM_ECB: Integer; cdecl;
    {class} function _GetECRC16_DATA: Integer; cdecl;
    {class} function _GetEENCRYPTKEYS_NOTDOWLOAD: Integer; cdecl;
    {class} function _GetEHEAD_CMD: Integer; cdecl;
    {class} function _GetEKEYSNO_NOTFOUND: Integer; cdecl;
    {class} function _GetEKEYSNO_OVERRANGE: Integer; cdecl;
    {class} function _GetEKEYS_DOWNLOAD: Integer; cdecl;
    {class} function _GetEKEYS_EXISTS: Integer; cdecl;
    {class} function _GetEKEYS_NOTDOWNLOAD: Integer; cdecl;
    {class} function _GetEKEYS_OUTOFSPACE: Integer; cdecl;
    {class} function _GetEKEYS_RDORINIT: Integer; cdecl;
    {class} function _GetELENGTH_CMD: Integer; cdecl;
    {class} function _GetEMSG_FORMAT: Integer; cdecl;
    {class} function _GetEMSG_MAC: Integer; cdecl;
    {class} function _GetENOTSUP_ALGORITHM: Integer; cdecl;
    {class} function _GetENOTSUP_CMD: Integer; cdecl;
    {class} function _GetENOTSUP_FORMAT: Integer; cdecl;
    {class} function _GetENOTSUP_KEYSLENGTH: Integer; cdecl;
    {class} function _GetENOTSUP_MODE: Integer; cdecl;
    {class} function _GetENOTSUP_PINBLOCK_FORMAT: Integer; cdecl;
    {class} function _GetENOTSUP_SEPUSE: Integer; cdecl;
    {class} function _GetEPINBLOCK_CHAR: Integer; cdecl;
    {class} function _GetERESERVED_0X1D: Integer; cdecl;
    {class} function _GetESEPARATORLEN_CMD: Integer; cdecl;
    {class} function _GetESEPARATOR_CMD: Integer; cdecl;
    {class} function _GetEUSERNAME_LENGTH: Integer; cdecl;
    {class} function _GetEUSERNAME_VALUE: Integer; cdecl;
    {class} function _GetEUSER_PINBLOCK_LENGTH: Integer; cdecl;
    {class} function _GetEUSER_PINBLOCK_VALUE: Integer; cdecl;
    {class} function _GetS_OK: Integer; cdecl;
    {class} function clearKey(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    {class} function decryptData(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; i4: Integer; b1: TJavaArray<Byte>; i5: Integer; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    {class} function getPinBlockEx(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; string_: JString; l: Int64; string_1: JString; pedInputListener: JMaxqManager_PedInputListener): Integer; cdecl; overload;
    {class} function init: JMaxqManager; cdecl;//Deprecated
    {class} function open: Integer; cdecl;
    {class} property ALGORITHM_CBC: Integer read _GetALGORITHM_CBC;
    {class} property ALGORITHM_ECB: Integer read _GetALGORITHM_ECB;
    {class} property ECRC16_DATA: Integer read _GetECRC16_DATA;
    {class} property EENCRYPTKEYS_NOTDOWLOAD: Integer read _GetEENCRYPTKEYS_NOTDOWLOAD;
    {class} property EHEAD_CMD: Integer read _GetEHEAD_CMD;
    {class} property EKEYSNO_NOTFOUND: Integer read _GetEKEYSNO_NOTFOUND;
    {class} property EKEYSNO_OVERRANGE: Integer read _GetEKEYSNO_OVERRANGE;
    {class} property EKEYS_DOWNLOAD: Integer read _GetEKEYS_DOWNLOAD;
    {class} property EKEYS_EXISTS: Integer read _GetEKEYS_EXISTS;
    {class} property EKEYS_NOTDOWNLOAD: Integer read _GetEKEYS_NOTDOWNLOAD;
    {class} property EKEYS_OUTOFSPACE: Integer read _GetEKEYS_OUTOFSPACE;
    {class} property EKEYS_RDORINIT: Integer read _GetEKEYS_RDORINIT;
    {class} property ELENGTH_CMD: Integer read _GetELENGTH_CMD;
    {class} property EMSG_FORMAT: Integer read _GetEMSG_FORMAT;
    {class} property EMSG_MAC: Integer read _GetEMSG_MAC;
    {class} property ENOTSUP_ALGORITHM: Integer read _GetENOTSUP_ALGORITHM;
    {class} property ENOTSUP_CMD: Integer read _GetENOTSUP_CMD;
    {class} property ENOTSUP_FORMAT: Integer read _GetENOTSUP_FORMAT;
    {class} property ENOTSUP_KEYSLENGTH: Integer read _GetENOTSUP_KEYSLENGTH;
    {class} property ENOTSUP_MODE: Integer read _GetENOTSUP_MODE;
    {class} property ENOTSUP_PINBLOCK_FORMAT: Integer read _GetENOTSUP_PINBLOCK_FORMAT;
    {class} property ENOTSUP_SEPUSE: Integer read _GetENOTSUP_SEPUSE;
    {class} property EPINBLOCK_CHAR: Integer read _GetEPINBLOCK_CHAR;
    {class} property ERESERVED_0X1D: Integer read _GetERESERVED_0X1D;
    {class} property ESEPARATORLEN_CMD: Integer read _GetESEPARATORLEN_CMD;
    {class} property ESEPARATOR_CMD: Integer read _GetESEPARATOR_CMD;
    {class} property EUSERNAME_LENGTH: Integer read _GetEUSERNAME_LENGTH;
    {class} property EUSERNAME_VALUE: Integer read _GetEUSERNAME_VALUE;
    {class} property EUSER_PINBLOCK_LENGTH: Integer read _GetEUSER_PINBLOCK_LENGTH;
    {class} property EUSER_PINBLOCK_VALUE: Integer read _GetEUSER_PINBLOCK_VALUE;
    {class} property S_OK: Integer read _GetS_OK;
  end;

  [JavaSignature('android/device/MaxqManager')]
  JMaxqManager = interface(JObject)
    ['{26DCA3E2-0CD3-4360-A241-9809ED63FF21}']
    procedure addPedInputListener(pedInputListener: JMaxqManager_PedInputListener); cdecl;
    function calculateMAC(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function close: Integer; cdecl;
    function deleteKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function downloadKey(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function enableSuspend(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function encryptData(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; i4: Integer; b1: TJavaArray<Byte>; i5: Integer; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function encryptMagData(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    procedure endPinInputEvent(i: Integer); cdecl;
    function generateRandomData(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function getFirmwareVersion(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function getPinBlock(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; string_: JString; l: Int64; pedInputListener: JMaxqManager_PedInputListener): Integer; cdecl;
    function getPinBlockEx(bundle: JBundle; iInputActionListener: JIInputActionListener): Integer; cdecl; overload;
    function getPinBlockEx(bundle: JBundle; pedInputListener: JMaxqManager_PedInputListener): Integer; cdecl; overload;
    function getRTC(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function getStatus(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function loadKey(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    procedure removePedInputListener(pedInputListener: JMaxqManager_PedInputListener); cdecl;
    function setIndicatorLED(i: Integer; i1: Integer): Integer; cdecl;
    function setRTC(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function setSuspendTimeout(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
  end;
  TJMaxqManager = class(TJavaGenericImport<JMaxqManagerClass, JMaxqManager>) end;

  JMaxqManager_PedInputListenerClass = interface(IJavaClass)
    ['{626BF990-9EAF-4D22-A3D0-C59689E44ADA}']
  end;

  [JavaSignature('android/device/MaxqManager$PedInputListener')]
  JMaxqManager_PedInputListener = interface(IJavaInstance)
    ['{F42B2F5F-F366-4269-B575-ADF23A74AF30}']
    procedure onChanged(i: Integer; i1: Integer; b: TJavaArray<Byte>); cdecl;
  end;
  TJMaxqManager_PedInputListener = class(TJavaGenericImport<JMaxqManager_PedInputListenerClass, JMaxqManager_PedInputListener>) end;

  JPiccManagerClass = interface(JObjectClass)
    ['{743989E5-CC43-493E-B90B-97744C0B1305}']
    {class} function activate: Integer; cdecl;
    {class} function apduTransmit(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>): Integer; cdecl; overload;
    {class} function apduTransmitFelica(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): Integer; cdecl;
    {class} function init: JPiccManager; cdecl;
    {class} function open: Integer; cdecl;
    {class} function request(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
  end;

  [JavaSignature('android/device/PiccManager')]
  JPiccManager = interface(JObject)
    ['{2484F0DE-B961-4D0B-B186-8AC4ABE92EA1}']
    procedure SetTimeOutFelica(i: Integer); cdecl;
    function activateEx(b: TJavaArray<Byte>): Integer; cdecl;
    function activate_v2(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function antisel(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function antisel_v2(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function apduTransmit(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): Integer; cdecl; overload;
    function apduTransmit(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl; overload;
    function apduTransmit(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; i2: Integer): Integer; cdecl; overload;
    function close: Integer; cdecl;
    function deactivate(b: Byte): Integer; cdecl;
    function enableRATS(b: Byte): Integer; cdecl;
    function idcard_apduTransmit(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): Integer; cdecl;
    function idcard_init: Integer; cdecl;
    function m1_amount(i: Integer): Integer; cdecl;
    function m1_decrement(i: Integer; i1: Integer): Integer; cdecl;
    function m1_increment(i: Integer; i1: Integer): Integer; cdecl;
    function m1_init(i: Integer; i1: Integer): Integer; cdecl;
    function m1_keyAuth(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; b1: TJavaArray<Byte>): Integer; cdecl;
    function m1_readBlock(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function m1_restore(i: Integer): Integer; cdecl;
    function m1_transfer(i: Integer): Integer; cdecl;
    function m1_writeBlock(i: Integer; i1: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function mifareUlIncrCnt(b: Byte; i: Integer): Integer; cdecl;
    function mifareUlPageRead(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function mifareUlPageWrite(i: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function mifareUlReadCnt(b: Byte; i: TJavaArray<Integer>): Integer; cdecl;
    function primeCard_apduTransmit(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>): Integer; cdecl;
    function primeCard_init: Integer; cdecl;
    function request_norats(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function request_norats_v2(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function request_type(b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function request_type_v2(b: Byte; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function request_v2(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function reset_v2(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function transactionData(b: Byte; b1: TJavaArray<Byte>; i: Integer; b2: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
  end;
  TJPiccManager = class(TJavaGenericImport<JPiccManagerClass, JPiccManager>) end;

  JPrinterManagerClass = interface(JObjectClass)
    ['{119BB04F-4C74-4989-B803-DC4FB9D6EF4A}']
    {class} function _GetPRNSTS_BUSY: Integer; cdecl;
    {class} function _GetPRNSTS_ERR: Integer; cdecl;
    {class} function _GetPRNSTS_ERR_DRIVER: Integer; cdecl;
    {class} function _GetPRNSTS_OK: Integer; cdecl;
    {class} function _GetPRNSTS_OUT_OF_PAPER: Integer; cdecl;
    {class} function _GetPRNSTS_OVER_HEAT: Integer; cdecl;
    {class} function _GetPRNSTS_UNDER_VOLTAGE: Integer; cdecl;
    {class} function drawBitmap(bitmap: JBitmap; i: Integer; i1: Integer): Integer; cdecl;
    {class} function drawLine(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer): Integer; cdecl;
    {class} function init: JPrinterManager; cdecl;//Deprecated
    {class} function open: Integer; cdecl;
    {class} function prn_drawBarcode(string_: JString; i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    {class} procedure setSpeedLevel(i: Integer); cdecl;
    {class} property PRNSTS_BUSY: Integer read _GetPRNSTS_BUSY;
    {class} property PRNSTS_ERR: Integer read _GetPRNSTS_ERR;
    {class} property PRNSTS_ERR_DRIVER: Integer read _GetPRNSTS_ERR_DRIVER;
    {class} property PRNSTS_OK: Integer read _GetPRNSTS_OK;
    {class} property PRNSTS_OUT_OF_PAPER: Integer read _GetPRNSTS_OUT_OF_PAPER;
    {class} property PRNSTS_OVER_HEAT: Integer read _GetPRNSTS_OVER_HEAT;
    {class} property PRNSTS_UNDER_VOLTAGE: Integer read _GetPRNSTS_UNDER_VOLTAGE;
  end;

  [JavaSignature('android/device/PrinterManager')]
  JPrinterManager = interface(JObject)
    ['{AD050BDC-9746-42B9-97E1-54059ABC8A3E}']
    function clearPage: Integer; cdecl;
    function close: Integer; cdecl;
    function drawBarcode(string_: JString; i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; i5: Integer): Integer; cdecl;
    function drawBitmapEx(b: TJavaArray<Byte>; i: Integer; i1: Integer; i2: Integer; i3: Integer): Integer; cdecl;
    function drawText(string_: JString; i: Integer; i1: Integer; string_1: JString; i2: Integer; b: Boolean; b1: Boolean; i3: Integer): Integer; cdecl;
    function drawTextEx(string_: JString; i: Integer; i1: Integer; i2: Integer; i3: Integer; string_1: JString; i4: Integer; i5: Integer; i6: Integer; i7: Integer): Integer; cdecl;
    function getStatus: Integer; cdecl;
    function getTemp: Integer; cdecl;
    procedure paperFeed(i: Integer); cdecl;
    function printCachedPage: Integer; cdecl;
    function printPage(i: Integer): Integer; cdecl;
    function prn_clearPage: Integer; cdecl;
    procedure prn_close; cdecl;
    function prn_drawBitmap(bitmap: JBitmap; i: Integer; i1: Integer): Integer; cdecl;
    function prn_drawLine(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer): Integer; cdecl;
    function prn_drawText(string_: JString; i: Integer; i1: Integer; string_1: JString; i2: Integer; b: Boolean; b1: Boolean; i3: Integer): Integer; cdecl;
    function prn_drawTextEx(string_: JString; i: Integer; i1: Integer; i2: Integer; i3: Integer; string_1: JString; i4: Integer; i5: Integer; i6: Integer; i7: Integer): Integer; cdecl;
    function prn_getStatus: Integer; cdecl;
    function prn_getTemp: Integer; cdecl;
    function prn_open: Integer; cdecl;
    procedure prn_paperBack(i: Integer); cdecl;
    procedure prn_paperForWard(i: Integer); cdecl;
    function prn_printPage(i: Integer): Integer; cdecl;
    function prn_setBlack(i: Integer): Integer; cdecl;
    function prn_setSpeed(i: Integer): Integer; cdecl;
    function prn_setupPage(i: Integer; i1: Integer): Integer; cdecl;
    procedure setGrayLevel(i: Integer); cdecl;
    function setupPage(i: Integer; i1: Integer): Integer; cdecl;
  end;
  TJPrinterManager = class(TJavaGenericImport<JPrinterManagerClass, JPrinterManager>) end;

  JSEManagerClass = interface(JObjectClass)
    ['{157454CF-9D9E-4298-B3C4-5120A0E2A227}']
    {class} function _GetALGORITHM_CBC: Integer; cdecl;
    {class} function _GetALGORITHM_ECB: Integer; cdecl;
    {class} function _GetECRC16_DATA: Integer; cdecl;
    {class} function _GetEENCRYPTKEYS_NOTDOWLOAD: Integer; cdecl;
    {class} function _GetEHEAD_CMD: Integer; cdecl;
    {class} function _GetEKEYSNO_NOTFOUND: Integer; cdecl;
    {class} function _GetEKEYSNO_OVERRANGE: Integer; cdecl;
    {class} function _GetEKEYS_DOWNLOAD: Integer; cdecl;
    {class} function _GetEKEYS_EXISTS: Integer; cdecl;
    {class} function _GetEKEYS_NOTDOWNLOAD: Integer; cdecl;
    {class} function _GetEKEYS_OUTOFSPACE: Integer; cdecl;
    {class} function _GetEKEYS_RDORINIT: Integer; cdecl;
    {class} function _GetELENGTH_CMD: Integer; cdecl;
    {class} function _GetEMSG_FORMAT: Integer; cdecl;
    {class} function _GetEMSG_MAC: Integer; cdecl;
    {class} function _GetENOTSUP_ALGORITHM: Integer; cdecl;
    {class} function _GetENOTSUP_CMD: Integer; cdecl;
    {class} function _GetENOTSUP_FORMAT: Integer; cdecl;
    {class} function _GetENOTSUP_KEYSLENGTH: Integer; cdecl;
    {class} function _GetENOTSUP_MODE: Integer; cdecl;
    {class} function _GetENOTSUP_PINBLOCK_FORMAT: Integer; cdecl;
    {class} function _GetENOTSUP_SEPUSE: Integer; cdecl;
    {class} function _GetEPINBLOCK_CHAR: Integer; cdecl;
    {class} function _GetERESERVED_0X1D: Integer; cdecl;
    {class} function _GetESEPARATORLEN_CMD: Integer; cdecl;
    {class} function _GetESEPARATOR_CMD: Integer; cdecl;
    {class} function _GetEUSERNAME_LENGTH: Integer; cdecl;
    {class} function _GetEUSERNAME_VALUE: Integer; cdecl;
    {class} function _GetEUSER_PINBLOCK_LENGTH: Integer; cdecl;
    {class} function _GetEUSER_PINBLOCK_VALUE: Integer; cdecl;
    {class} function _GetS_OK: Integer; cdecl;
    {class} function downloadKeyDuk(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    {class} function encryptData(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; i4: Integer; b1: TJavaArray<Byte>; i5: Integer; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    {class} function encryptWithPEK(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; i3: TJavaArray<Integer>; b2: TJavaArray<Byte>; i4: TJavaArray<Integer>): Integer; cdecl;
    {class} function getStatus(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    {class} function init: JSEManager; cdecl;//Deprecated
    {class} function open: Integer; cdecl;
    {class} function setRTC(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    {class} property ALGORITHM_CBC: Integer read _GetALGORITHM_CBC;
    {class} property ALGORITHM_ECB: Integer read _GetALGORITHM_ECB;
    {class} property ECRC16_DATA: Integer read _GetECRC16_DATA;
    {class} property EENCRYPTKEYS_NOTDOWLOAD: Integer read _GetEENCRYPTKEYS_NOTDOWLOAD;
    {class} property EHEAD_CMD: Integer read _GetEHEAD_CMD;
    {class} property EKEYSNO_NOTFOUND: Integer read _GetEKEYSNO_NOTFOUND;
    {class} property EKEYSNO_OVERRANGE: Integer read _GetEKEYSNO_OVERRANGE;
    {class} property EKEYS_DOWNLOAD: Integer read _GetEKEYS_DOWNLOAD;
    {class} property EKEYS_EXISTS: Integer read _GetEKEYS_EXISTS;
    {class} property EKEYS_NOTDOWNLOAD: Integer read _GetEKEYS_NOTDOWNLOAD;
    {class} property EKEYS_OUTOFSPACE: Integer read _GetEKEYS_OUTOFSPACE;
    {class} property EKEYS_RDORINIT: Integer read _GetEKEYS_RDORINIT;
    {class} property ELENGTH_CMD: Integer read _GetELENGTH_CMD;
    {class} property EMSG_FORMAT: Integer read _GetEMSG_FORMAT;
    {class} property EMSG_MAC: Integer read _GetEMSG_MAC;
    {class} property ENOTSUP_ALGORITHM: Integer read _GetENOTSUP_ALGORITHM;
    {class} property ENOTSUP_CMD: Integer read _GetENOTSUP_CMD;
    {class} property ENOTSUP_FORMAT: Integer read _GetENOTSUP_FORMAT;
    {class} property ENOTSUP_KEYSLENGTH: Integer read _GetENOTSUP_KEYSLENGTH;
    {class} property ENOTSUP_MODE: Integer read _GetENOTSUP_MODE;
    {class} property ENOTSUP_PINBLOCK_FORMAT: Integer read _GetENOTSUP_PINBLOCK_FORMAT;
    {class} property ENOTSUP_SEPUSE: Integer read _GetENOTSUP_SEPUSE;
    {class} property EPINBLOCK_CHAR: Integer read _GetEPINBLOCK_CHAR;
    {class} property ERESERVED_0X1D: Integer read _GetERESERVED_0X1D;
    {class} property ESEPARATORLEN_CMD: Integer read _GetESEPARATORLEN_CMD;
    {class} property ESEPARATOR_CMD: Integer read _GetESEPARATOR_CMD;
    {class} property EUSERNAME_LENGTH: Integer read _GetEUSERNAME_LENGTH;
    {class} property EUSERNAME_VALUE: Integer read _GetEUSERNAME_VALUE;
    {class} property EUSER_PINBLOCK_LENGTH: Integer read _GetEUSER_PINBLOCK_LENGTH;
    {class} property EUSER_PINBLOCK_VALUE: Integer read _GetEUSER_PINBLOCK_VALUE;
    {class} property S_OK: Integer read _GetS_OK;
  end;

  [JavaSignature('android/device/SEManager')]
  JSEManager = interface(JObject)
    ['{29153039-4F07-4A7A-B9B6-0BDB6FA05450}']
    function DukptEncryptDataIV(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; b1: TJavaArray<Byte>; i4: Integer; b2: TJavaArray<Byte>; i5: TJavaArray<Integer>; b3: TJavaArray<Byte>; i6: TJavaArray<Integer>): Integer; cdecl;
    procedure GetDukptPinBlock(b: Byte; b1: Byte; b2: Byte; b3: Byte; b4: TJavaArray<Byte>; i: Integer; iInputActionListener: JIInputActionListener); cdecl;
    procedure addPedInputListener(pedInputListener: JSEManager_PedInputListener); cdecl;
    function calculateMAC(i: Integer; i1: Integer; i2: Integer; i3: Integer; b: TJavaArray<Byte>; i4: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function calculateMAC2(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; b: TJavaArray<Byte>; i5: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function calculateMACEx(b: Byte; b1: Byte; i: Integer; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; i1: TJavaArray<Integer>): Integer; cdecl;
    function calculateMACOfDUKPT(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: TJavaArray<Integer>; b2: TJavaArray<Byte>; i2: TJavaArray<Integer>): Integer; cdecl;
    function calculateMACOfDUKPTExtend(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: TJavaArray<Integer>; b2: TJavaArray<Byte>; i3: TJavaArray<Integer>): Integer; cdecl;
    function calculateMACOfDUKPTWithType(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; i3: TJavaArray<Integer>; b2: TJavaArray<Byte>; i4: TJavaArray<Integer>): Integer; cdecl;
    function clearKey(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function close: Integer; cdecl;
    function decryptData(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; i4: Integer; b1: TJavaArray<Byte>; i5: Integer; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function deleteKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function downloadKey(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>): Integer; cdecl;
    function downloadKeyDukpt(i: Integer; b: TJavaArray<Byte>; i1: Integer; b1: TJavaArray<Byte>; i2: Integer; b2: TJavaArray<Byte>; i3: Integer): Integer; cdecl;
    function downloadKeyEx(i: Integer; i1: Integer; i2: Integer; i3: Integer; i4: Integer; b: TJavaArray<Byte>; i5: Integer; i6: Integer; b1: TJavaArray<Byte>; i7: Integer; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>): Integer; cdecl;
    function downloadKeyOfPINBdk(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; b2: TJavaArray<Byte>; i2: Integer): Integer; cdecl;
    function downloadKeyOfTDKBdk(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer; b2: TJavaArray<Byte>; i2: Integer): Integer; cdecl;
    function enableSuspend(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function encryptDataDuk(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>): Integer; cdecl;
    function encryptDataTDK(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; i3: Integer; b1: TJavaArray<Byte>; i4: Integer; b2: TJavaArray<Byte>; i5: TJavaArray<Integer>): Integer; cdecl;
    procedure endPinInputEvent(i: Integer); cdecl;
    function generateRandomData(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function getCAStatus(b: TJavaArray<Byte>; i: TJavaArray<Integer>): Integer; cdecl;
    function getFirmwareVersion(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function getPinBlock(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; string_: JString; l: Int64; pedInputListener: JSEManager_PedInputListener): Integer; cdecl;
    function getPinBlockEx(bundle: JBundle; pedInputListener: JSEManager_PedInputListener): Integer; cdecl; overload;
    function getPinBlockEx(bundle: JBundle; iInputActionListener: JIInputActionListener): Integer; cdecl; overload;
    function getPinBlockEx(i: Integer; i1: Integer; b: TJavaArray<Byte>; i2: Integer; string_: JString; l: Int64; string_1: JString; pedInputListener: JSEManager_PedInputListener): Integer; cdecl; overload;
    function getRTC(b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function initPinPad(i: Integer): Integer; cdecl;
    function pciGetMac(b: Byte; i: Integer; b1: TJavaArray<Byte>; b2: TJavaArray<Byte>; b3: Byte): Integer; cdecl;
    function pciWriteMKeyse(i: Integer; b: Byte; b1: Byte; b2: Byte; b3: Byte; b4: TJavaArray<Byte>; b5: TJavaArray<Byte>; b6: TJavaArray<Byte>): Integer; cdecl;
    function pciWriteSKeyse(i: Integer; b: Byte; b1: Byte; b2: Byte; b3: TJavaArray<Byte>; b4: TJavaArray<Byte>; b5: Byte; b6: Byte): Integer; cdecl;
    function readCA(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: TJavaArray<Integer>): Integer; cdecl;
    function readCert(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>): Integer; cdecl;
    function readKey(i: Integer; i1: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    procedure removePedInputListener(pedInputListener: JSEManager_PedInputListener); cdecl;
    function setBeeper(i: Integer; i1: Integer; i2: Integer): Integer; cdecl;
    function setIndicatorLED(i: Integer; i1: Integer): Integer; cdecl;
    function setSuspendTimeout(i: Integer; b: TJavaArray<Byte>; b1: TJavaArray<Byte>): Integer; cdecl;
    function verifyCertSign(b: TJavaArray<Byte>; i: Integer; b1: TJavaArray<Byte>; i1: Integer): Integer; cdecl;
    function writeCA(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer): Integer; cdecl;
    function writeCert(i: Integer; i1: Integer; i2: Integer; b: TJavaArray<Byte>; i3: Integer): Integer; cdecl;
  end;
  TJSEManager = class(TJavaGenericImport<JSEManagerClass, JSEManager>) end;

  JSEManager_PedInputListenerClass = interface(IJavaClass)
    ['{42802FBF-45B3-49E9-8FD3-62010716A28C}']
  end;

  [JavaSignature('android/device/SEManager$PedInputListener')]
  JSEManager_PedInputListener = interface(IJavaInstance)
    ['{1077CB3D-E8FD-43BA-9024-DA7468C61713}']
    procedure onChanged(i: Integer; i1: Integer; b: TJavaArray<Byte>); cdecl;
  end;
  TJSEManager_PedInputListener = class(TJavaGenericImport<JSEManager_PedInputListenerClass, JSEManager_PedInputListener>) end;

  JSEManager_OperationPedInputListenerClass = interface(JSEManager_PedInputListenerClass)
    ['{7F9249F2-5EEA-4AF8-87A0-8AE4A558A1E5}']
  end;

  [JavaSignature('android/device/SEManager$OperationPedInputListener')]
  JSEManager_OperationPedInputListener = interface(JSEManager_PedInputListener)
    ['{20778868-7281-46D7-A3AF-BC9345175968}']
    procedure handleResult(i: Integer; i1: Integer; bundle: JBundle); cdecl;
  end;
  TJSEManager_OperationPedInputListener = class(TJavaGenericImport<JSEManager_OperationPedInputListenerClass, JSEManager_OperationPedInputListener>) end;

  JScanManagerClass = interface(JObjectClass)
    ['{0B706696-B87C-42B5-8014-3E32241EA7B1}']
    {class} function _GetACTION_DECODE: JString; cdecl;
    {class} function _GetBARCODE_LENGTH_TAG: JString; cdecl;
    {class} function _GetBARCODE_STRING_TAG: JString; cdecl;
    {class} function _GetBARCODE_TYPE_TAG: JString; cdecl;
    {class} function _GetDECODE_DATA_TAG: JString; cdecl;
    {class} function doOpTiConDefaultSet: Boolean; cdecl;
    {class} function getPropertyString(i: Integer): JString; cdecl;
    {class} function getScanerList: JMap; cdecl;
    {class} function getVibrateState: Boolean; cdecl;
    {class} function init: JScanManager; cdecl;
    {class} function setUnBeep: Boolean; cdecl;
    {class} function switchOutputMode(i: Integer): Boolean; cdecl;
    {class} function toHexString(string_: JString): JString; cdecl;
    {class} property ACTION_DECODE: JString read _GetACTION_DECODE;
    {class} property BARCODE_LENGTH_TAG: JString read _GetBARCODE_LENGTH_TAG;
    {class} property BARCODE_STRING_TAG: JString read _GetBARCODE_STRING_TAG;
    {class} property BARCODE_TYPE_TAG: JString read _GetBARCODE_TYPE_TAG;
    {class} property DECODE_DATA_TAG: JString read _GetDECODE_DATA_TAG;
  end;

  [JavaSignature('android/device/ScanManager')]
  JScanManager = interface(JObject)
    ['{44DDEAF6-E5D6-4FC7-A4E4-FB6F05EF7ECD}']
    function closeScanner: Boolean; cdecl;
    function doAck: Boolean; cdecl;
    function doNack(i: Integer): Boolean; cdecl;
    function doSymbolDefaultSet: Boolean; cdecl;
    procedure enableAllSymbologies(b: Boolean); cdecl;
    procedure enableSymbology(symbology: JSymbology; b: Boolean); cdecl;
    function getAppendState: Boolean; cdecl;
    function getBeepState: Boolean; cdecl;
    function getOutputMode: Integer; cdecl;
    function getOutputParameter(i: Integer): Integer; cdecl;
    function getParameterInts(i: TJavaArray<Integer>): TJavaArray<Integer>; cdecl;
    function getParameterString(i: TJavaArray<Integer>): TJavaObjectArray<JString>; cdecl;
    procedure getPropertyInts(i: TJavaArray<Integer>; i1: TJavaArray<Integer>); cdecl;
    function getScanPara(string_: JString): JString; cdecl;
    function getScannerState: Boolean; cdecl;
    function getScannerType: Integer; cdecl;
    function getTriggerLockState: Boolean; cdecl;
    function getTriggerMode: JTriggering; cdecl;
    function initOutputMode: Boolean; cdecl;
    function isSymbologyEnabled(symbology: JSymbology): Boolean; cdecl;
    function isSymbologySupported(symbology: JSymbology): Boolean; cdecl;
    function lockTrigger: Boolean; cdecl;
    function lockTriggler: Boolean; cdecl;
    function open(string_: JString; i: Integer; i1: Integer): JFileDescriptor; cdecl;
    function openScanner: Boolean; cdecl;
    function resetScannerParameters: Boolean; cdecl; overload;
    function resetScannerParameters(i: Integer): Boolean; cdecl; overload;
    function setAppend: Boolean; cdecl;
    function setBeep: Boolean; cdecl;
    function setOutputParameter(i: Integer; i1: Integer): Boolean; cdecl;
    function setParameterInts(i: TJavaArray<Integer>; i1: TJavaArray<Integer>): Integer; cdecl;
    function setParameterString(i: TJavaArray<Integer>; string_: TJavaObjectArray<JString>): Boolean; cdecl;
    function setPropertyInts(i: TJavaArray<Integer>; i1: TJavaArray<Integer>): Integer; cdecl;
    function setPropertyString(i: Integer; string_: JString): Boolean; cdecl;
    procedure setScannerType(i: Integer); cdecl;
    procedure setTriggerMode(triggering: JTriggering); cdecl;
    function setUnAppend: Boolean; cdecl;
    function setUnVibrate: Boolean; cdecl;
    function setVibrate: Boolean; cdecl;
    function startDecode: Boolean; cdecl;
    function stopDecode: Boolean; cdecl;
    function unlockTrigger: Boolean; cdecl;
    function unlockTriggler: Boolean; cdecl;
  end;
  TJScanManager = class(TJavaGenericImport<JScanManagerClass, JScanManager>) end;

  JSettingPropertyClass = interface(JObjectClass)
    ['{7895240F-AB16-4C06-B89B-05C0620AECA5}']
    {class} function _GetGLOBAL_adb_enabled: JString; cdecl;
    {class} function _GetGLOBAL_airplane_mode_on: JString; cdecl;
    {class} function _GetGLOBAL_airplane_mode_radios: JString; cdecl;
    {class} function _GetGLOBAL_airplane_mode_toggleable_radios: JString; cdecl;
    {class} function _GetGLOBAL_assisted_gps_configurable_list: JString; cdecl;
    {class} function _GetGLOBAL_assisted_gps_enabled: JString; cdecl;
    {class} function _GetGLOBAL_assisted_gps_supl_host: JString; cdecl;
    {class} function _GetGLOBAL_assisted_gps_supl_port: JString; cdecl;
    {class} function _GetGLOBAL_auto_pop_softinput: JString; cdecl;
    {class} function _GetGLOBAL_auto_time: JString; cdecl;
    {class} function _GetGLOBAL_auto_time_zone: JString; cdecl;
    {class} function _GetGLOBAL_bluetooth_on: JString; cdecl;
    {class} function _GetGLOBAL_call_auto_retry: JString; cdecl;
    {class} function _GetGLOBAL_captive_portal_detection_enabled: JString; cdecl;
    {class} function _GetGLOBAL_car_dock_sound: JString; cdecl;
    {class} function _GetGLOBAL_car_undock_sound: JString; cdecl;
    {class} function _GetGLOBAL_cdma_cell_broadcast_sms: JString; cdecl;
    {class} function _GetGLOBAL_data_roaming: JString; cdecl;
    {class} function _GetGLOBAL_data_roaming0: JString; cdecl;
    {class} function _GetGLOBAL_data_roaming1: JString; cdecl;
    {class} function _GetGLOBAL_data_roaming2: JString; cdecl;
    {class} function _GetGLOBAL_default_install_location: JString; cdecl;
    {class} function _GetGLOBAL_desk_dock_sound: JString; cdecl;
    {class} function _GetGLOBAL_desk_undock_sound: JString; cdecl;
    {class} function _GetGLOBAL_device_name: JString; cdecl;
    {class} function _GetGLOBAL_device_provisioned: JString; cdecl;
    {class} function _GetGLOBAL_dock_audio_media_enabled: JString; cdecl;
    {class} function _GetGLOBAL_dock_sounds_enabled: JString; cdecl;
    {class} function _GetGLOBAL_emergency_tone: JString; cdecl;
    {class} function _GetGLOBAL_guest_user_enabled: JString; cdecl;
    {class} function _GetGLOBAL_heads_up_notifications_enabled: JString; cdecl;
    {class} function _GetGLOBAL_hide_carrier_network_settings: JString; cdecl;
    {class} function _GetGLOBAL_lock_sound: JString; cdecl;
    {class} function _GetGLOBAL_low_battery_sound: JString; cdecl;
    {class} function _GetGLOBAL_low_battery_sound_timeout: JString; cdecl;
    {class} function _GetGLOBAL_mobile_data: JString; cdecl;
    {class} function _GetGLOBAL_mobile_data0: JString; cdecl;
    {class} function _GetGLOBAL_mobile_data1: JString; cdecl;
    {class} function _GetGLOBAL_mobile_data2: JString; cdecl;
    {class} function _GetGLOBAL_mode_ringer: JString; cdecl;
    {class} function _GetGLOBAL_multi_sim_data_call: JString; cdecl;
    {class} function _GetGLOBAL_multi_sim_default_sub: JString; cdecl;
    {class} function _GetGLOBAL_multi_sim_sms: JString; cdecl;
    {class} function _GetGLOBAL_multi_sim_voice_call: JString; cdecl;
    {class} function _GetGLOBAL_netstats_enabled: JString; cdecl;
    {class} function _GetGLOBAL_network_scoring_provisioned: JString; cdecl;
    {class} function _GetGLOBAL_package_verifier_enable: JString; cdecl;
    {class} function _GetGLOBAL_power_sounds_enabled: JString; cdecl;
    {class} function _GetGLOBAL_preferred_network_mode: JString; cdecl;
    {class} function _GetGLOBAL_preferred_network_mode_default: JString; cdecl;
    {class} function _GetGLOBAL_quick_settings: JString; cdecl;
    {class} function _GetGLOBAL_set_install_location: JString; cdecl;
    {class} function _GetGLOBAL_stay_on_while_plugged_in: JString; cdecl;
    {class} function _GetGLOBAL_subscription_mode: JString; cdecl;
    {class} function _GetGLOBAL_trusted_sound: JString; cdecl;
    {class} function _GetGLOBAL_unlock_sound: JString; cdecl;
    {class} function _GetGLOBAL_usb_mass_storage_enabled: JString; cdecl;
    {class} function _GetGLOBAL_wifi_display_on: JString; cdecl;
    {class} function _GetGLOBAL_wifi_max_dhcp_retry_count: JString; cdecl;
    {class} function _GetGLOBAL_wifi_networks_available_notification_on: JString; cdecl;
    {class} function _GetGLOBAL_wifi_on: JString; cdecl;
    {class} function _GetGLOBAL_wifi_scan_always_enabled: JString; cdecl;
    {class} function _GetGLOBAL_wifi_sleep_policy: JString; cdecl;
    {class} function _GetGLOBAL_wifi_watchdog_on: JString; cdecl;
    {class} function _GetGLOBAL_wireless_charging_started_sound: JString; cdecl;
    {class} function _GetSECURE_accessibility_display_inversion_enabled: JString; cdecl;
    {class} function _GetSECURE_accessibility_display_magnification_auto_update: JString; cdecl;
    {class} function _GetSECURE_accessibility_display_magnification_enabled: JString; cdecl;
    {class} function _GetSECURE_accessibility_display_magnification_scale: JString; cdecl;
    {class} function _GetSECURE_accessibility_enabled: JString; cdecl;
    {class} function _GetSECURE_accessibility_script_injection: JString; cdecl;
    {class} function _GetSECURE_accessibility_script_injection_url: JString; cdecl;
    {class} function _GetSECURE_accessibility_web_content_key_bindings: JString; cdecl;
    {class} function _GetSECURE_android_id: JString; cdecl;
    {class} function _GetSECURE_backup_enabled: JString; cdecl;
    {class} function _GetSECURE_backup_transport: JString; cdecl;
    {class} function _GetSECURE_bluetooth_addr_valid: JString; cdecl;
    {class} function _GetSECURE_bluetooth_address: JString; cdecl;
    {class} function _GetSECURE_bluetooth_name: JString; cdecl;
    {class} function _GetSECURE_default_input_method: JString; cdecl;
    {class} function _GetSECURE_enabled_accessibility_services: JString; cdecl;
    {class} function _GetSECURE_enabled_input_methods: JString; cdecl;
    {class} function _GetSECURE_enhLocationServices_on: JString; cdecl;
    {class} function _GetSECURE_immersive_mode_confirmations: JString; cdecl;
    {class} function _GetSECURE_input_methods_subtype_history: JString; cdecl;
    {class} function _GetSECURE_install_non_market_apps: JString; cdecl;
    {class} function _GetSECURE_location_providers_allowed: JString; cdecl;
    {class} function _GetSECURE_lock_screen_allow_private_notifications: JString; cdecl;
    {class} function _GetSECURE_lock_screen_owner_info_enabled: JString; cdecl;
    {class} function _GetSECURE_lock_screen_show_notifications: JString; cdecl;
    {class} function _GetSECURE_lockscreen_disabled: JString; cdecl;
    {class} function _GetSECURE_long_press_timeout: JString; cdecl;
    {class} function _GetSECURE_mock_location: JString; cdecl;
    {class} function _GetSECURE_mount_play_not_snd: JString; cdecl;
    {class} function _GetSECURE_mount_ums_autostart: JString; cdecl;
    {class} function _GetSECURE_mount_ums_notify_enabled: JString; cdecl;
    {class} function _GetSECURE_mount_ums_prompt: JString; cdecl;
    {class} function _GetSECURE_screensaver_activate_on_dock: JString; cdecl;
    {class} function _GetSECURE_screensaver_activate_on_sleep: JString; cdecl;
    {class} function _GetSECURE_screensaver_components: JString; cdecl;
    {class} function _GetSECURE_screensaver_default_component: JString; cdecl;
    {class} function _GetSECURE_screensaver_enabled: JString; cdecl;
    {class} function _GetSECURE_selected_input_method_subtype: JString; cdecl;
    {class} function _GetSECURE_selected_spell_checker: JString; cdecl;
    {class} function _GetSECURE_selected_spell_checker_subtype: JString; cdecl;
    {class} function _GetSECURE_show_ime_with_hard_keyboard: JString; cdecl;
    {class} function _GetSECURE_show_note_about_notification_hiding: JString; cdecl;
    {class} function _GetSECURE_sleep_timeout: JString; cdecl;
    {class} function _GetSECURE_sms_default_application: JString; cdecl;
    {class} function _GetSECURE_speak_password: JString; cdecl;
    {class} function _GetSECURE_touch_exploration_enabled: JString; cdecl;
    {class} function _GetSECURE_trust_agents_initialized: JString; cdecl;
    {class} function _GetSECURE_user_setup_complete: JString; cdecl;
    {class} function _GetSECURE_wake_gesture_enabled: JString; cdecl;
    {class} function _GetSYSTEM_accelerometer_rotation: JString; cdecl;
    {class} function _GetSYSTEM_alarm_alert: JString; cdecl;
    {class} function _GetSYSTEM_apn: JString; cdecl;
    {class} function _GetSYSTEM_default_disable_voice_call: JString; cdecl;
    {class} function _GetSYSTEM_device_nfc: JString; cdecl;
    {class} function _GetSYSTEM_dim_screen: JString; cdecl;
    {class} function _GetSYSTEM_disable_airplane: JString; cdecl;
    {class} function _GetSYSTEM_disable_bluetooth: JString; cdecl;
    {class} function _GetSYSTEM_disable_communication: JString; cdecl;
    {class} function _GetSYSTEM_disable_data: JString; cdecl;
    {class} function _GetSYSTEM_disable_gps: JString; cdecl;
    {class} function _GetSYSTEM_disable_set_date: JString; cdecl;
    {class} function _GetSYSTEM_disable_wifi: JString; cdecl;
    {class} function _GetSYSTEM_display_fn_status: JString; cdecl;
    {class} function _GetSYSTEM_dtmf_tone: JString; cdecl;
    {class} function _GetSYSTEM_dtmf_tone_type: JString; cdecl;
    {class} function _GetSYSTEM_haptic_feedback_enabled: JString; cdecl;
    {class} function _GetSYSTEM_hearing_aid: JString; cdecl;
    {class} function _GetSYSTEM_lockscreen_sounds_enabled: JString; cdecl;
    {class} function _GetSYSTEM_mode_ringer_streams_affected: JString; cdecl;
    {class} function _GetSYSTEM_mute_streams_affected: JString; cdecl;
    {class} function _GetSYSTEM_notification_light_pulse: JString; cdecl;
    {class} function _GetSYSTEM_notification_sound: JString; cdecl;
    {class} function _GetSYSTEM_pointer_speed: JString; cdecl;
    {class} function _GetSYSTEM_preinstall_classname: JString; cdecl;
    {class} function _GetSYSTEM_preinstall_packagename: JString; cdecl;
    {class} function _GetSYSTEM_screen_brightness: JString; cdecl;
    {class} function _GetSYSTEM_screen_brightness_mode: JString; cdecl;
    {class} function _GetSYSTEM_screen_off_timeout: JString; cdecl;
    {class} function _GetSYSTEM_sound_effects_enabled: JString; cdecl;
    {class} function _GetSYSTEM_status_bar_show_battery_percent: JString; cdecl;
    {class} function _GetSYSTEM_streaming_max_udp_port: JString; cdecl;
    {class} function _GetSYSTEM_streaming_min_udp_port: JString; cdecl;
    {class} function _GetSYSTEM_time_12_24: JString; cdecl;
    {class} function _GetSYSTEM_transition_animation_scale: JString; cdecl;
    {class} function _GetSYSTEM_tty_mode: JString; cdecl;
    {class} function _GetSYSTEM_vibrate_when_ringing: JString; cdecl;
    {class} function _GetSYSTEM_volume_alarm: JString; cdecl;
    {class} function _GetSYSTEM_volume_alarm_speaker: JString; cdecl;
    {class} function _GetSYSTEM_volume_bluetooth_sco: JString; cdecl;
    {class} function _GetSYSTEM_volume_music: JString; cdecl;
    {class} function _GetSYSTEM_volume_music_speaker: JString; cdecl;
    {class} function _GetSYSTEM_volume_notification: JString; cdecl;
    {class} function _GetSYSTEM_volume_ring: JString; cdecl;
    {class} function _GetSYSTEM_volume_ring_speaker: JString; cdecl;
    {class} function _GetSYSTEM_volume_system: JString; cdecl;
    {class} function _GetSYSTEM_volume_voice: JString; cdecl;
    {class} function _GetSYSTEM_window_animation_scale: JString; cdecl;
    {class} function _GetUI_accessibility_auto_pop_input: JString; cdecl;
    {class} function _GetUI_accessibility_captioning: JString; cdecl;
    {class} function _GetUI_accessibility_daltonizer: JString; cdecl;
    {class} function _GetUI_accessibility_enable_global_gesture: JString; cdecl;
    {class} function _GetUI_accessibility_magnification: JString; cdecl;
    {class} function _GetUI_accessibility_select_long_press: JString; cdecl;
    {class} function _GetUI_accessibility_services: JString; cdecl;
    {class} function _GetUI_accessibility_toggle_high: JString; cdecl;
    {class} function _GetUI_accessibility_toggle_inversion: JString; cdecl;
    {class} function _GetUI_accessibility_toggle_large: JString; cdecl;
    {class} function _GetUI_accessibility_toggle_power_button: JString; cdecl;
    {class} function _GetUI_accessibility_toggle_speak_password: JString; cdecl;
    {class} function _GetUI_accessibility_tts_settings: JString; cdecl;
    {class} function _GetUI_baseband_version: JString; cdecl;
    {class} function _GetUI_build_number: JString; cdecl;
    {class} function _GetUI_device_32550: JString; cdecl;
    {class} function _GetUI_device_container: JString; cdecl;
    {class} function _GetUI_device_device_model: JString; cdecl;
    {class} function _GetUI_device_sn: JString; cdecl;
    {class} function _GetUI_device_status_info: JString; cdecl;
    {class} function _GetUI_device_system_update: JString; cdecl;
    {class} function _GetUI_disable_about: JString; cdecl;
    {class} function _GetUI_disable_accessibility: JString; cdecl;
    {class} function _GetUI_disable_account: JString; cdecl;
    {class} function _GetUI_disable_airplane: JString; cdecl;
    {class} function _GetUI_disable_application: JString; cdecl;
    {class} function _GetUI_disable_battery: JString; cdecl;
    {class} function _GetUI_disable_bluetooth: JString; cdecl;
    {class} function _GetUI_disable_button: JString; cdecl;
    {class} function _GetUI_disable_cast: JString; cdecl;
    {class} function _GetUI_disable_data: JString; cdecl;
    {class} function _GetUI_disable_date_time: JString; cdecl;
    {class} function _GetUI_disable_display_settings: JString; cdecl;
    {class} function _GetUI_disable_flashlight: JString; cdecl;
    {class} function _GetUI_disable_gps: JString; cdecl;
    {class} function _GetUI_disable_hotspot: JString; cdecl;
    {class} function _GetUI_disable_language: JString; cdecl;
    {class} function _GetUI_disable_notifications: JString; cdecl;
    {class} function _GetUI_disable_print: JString; cdecl;
    {class} function _GetUI_disable_privacy: JString; cdecl;
    {class} function _GetUI_disable_profile: JString; cdecl;
    {class} function _GetUI_disable_scanner: JString; cdecl;
    {class} function _GetUI_disable_security: JString; cdecl;
    {class} function _GetUI_disable_sms_application: JString; cdecl;
    {class} function _GetUI_disable_status_bar: JString; cdecl;
    {class} function _GetUI_disable_storage: JString; cdecl;
    {class} function _GetUI_disable_user_settings: JString; cdecl;
    {class} function _GetUI_disable_vpn: JString; cdecl;
    {class} function _GetUI_disable_wifi: JString; cdecl;
    {class} function _GetUI_disable_wireless: JString; cdecl;
    {class} function _GetUI_display_blur_effect: JString; cdecl;
    {class} function _GetUI_display_brightness: JString; cdecl;
    {class} function _GetUI_display_font_size: JString; cdecl;
    {class} function _GetUI_display_screen_saver: JString; cdecl;
    {class} function _GetUI_display_sleep: JString; cdecl;
    {class} function _GetUI_display_wallpaper: JString; cdecl;
    {class} function _GetUI_firmware_version: JString; cdecl;
    {class} function _GetUI_input_keyboard: JString; cdecl;
    {class} function _GetUI_input_language: JString; cdecl;
    {class} function _GetUI_input_pointer: JString; cdecl;
    {class} function _GetUI_input_spell_checkers: JString; cdecl;
    {class} function _GetUI_input_user_dictionary: JString; cdecl;
    {class} function _GetUI_input_voice_category: JString; cdecl;
    {class} function _GetUI_kernel_version: JString; cdecl;
    {class} function _GetUI_key_poweraction: JString; cdecl;
    {class} function _GetUI_key_rebootaction: JString; cdecl;
    {class} function _GetUI_key_silentmodeaction: JString; cdecl;
    {class} function _GetUI_key_system_home_answer_call: JString; cdecl;
    {class} function _GetUI_key_system_home_double_tap: JString; cdecl;
    {class} function _GetUI_key_system_home_long_press: JString; cdecl;
    {class} function _GetUI_key_system_kaymap_settings: JString; cdecl;
    {class} function _GetUI_key_system_menu_long_press: JString; cdecl;
    {class} function _GetUI_key_system_menu_press: JString; cdecl;
    {class} function _GetUI_key_system_power: JString; cdecl;
    {class} function _GetUI_notification_access: JString; cdecl;
    {class} function _GetUI_notification_app: JString; cdecl;
    {class} function _GetUI_notification_bluetooth: JString; cdecl;
    {class} function _GetUI_notification_screen: JString; cdecl;
    {class} function _GetUI_security_app: JString; cdecl;
    {class} function _GetUI_security_credential_storage_type: JString; cdecl;
    {class} function _GetUI_security_credentials_install: JString; cdecl;
    {class} function _GetUI_security_credentials_reset: JString; cdecl;
    {class} function _GetUI_security_lockscreen_shortcuts: JString; cdecl;
    {class} function _GetUI_security_manage_device_admin: JString; cdecl;
    {class} function _GetUI_security_manage_trust_agents: JString; cdecl;
    {class} function _GetUI_security_owner_info: JString; cdecl;
    {class} function _GetUI_security_patch: JString; cdecl;
    {class} function _GetUI_security_show_password: JString; cdecl;
    {class} function _GetUI_security_toggle_install_applications: JString; cdecl;
    {class} function _GetUI_security_trusted_credentials: JString; cdecl;
    {class} function _GetUI_security_unlock_set_or_change: JString; cdecl;
    {class} function _GetUI_security_usage_access: JString; cdecl;
    {class} function _GetUI_sound_alarm_volume: JString; cdecl;
    {class} function _GetUI_sound_media_volume: JString; cdecl;
    {class} function _GetUI_sound_notification_ringtone: JString; cdecl;
    {class} function _GetUI_sound_other: JString; cdecl;
    {class} function _GetUI_sound_phone_ringtone: JString; cdecl;
    {class} function _GetUI_sound_ring_volume: JString; cdecl;
    {class} function _GetUI_sound_vibrate_when_ringing: JString; cdecl;
    {class} function _GetUI_sound_zen_mode: JString; cdecl;
    {class} function _GetUI_time_24_hour: JString; cdecl;
    {class} function _GetUI_time_auto_time: JString; cdecl;
    {class} function _GetUI_time_auto_zone: JString; cdecl;
    {class} function _GetUI_time_date: JString; cdecl;
    {class} function _GetUI_time_time: JString; cdecl;
    {class} function _GetUI_time_timezone: JString; cdecl;
    {class} function init: JSettingProperty; cdecl;//Deprecated
    {class} property GLOBAL_adb_enabled: JString read _GetGLOBAL_adb_enabled;
    {class} property GLOBAL_airplane_mode_on: JString read _GetGLOBAL_airplane_mode_on;
    {class} property GLOBAL_airplane_mode_radios: JString read _GetGLOBAL_airplane_mode_radios;
    {class} property GLOBAL_airplane_mode_toggleable_radios: JString read _GetGLOBAL_airplane_mode_toggleable_radios;
    {class} property GLOBAL_assisted_gps_configurable_list: JString read _GetGLOBAL_assisted_gps_configurable_list;
    {class} property GLOBAL_assisted_gps_enabled: JString read _GetGLOBAL_assisted_gps_enabled;
    {class} property GLOBAL_assisted_gps_supl_host: JString read _GetGLOBAL_assisted_gps_supl_host;
    {class} property GLOBAL_assisted_gps_supl_port: JString read _GetGLOBAL_assisted_gps_supl_port;
    {class} property GLOBAL_auto_pop_softinput: JString read _GetGLOBAL_auto_pop_softinput;
    {class} property GLOBAL_auto_time: JString read _GetGLOBAL_auto_time;
    {class} property GLOBAL_auto_time_zone: JString read _GetGLOBAL_auto_time_zone;
    {class} property GLOBAL_bluetooth_on: JString read _GetGLOBAL_bluetooth_on;
    {class} property GLOBAL_call_auto_retry: JString read _GetGLOBAL_call_auto_retry;
    {class} property GLOBAL_captive_portal_detection_enabled: JString read _GetGLOBAL_captive_portal_detection_enabled;
    {class} property GLOBAL_car_dock_sound: JString read _GetGLOBAL_car_dock_sound;
    {class} property GLOBAL_car_undock_sound: JString read _GetGLOBAL_car_undock_sound;
    {class} property GLOBAL_cdma_cell_broadcast_sms: JString read _GetGLOBAL_cdma_cell_broadcast_sms;
    {class} property GLOBAL_data_roaming: JString read _GetGLOBAL_data_roaming;
    {class} property GLOBAL_data_roaming0: JString read _GetGLOBAL_data_roaming0;
    {class} property GLOBAL_data_roaming1: JString read _GetGLOBAL_data_roaming1;
    {class} property GLOBAL_data_roaming2: JString read _GetGLOBAL_data_roaming2;
    {class} property GLOBAL_default_install_location: JString read _GetGLOBAL_default_install_location;
    {class} property GLOBAL_desk_dock_sound: JString read _GetGLOBAL_desk_dock_sound;
    {class} property GLOBAL_desk_undock_sound: JString read _GetGLOBAL_desk_undock_sound;
    {class} property GLOBAL_device_name: JString read _GetGLOBAL_device_name;
    {class} property GLOBAL_device_provisioned: JString read _GetGLOBAL_device_provisioned;
    {class} property GLOBAL_dock_audio_media_enabled: JString read _GetGLOBAL_dock_audio_media_enabled;
    {class} property GLOBAL_dock_sounds_enabled: JString read _GetGLOBAL_dock_sounds_enabled;
    {class} property GLOBAL_emergency_tone: JString read _GetGLOBAL_emergency_tone;
    {class} property GLOBAL_guest_user_enabled: JString read _GetGLOBAL_guest_user_enabled;
    {class} property GLOBAL_heads_up_notifications_enabled: JString read _GetGLOBAL_heads_up_notifications_enabled;
    {class} property GLOBAL_hide_carrier_network_settings: JString read _GetGLOBAL_hide_carrier_network_settings;
    {class} property GLOBAL_lock_sound: JString read _GetGLOBAL_lock_sound;
    {class} property GLOBAL_low_battery_sound: JString read _GetGLOBAL_low_battery_sound;
    {class} property GLOBAL_low_battery_sound_timeout: JString read _GetGLOBAL_low_battery_sound_timeout;
    {class} property GLOBAL_mobile_data: JString read _GetGLOBAL_mobile_data;
    {class} property GLOBAL_mobile_data0: JString read _GetGLOBAL_mobile_data0;
    {class} property GLOBAL_mobile_data1: JString read _GetGLOBAL_mobile_data1;
    {class} property GLOBAL_mobile_data2: JString read _GetGLOBAL_mobile_data2;
    {class} property GLOBAL_mode_ringer: JString read _GetGLOBAL_mode_ringer;
    {class} property GLOBAL_multi_sim_data_call: JString read _GetGLOBAL_multi_sim_data_call;
    {class} property GLOBAL_multi_sim_default_sub: JString read _GetGLOBAL_multi_sim_default_sub;
    {class} property GLOBAL_multi_sim_sms: JString read _GetGLOBAL_multi_sim_sms;
    {class} property GLOBAL_multi_sim_voice_call: JString read _GetGLOBAL_multi_sim_voice_call;
    {class} property GLOBAL_netstats_enabled: JString read _GetGLOBAL_netstats_enabled;
    {class} property GLOBAL_network_scoring_provisioned: JString read _GetGLOBAL_network_scoring_provisioned;
    {class} property GLOBAL_package_verifier_enable: JString read _GetGLOBAL_package_verifier_enable;
    {class} property GLOBAL_power_sounds_enabled: JString read _GetGLOBAL_power_sounds_enabled;
    {class} property GLOBAL_preferred_network_mode: JString read _GetGLOBAL_preferred_network_mode;
    {class} property GLOBAL_preferred_network_mode_default: JString read _GetGLOBAL_preferred_network_mode_default;
    {class} property GLOBAL_quick_settings: JString read _GetGLOBAL_quick_settings;
    {class} property GLOBAL_set_install_location: JString read _GetGLOBAL_set_install_location;
    {class} property GLOBAL_stay_on_while_plugged_in: JString read _GetGLOBAL_stay_on_while_plugged_in;
    {class} property GLOBAL_subscription_mode: JString read _GetGLOBAL_subscription_mode;
    {class} property GLOBAL_trusted_sound: JString read _GetGLOBAL_trusted_sound;
    {class} property GLOBAL_unlock_sound: JString read _GetGLOBAL_unlock_sound;
    {class} property GLOBAL_usb_mass_storage_enabled: JString read _GetGLOBAL_usb_mass_storage_enabled;
    {class} property GLOBAL_wifi_display_on: JString read _GetGLOBAL_wifi_display_on;
    {class} property GLOBAL_wifi_max_dhcp_retry_count: JString read _GetGLOBAL_wifi_max_dhcp_retry_count;
    {class} property GLOBAL_wifi_networks_available_notification_on: JString read _GetGLOBAL_wifi_networks_available_notification_on;
    {class} property GLOBAL_wifi_on: JString read _GetGLOBAL_wifi_on;
    {class} property GLOBAL_wifi_scan_always_enabled: JString read _GetGLOBAL_wifi_scan_always_enabled;
    {class} property GLOBAL_wifi_sleep_policy: JString read _GetGLOBAL_wifi_sleep_policy;
    {class} property GLOBAL_wifi_watchdog_on: JString read _GetGLOBAL_wifi_watchdog_on;
    {class} property GLOBAL_wireless_charging_started_sound: JString read _GetGLOBAL_wireless_charging_started_sound;
    {class} property SECURE_accessibility_display_inversion_enabled: JString read _GetSECURE_accessibility_display_inversion_enabled;
    {class} property SECURE_accessibility_display_magnification_auto_update: JString read _GetSECURE_accessibility_display_magnification_auto_update;
    {class} property SECURE_accessibility_display_magnification_enabled: JString read _GetSECURE_accessibility_display_magnification_enabled;
    {class} property SECURE_accessibility_display_magnification_scale: JString read _GetSECURE_accessibility_display_magnification_scale;
    {class} property SECURE_accessibility_enabled: JString read _GetSECURE_accessibility_enabled;
    {class} property SECURE_accessibility_script_injection: JString read _GetSECURE_accessibility_script_injection;
    {class} property SECURE_accessibility_script_injection_url: JString read _GetSECURE_accessibility_script_injection_url;
    {class} property SECURE_accessibility_web_content_key_bindings: JString read _GetSECURE_accessibility_web_content_key_bindings;
    {class} property SECURE_android_id: JString read _GetSECURE_android_id;
    {class} property SECURE_backup_enabled: JString read _GetSECURE_backup_enabled;
    {class} property SECURE_backup_transport: JString read _GetSECURE_backup_transport;
    {class} property SECURE_bluetooth_addr_valid: JString read _GetSECURE_bluetooth_addr_valid;
    {class} property SECURE_bluetooth_address: JString read _GetSECURE_bluetooth_address;
    {class} property SECURE_bluetooth_name: JString read _GetSECURE_bluetooth_name;
    {class} property SECURE_default_input_method: JString read _GetSECURE_default_input_method;
    {class} property SECURE_enabled_accessibility_services: JString read _GetSECURE_enabled_accessibility_services;
    {class} property SECURE_enabled_input_methods: JString read _GetSECURE_enabled_input_methods;
    {class} property SECURE_enhLocationServices_on: JString read _GetSECURE_enhLocationServices_on;
    {class} property SECURE_immersive_mode_confirmations: JString read _GetSECURE_immersive_mode_confirmations;
    {class} property SECURE_input_methods_subtype_history: JString read _GetSECURE_input_methods_subtype_history;
    {class} property SECURE_install_non_market_apps: JString read _GetSECURE_install_non_market_apps;
    {class} property SECURE_location_providers_allowed: JString read _GetSECURE_location_providers_allowed;
    {class} property SECURE_lock_screen_allow_private_notifications: JString read _GetSECURE_lock_screen_allow_private_notifications;
    {class} property SECURE_lock_screen_owner_info_enabled: JString read _GetSECURE_lock_screen_owner_info_enabled;
    {class} property SECURE_lock_screen_show_notifications: JString read _GetSECURE_lock_screen_show_notifications;
    {class} property SECURE_lockscreen_disabled: JString read _GetSECURE_lockscreen_disabled;
    {class} property SECURE_long_press_timeout: JString read _GetSECURE_long_press_timeout;
    {class} property SECURE_mock_location: JString read _GetSECURE_mock_location;
    {class} property SECURE_mount_play_not_snd: JString read _GetSECURE_mount_play_not_snd;
    {class} property SECURE_mount_ums_autostart: JString read _GetSECURE_mount_ums_autostart;
    {class} property SECURE_mount_ums_notify_enabled: JString read _GetSECURE_mount_ums_notify_enabled;
    {class} property SECURE_mount_ums_prompt: JString read _GetSECURE_mount_ums_prompt;
    {class} property SECURE_screensaver_activate_on_dock: JString read _GetSECURE_screensaver_activate_on_dock;
    {class} property SECURE_screensaver_activate_on_sleep: JString read _GetSECURE_screensaver_activate_on_sleep;
    {class} property SECURE_screensaver_components: JString read _GetSECURE_screensaver_components;
    {class} property SECURE_screensaver_default_component: JString read _GetSECURE_screensaver_default_component;
    {class} property SECURE_screensaver_enabled: JString read _GetSECURE_screensaver_enabled;
    {class} property SECURE_selected_input_method_subtype: JString read _GetSECURE_selected_input_method_subtype;
    {class} property SECURE_selected_spell_checker: JString read _GetSECURE_selected_spell_checker;
    {class} property SECURE_selected_spell_checker_subtype: JString read _GetSECURE_selected_spell_checker_subtype;
    {class} property SECURE_show_ime_with_hard_keyboard: JString read _GetSECURE_show_ime_with_hard_keyboard;
    {class} property SECURE_show_note_about_notification_hiding: JString read _GetSECURE_show_note_about_notification_hiding;
    {class} property SECURE_sleep_timeout: JString read _GetSECURE_sleep_timeout;
    {class} property SECURE_sms_default_application: JString read _GetSECURE_sms_default_application;
    {class} property SECURE_speak_password: JString read _GetSECURE_speak_password;
    {class} property SECURE_touch_exploration_enabled: JString read _GetSECURE_touch_exploration_enabled;
    {class} property SECURE_trust_agents_initialized: JString read _GetSECURE_trust_agents_initialized;
    {class} property SECURE_user_setup_complete: JString read _GetSECURE_user_setup_complete;
    {class} property SECURE_wake_gesture_enabled: JString read _GetSECURE_wake_gesture_enabled;
    {class} property SYSTEM_accelerometer_rotation: JString read _GetSYSTEM_accelerometer_rotation;
    {class} property SYSTEM_alarm_alert: JString read _GetSYSTEM_alarm_alert;
    {class} property SYSTEM_apn: JString read _GetSYSTEM_apn;
    {class} property SYSTEM_default_disable_voice_call: JString read _GetSYSTEM_default_disable_voice_call;
    {class} property SYSTEM_device_nfc: JString read _GetSYSTEM_device_nfc;
    {class} property SYSTEM_dim_screen: JString read _GetSYSTEM_dim_screen;
    {class} property SYSTEM_disable_airplane: JString read _GetSYSTEM_disable_airplane;
    {class} property SYSTEM_disable_bluetooth: JString read _GetSYSTEM_disable_bluetooth;
    {class} property SYSTEM_disable_communication: JString read _GetSYSTEM_disable_communication;
    {class} property SYSTEM_disable_data: JString read _GetSYSTEM_disable_data;
    {class} property SYSTEM_disable_gps: JString read _GetSYSTEM_disable_gps;
    {class} property SYSTEM_disable_set_date: JString read _GetSYSTEM_disable_set_date;
    {class} property SYSTEM_disable_wifi: JString read _GetSYSTEM_disable_wifi;
    {class} property SYSTEM_display_fn_status: JString read _GetSYSTEM_display_fn_status;
    {class} property SYSTEM_dtmf_tone: JString read _GetSYSTEM_dtmf_tone;
    {class} property SYSTEM_dtmf_tone_type: JString read _GetSYSTEM_dtmf_tone_type;
    {class} property SYSTEM_haptic_feedback_enabled: JString read _GetSYSTEM_haptic_feedback_enabled;
    {class} property SYSTEM_hearing_aid: JString read _GetSYSTEM_hearing_aid;
    {class} property SYSTEM_lockscreen_sounds_enabled: JString read _GetSYSTEM_lockscreen_sounds_enabled;
    {class} property SYSTEM_mode_ringer_streams_affected: JString read _GetSYSTEM_mode_ringer_streams_affected;
    {class} property SYSTEM_mute_streams_affected: JString read _GetSYSTEM_mute_streams_affected;
    {class} property SYSTEM_notification_light_pulse: JString read _GetSYSTEM_notification_light_pulse;
    {class} property SYSTEM_notification_sound: JString read _GetSYSTEM_notification_sound;
    {class} property SYSTEM_pointer_speed: JString read _GetSYSTEM_pointer_speed;
    {class} property SYSTEM_preinstall_classname: JString read _GetSYSTEM_preinstall_classname;
    {class} property SYSTEM_preinstall_packagename: JString read _GetSYSTEM_preinstall_packagename;
    {class} property SYSTEM_screen_brightness: JString read _GetSYSTEM_screen_brightness;
    {class} property SYSTEM_screen_brightness_mode: JString read _GetSYSTEM_screen_brightness_mode;
    {class} property SYSTEM_screen_off_timeout: JString read _GetSYSTEM_screen_off_timeout;
    {class} property SYSTEM_sound_effects_enabled: JString read _GetSYSTEM_sound_effects_enabled;
    {class} property SYSTEM_status_bar_show_battery_percent: JString read _GetSYSTEM_status_bar_show_battery_percent;
    {class} property SYSTEM_streaming_max_udp_port: JString read _GetSYSTEM_streaming_max_udp_port;
    {class} property SYSTEM_streaming_min_udp_port: JString read _GetSYSTEM_streaming_min_udp_port;
    {class} property SYSTEM_time_12_24: JString read _GetSYSTEM_time_12_24;
    {class} property SYSTEM_transition_animation_scale: JString read _GetSYSTEM_transition_animation_scale;
    {class} property SYSTEM_tty_mode: JString read _GetSYSTEM_tty_mode;
    {class} property SYSTEM_vibrate_when_ringing: JString read _GetSYSTEM_vibrate_when_ringing;
    {class} property SYSTEM_volume_alarm: JString read _GetSYSTEM_volume_alarm;
    {class} property SYSTEM_volume_alarm_speaker: JString read _GetSYSTEM_volume_alarm_speaker;
    {class} property SYSTEM_volume_bluetooth_sco: JString read _GetSYSTEM_volume_bluetooth_sco;
    {class} property SYSTEM_volume_music: JString read _GetSYSTEM_volume_music;
    {class} property SYSTEM_volume_music_speaker: JString read _GetSYSTEM_volume_music_speaker;
    {class} property SYSTEM_volume_notification: JString read _GetSYSTEM_volume_notification;
    {class} property SYSTEM_volume_ring: JString read _GetSYSTEM_volume_ring;
    {class} property SYSTEM_volume_ring_speaker: JString read _GetSYSTEM_volume_ring_speaker;
    {class} property SYSTEM_volume_system: JString read _GetSYSTEM_volume_system;
    {class} property SYSTEM_volume_voice: JString read _GetSYSTEM_volume_voice;
    {class} property SYSTEM_window_animation_scale: JString read _GetSYSTEM_window_animation_scale;
    {class} property UI_accessibility_auto_pop_input: JString read _GetUI_accessibility_auto_pop_input;
    {class} property UI_accessibility_captioning: JString read _GetUI_accessibility_captioning;
    {class} property UI_accessibility_daltonizer: JString read _GetUI_accessibility_daltonizer;
    {class} property UI_accessibility_enable_global_gesture: JString read _GetUI_accessibility_enable_global_gesture;
    {class} property UI_accessibility_magnification: JString read _GetUI_accessibility_magnification;
    {class} property UI_accessibility_select_long_press: JString read _GetUI_accessibility_select_long_press;
    {class} property UI_accessibility_services: JString read _GetUI_accessibility_services;
    {class} property UI_accessibility_toggle_high: JString read _GetUI_accessibility_toggle_high;
    {class} property UI_accessibility_toggle_inversion: JString read _GetUI_accessibility_toggle_inversion;
    {class} property UI_accessibility_toggle_large: JString read _GetUI_accessibility_toggle_large;
    {class} property UI_accessibility_toggle_power_button: JString read _GetUI_accessibility_toggle_power_button;
    {class} property UI_accessibility_toggle_speak_password: JString read _GetUI_accessibility_toggle_speak_password;
    {class} property UI_accessibility_tts_settings: JString read _GetUI_accessibility_tts_settings;
    {class} property UI_baseband_version: JString read _GetUI_baseband_version;
    {class} property UI_build_number: JString read _GetUI_build_number;
    {class} property UI_device_32550: JString read _GetUI_device_32550;
    {class} property UI_device_container: JString read _GetUI_device_container;
    {class} property UI_device_device_model: JString read _GetUI_device_device_model;
    {class} property UI_device_sn: JString read _GetUI_device_sn;
    {class} property UI_device_status_info: JString read _GetUI_device_status_info;
    {class} property UI_device_system_update: JString read _GetUI_device_system_update;
    {class} property UI_disable_about: JString read _GetUI_disable_about;
    {class} property UI_disable_accessibility: JString read _GetUI_disable_accessibility;
    {class} property UI_disable_account: JString read _GetUI_disable_account;
    {class} property UI_disable_airplane: JString read _GetUI_disable_airplane;
    {class} property UI_disable_application: JString read _GetUI_disable_application;
    {class} property UI_disable_battery: JString read _GetUI_disable_battery;
    {class} property UI_disable_bluetooth: JString read _GetUI_disable_bluetooth;
    {class} property UI_disable_button: JString read _GetUI_disable_button;
    {class} property UI_disable_cast: JString read _GetUI_disable_cast;
    {class} property UI_disable_data: JString read _GetUI_disable_data;
    {class} property UI_disable_date_time: JString read _GetUI_disable_date_time;
    {class} property UI_disable_display_settings: JString read _GetUI_disable_display_settings;
    {class} property UI_disable_flashlight: JString read _GetUI_disable_flashlight;
    {class} property UI_disable_gps: JString read _GetUI_disable_gps;
    {class} property UI_disable_hotspot: JString read _GetUI_disable_hotspot;
    {class} property UI_disable_language: JString read _GetUI_disable_language;
    {class} property UI_disable_notifications: JString read _GetUI_disable_notifications;
    {class} property UI_disable_print: JString read _GetUI_disable_print;
    {class} property UI_disable_privacy: JString read _GetUI_disable_privacy;
    {class} property UI_disable_profile: JString read _GetUI_disable_profile;
    {class} property UI_disable_scanner: JString read _GetUI_disable_scanner;
    {class} property UI_disable_security: JString read _GetUI_disable_security;
    {class} property UI_disable_sms_application: JString read _GetUI_disable_sms_application;
    {class} property UI_disable_status_bar: JString read _GetUI_disable_status_bar;
    {class} property UI_disable_storage: JString read _GetUI_disable_storage;
    {class} property UI_disable_user_settings: JString read _GetUI_disable_user_settings;
    {class} property UI_disable_vpn: JString read _GetUI_disable_vpn;
    {class} property UI_disable_wifi: JString read _GetUI_disable_wifi;
    {class} property UI_disable_wireless: JString read _GetUI_disable_wireless;
    {class} property UI_display_blur_effect: JString read _GetUI_display_blur_effect;
    {class} property UI_display_brightness: JString read _GetUI_display_brightness;
    {class} property UI_display_font_size: JString read _GetUI_display_font_size;
    {class} property UI_display_screen_saver: JString read _GetUI_display_screen_saver;
    {class} property UI_display_sleep: JString read _GetUI_display_sleep;
    {class} property UI_display_wallpaper: JString read _GetUI_display_wallpaper;
    {class} property UI_firmware_version: JString read _GetUI_firmware_version;
    {class} property UI_input_keyboard: JString read _GetUI_input_keyboard;
    {class} property UI_input_language: JString read _GetUI_input_language;
    {class} property UI_input_pointer: JString read _GetUI_input_pointer;
    {class} property UI_input_spell_checkers: JString read _GetUI_input_spell_checkers;
    {class} property UI_input_user_dictionary: JString read _GetUI_input_user_dictionary;
    {class} property UI_input_voice_category: JString read _GetUI_input_voice_category;
    {class} property UI_kernel_version: JString read _GetUI_kernel_version;
    {class} property UI_key_poweraction: JString read _GetUI_key_poweraction;
    {class} property UI_key_rebootaction: JString read _GetUI_key_rebootaction;
    {class} property UI_key_silentmodeaction: JString read _GetUI_key_silentmodeaction;
    {class} property UI_key_system_home_answer_call: JString read _GetUI_key_system_home_answer_call;
    {class} property UI_key_system_home_double_tap: JString read _GetUI_key_system_home_double_tap;
    {class} property UI_key_system_home_long_press: JString read _GetUI_key_system_home_long_press;
    {class} property UI_key_system_kaymap_settings: JString read _GetUI_key_system_kaymap_settings;
    {class} property UI_key_system_menu_long_press: JString read _GetUI_key_system_menu_long_press;
    {class} property UI_key_system_menu_press: JString read _GetUI_key_system_menu_press;
    {class} property UI_key_system_power: JString read _GetUI_key_system_power;
    {class} property UI_notification_access: JString read _GetUI_notification_access;
    {class} property UI_notification_app: JString read _GetUI_notification_app;
    {class} property UI_notification_bluetooth: JString read _GetUI_notification_bluetooth;
    {class} property UI_notification_screen: JString read _GetUI_notification_screen;
    {class} property UI_security_app: JString read _GetUI_security_app;
    {class} property UI_security_credential_storage_type: JString read _GetUI_security_credential_storage_type;
    {class} property UI_security_credentials_install: JString read _GetUI_security_credentials_install;
    {class} property UI_security_credentials_reset: JString read _GetUI_security_credentials_reset;
    {class} property UI_security_lockscreen_shortcuts: JString read _GetUI_security_lockscreen_shortcuts;
    {class} property UI_security_manage_device_admin: JString read _GetUI_security_manage_device_admin;
    {class} property UI_security_manage_trust_agents: JString read _GetUI_security_manage_trust_agents;
    {class} property UI_security_owner_info: JString read _GetUI_security_owner_info;
    {class} property UI_security_patch: JString read _GetUI_security_patch;
    {class} property UI_security_show_password: JString read _GetUI_security_show_password;
    {class} property UI_security_toggle_install_applications: JString read _GetUI_security_toggle_install_applications;
    {class} property UI_security_trusted_credentials: JString read _GetUI_security_trusted_credentials;
    {class} property UI_security_unlock_set_or_change: JString read _GetUI_security_unlock_set_or_change;
    {class} property UI_security_usage_access: JString read _GetUI_security_usage_access;
    {class} property UI_sound_alarm_volume: JString read _GetUI_sound_alarm_volume;
    {class} property UI_sound_media_volume: JString read _GetUI_sound_media_volume;
    {class} property UI_sound_notification_ringtone: JString read _GetUI_sound_notification_ringtone;
    {class} property UI_sound_other: JString read _GetUI_sound_other;
    {class} property UI_sound_phone_ringtone: JString read _GetUI_sound_phone_ringtone;
    {class} property UI_sound_ring_volume: JString read _GetUI_sound_ring_volume;
    {class} property UI_sound_vibrate_when_ringing: JString read _GetUI_sound_vibrate_when_ringing;
    {class} property UI_sound_zen_mode: JString read _GetUI_sound_zen_mode;
    {class} property UI_time_24_hour: JString read _GetUI_time_24_hour;
    {class} property UI_time_auto_time: JString read _GetUI_time_auto_time;
    {class} property UI_time_auto_zone: JString read _GetUI_time_auto_zone;
    {class} property UI_time_date: JString read _GetUI_time_date;
    {class} property UI_time_time: JString read _GetUI_time_time;
    {class} property UI_time_timezone: JString read _GetUI_time_timezone;
  end;

  [JavaSignature('android/device/SettingProperty')]
  JSettingProperty = interface(JObject)
    ['{B487F05F-F6DA-4222-A3F4-B90CB27ED94A}']
  end;
  TJSettingProperty = class(TJavaGenericImport<JSettingPropertyClass, JSettingProperty>) end;

  JUFSManagerClass = interface(JObjectClass)
    ['{A6866A9D-B21E-4158-B628-346A3D738BB4}']
    {class} function init: JUFSManager; cdecl;
    {class} function setBootanimation(string_: JString): Integer; cdecl;
    {class} function setCustomizeApp(string_: JString; string_1: TJavaObjectArray<JString>): Integer; cdecl;
  end;

  [JavaSignature('android/device/UFSManager')]
  JUFSManager = interface(JObject)
    ['{5D8898D5-479E-4DE7-94B3-2542098D3369}']
    function setBootanimationstate(i: Integer): Integer; cdecl;
    function setSettingsXml(string_: JString): Integer; cdecl;
    function setSplash(string_: JString): Integer; cdecl;
  end;
  TJUFSManager = class(TJavaGenericImport<JUFSManagerClass, JUFSManager>) end;

  Jconfiguration_ConstantsClass = interface(JObjectClass)
    ['{39BA0DE0-C58C-4813-B9C6-D728A5227AA9}']
    {class} function init: Jconfiguration_Constants; cdecl;
  end;

  [JavaSignature('android/device/scanner/configuration/Constants')]
  Jconfiguration_Constants = interface(JObject)
    ['{B7DD1669-ACBA-4CC0-B52E-364983643F3A}']
  end;
  TJconfiguration_Constants = class(TJavaGenericImport<Jconfiguration_ConstantsClass, Jconfiguration_Constants>) end;

  JConstants_SymbologyClass = interface(JObjectClass)
    ['{33500C42-DCAA-46EC-82E0-E20E90460527}']
    {class} function _GetAZTEC: Integer; cdecl;
    {class} function _GetCHINESE25: Integer; cdecl;
    {class} function _GetCODABAR: Integer; cdecl;
    {class} function _GetCODE11: Integer; cdecl;
    {class} function _GetCODE128: Integer; cdecl;
    {class} function _GetCODE32: Integer; cdecl;
    {class} function _GetCODE39: Integer; cdecl;
    {class} function _GetCODE93: Integer; cdecl;
    {class} function _GetCOMPOSITE_CC_AB: Integer; cdecl;
    {class} function _GetCOMPOSITE_CC_C: Integer; cdecl;
    {class} function _GetCOMPOSITE_TLC39: Integer; cdecl;
    {class} function _GetDATAMATRIX: Integer; cdecl;
    {class} function _GetDISCRETE25: Integer; cdecl;
    {class} function _GetDOTCODE: Integer; cdecl;
    {class} function _GetEAN13: Integer; cdecl;
    {class} function _GetEAN8: Integer; cdecl;
    {class} function _GetGS1_128: Integer; cdecl;
    {class} function _GetGS1_14: Integer; cdecl;
    {class} function _GetGS1_EXP: Integer; cdecl;
    {class} function _GetGS1_LIMIT: Integer; cdecl;
    {class} function _GetHANXIN: Integer; cdecl;
    {class} function _GetINTERLEAVED25: Integer; cdecl;
    {class} function _GetMATRIX25: Integer; cdecl;
    {class} function _GetMAXICODE: Integer; cdecl;
    {class} function _GetMICROPDF417: Integer; cdecl;
    {class} function _GetMSI: Integer; cdecl;
    {class} function _GetNONE: Integer; cdecl;
    {class} function _GetPDF417: Integer; cdecl;
    {class} function _GetPOSTAL_4STATE: Integer; cdecl;
    {class} function _GetPOSTAL_AUSTRALIAN: Integer; cdecl;
    {class} function _GetPOSTAL_JAPAN: Integer; cdecl;
    {class} function _GetPOSTAL_KIX: Integer; cdecl;
    {class} function _GetPOSTAL_PLANET: Integer; cdecl;
    {class} function _GetPOSTAL_POSTNET: Integer; cdecl;
    {class} function _GetPOSTAL_ROYALMAIL: Integer; cdecl;
    {class} function _GetPOSTAL_UPUFICS: Integer; cdecl;
    {class} function _GetQRCODE: Integer; cdecl;
    {class} function _GetRESERVED_13: Integer; cdecl;
    {class} function _GetRESERVED_15: Integer; cdecl;
    {class} function _GetRESERVED_16: Integer; cdecl;
    {class} function _GetRESERVED_20: Integer; cdecl;
    {class} function _GetRESERVED_21: Integer; cdecl;
    {class} function _GetRESERVED_27: Integer; cdecl;
    {class} function _GetRESERVED_28: Integer; cdecl;
    {class} function _GetRESERVED_30: Integer; cdecl;
    {class} function _GetRESERVED_33: Integer; cdecl;
    {class} function _GetRESERVED_6: Integer; cdecl;
    {class} function _GetTRIOPTIC: Integer; cdecl;
    {class} function _GetUPCA: Integer; cdecl;
    {class} function _GetUPCE: Integer; cdecl;
    {class} function _GetUPCE1: Integer; cdecl;
    {class} function init: JConstants_Symbology; cdecl;//Deprecated
    {class} property AZTEC: Integer read _GetAZTEC;
    {class} property CHINESE25: Integer read _GetCHINESE25;
    {class} property CODABAR: Integer read _GetCODABAR;
    {class} property CODE11: Integer read _GetCODE11;
    {class} property CODE128: Integer read _GetCODE128;
    {class} property CODE32: Integer read _GetCODE32;
    {class} property CODE39: Integer read _GetCODE39;
    {class} property CODE93: Integer read _GetCODE93;
    {class} property COMPOSITE_CC_AB: Integer read _GetCOMPOSITE_CC_AB;
    {class} property COMPOSITE_CC_C: Integer read _GetCOMPOSITE_CC_C;
    {class} property COMPOSITE_TLC39: Integer read _GetCOMPOSITE_TLC39;
    {class} property DATAMATRIX: Integer read _GetDATAMATRIX;
    {class} property DISCRETE25: Integer read _GetDISCRETE25;
    {class} property DOTCODE: Integer read _GetDOTCODE;
    {class} property EAN13: Integer read _GetEAN13;
    {class} property EAN8: Integer read _GetEAN8;
    {class} property GS1_128: Integer read _GetGS1_128;
    {class} property GS1_14: Integer read _GetGS1_14;
    {class} property GS1_EXP: Integer read _GetGS1_EXP;
    {class} property GS1_LIMIT: Integer read _GetGS1_LIMIT;
    {class} property HANXIN: Integer read _GetHANXIN;
    {class} property INTERLEAVED25: Integer read _GetINTERLEAVED25;
    {class} property MATRIX25: Integer read _GetMATRIX25;
    {class} property MAXICODE: Integer read _GetMAXICODE;
    {class} property MICROPDF417: Integer read _GetMICROPDF417;
    {class} property MSI: Integer read _GetMSI;
    {class} property NONE: Integer read _GetNONE;
    {class} property PDF417: Integer read _GetPDF417;
    {class} property POSTAL_4STATE: Integer read _GetPOSTAL_4STATE;
    {class} property POSTAL_AUSTRALIAN: Integer read _GetPOSTAL_AUSTRALIAN;
    {class} property POSTAL_JAPAN: Integer read _GetPOSTAL_JAPAN;
    {class} property POSTAL_KIX: Integer read _GetPOSTAL_KIX;
    {class} property POSTAL_PLANET: Integer read _GetPOSTAL_PLANET;
    {class} property POSTAL_POSTNET: Integer read _GetPOSTAL_POSTNET;
    {class} property POSTAL_ROYALMAIL: Integer read _GetPOSTAL_ROYALMAIL;
    {class} property POSTAL_UPUFICS: Integer read _GetPOSTAL_UPUFICS;
    {class} property QRCODE: Integer read _GetQRCODE;
    {class} property RESERVED_13: Integer read _GetRESERVED_13;
    {class} property RESERVED_15: Integer read _GetRESERVED_15;
    {class} property RESERVED_16: Integer read _GetRESERVED_16;
    {class} property RESERVED_20: Integer read _GetRESERVED_20;
    {class} property RESERVED_21: Integer read _GetRESERVED_21;
    {class} property RESERVED_27: Integer read _GetRESERVED_27;
    {class} property RESERVED_28: Integer read _GetRESERVED_28;
    {class} property RESERVED_30: Integer read _GetRESERVED_30;
    {class} property RESERVED_33: Integer read _GetRESERVED_33;
    {class} property RESERVED_6: Integer read _GetRESERVED_6;
    {class} property TRIOPTIC: Integer read _GetTRIOPTIC;
    {class} property UPCA: Integer read _GetUPCA;
    {class} property UPCE: Integer read _GetUPCE;
    {class} property UPCE1: Integer read _GetUPCE1;
  end;

  [JavaSignature('android/device/scanner/configuration/Constants$Symbology')]
  JConstants_Symbology = interface(JObject)
    ['{AFE9BE03-AE8F-4FD4-9E3A-9C53CD7ED723}']
  end;
  TJConstants_Symbology = class(TJavaGenericImport<JConstants_SymbologyClass, JConstants_Symbology>) end;

  JPropertyIDClass = interface(JObjectClass)
    ['{24051061-6160-4EE2-AD50-A7399705BE6A}']
    {class} function _GetAPPEND_ENTER_DELAY: Integer; cdecl;
    {class} function _GetAUSTRALIAN_POST_ENABLE: Integer; cdecl;
    {class} function _GetAZTEC_ENABLE: Integer; cdecl;
    {class} function _GetAZTEC_INVERSE: Integer; cdecl;
    {class} function _GetBAR_CODES_TO_READ: Integer; cdecl;
    {class} function _GetC25_ENABLE: Integer; cdecl;
    {class} function _GetCACHE_DATA_ENABLE: Integer; cdecl;
    {class} function _GetCACHE_DATA_LIMIT_ENABLE: Integer; cdecl;
    {class} function _GetCACHE_DATA_LIMIT_TIME: Integer; cdecl;
    {class} function _GetCHARACTER_DATA_DELAY: Integer; cdecl;
    {class} function _GetCODABAR_CLSI: Integer; cdecl;
    {class} function _GetCODABAR_CONCATENATE: Integer; cdecl;
    {class} function _GetCODABAR_ENABLE: Integer; cdecl;
    {class} function _GetCODABAR_ENABLE_CHECK: Integer; cdecl;
    {class} function _GetCODABAR_LENGTH1: Integer; cdecl;
    {class} function _GetCODABAR_LENGTH2: Integer; cdecl;
    {class} function _GetCODABAR_NOTIS: Integer; cdecl;
    {class} function _GetCODABAR_SEND_CHECK: Integer; cdecl;
    {class} function _GetCODABAR_SEND_START: Integer; cdecl;
    {class} function _GetCODE11_ENABLE: Integer; cdecl;
    {class} function _GetCODE11_ENABLE_CHECK: Integer; cdecl;
    {class} function _GetCODE11_LENGTH1: Integer; cdecl;
    {class} function _GetCODE11_LENGTH2: Integer; cdecl;
    {class} function _GetCODE11_SEND_CHECK: Integer; cdecl;
    {class} function _GetCODE128_CHECK_ISBT_TABLE: Integer; cdecl;
    {class} function _GetCODE128_ENABLE: Integer; cdecl;
    {class} function _GetCODE128_GS1_ENABLE: Integer; cdecl;
    {class} function _GetCODE128_IGNORE_FNC4: Integer; cdecl;
    {class} function _GetCODE128_LENGTH1: Integer; cdecl;
    {class} function _GetCODE128_LENGTH2: Integer; cdecl;
    {class} function _GetCODE128_REDUCED_QUIET_ZONE: Integer; cdecl;
    {class} function _GetCODE128_SECURITY_LEVEL: Integer; cdecl;
    {class} function _GetCODE32_ENABLE: Integer; cdecl;
    {class} function _GetCODE32_SEND_START: Integer; cdecl;
    {class} function _GetCODE39_ENABLE: Integer; cdecl;
    {class} function _GetCODE39_ENABLE_CHECK: Integer; cdecl;
    {class} function _GetCODE39_FULL_ASCII: Integer; cdecl;
    {class} function _GetCODE39_LENGTH1: Integer; cdecl;
    {class} function _GetCODE39_LENGTH2: Integer; cdecl;
    {class} function _GetCODE39_Quiet_Zone: Integer; cdecl;
    {class} function _GetCODE39_SECURITY_LEVEL: Integer; cdecl;
    {class} function _GetCODE39_SEND_CHECK: Integer; cdecl;
    {class} function _GetCODE39_START_STOP: Integer; cdecl;
    {class} function _GetCODE93_ENABLE: Integer; cdecl;
    {class} function _GetCODE93_LENGTH1: Integer; cdecl;
    {class} function _GetCODE93_LENGTH2: Integer; cdecl;
    {class} function _GetCODE_ISBT_128: Integer; cdecl;
    {class} function _GetCODE_ISBT_Concatenation_MODE: Integer; cdecl;
    {class} function _GetCODING_FORMAT: Integer; cdecl;
    {class} function _GetCOMPOSITE_CC_AB_ENABLE: Integer; cdecl;
    {class} function _GetCOMPOSITE_CC_C_ENABLE: Integer; cdecl;
    {class} function _GetCOMPOSITE_TLC39_ENABLE: Integer; cdecl;
    {class} function _GetCOMPOSITE_UPC_MODE: Integer; cdecl;
    {class} function _GetCanadian_POSTAL_ENABLE: Integer; cdecl;
    {class} function _GetD25_ENABLE: Integer; cdecl;
    {class} function _GetD25_LENGTH1: Integer; cdecl;
    {class} function _GetD25_LENGTH2: Integer; cdecl;
    {class} function _GetDATAMATRIX_ENABLE: Integer; cdecl;
    {class} function _GetDATAMATRIX_INVERSE: Integer; cdecl;
    {class} function _GetDATAMATRIX_LENGTH1: Integer; cdecl;
    {class} function _GetDATAMATRIX_LENGTH2: Integer; cdecl;
    {class} function _GetDEC_2D_CENTERING_ENABLE: Integer; cdecl;
    {class} function _GetDEC_2D_CENTERING_MODE: Integer; cdecl;
    {class} function _GetDEC_2D_DEBUG_WINDOW_ENABLE: Integer; cdecl;
    {class} function _GetDEC_2D_LIGHTS_MODE: Integer; cdecl;
    {class} function _GetDEC_2D_WINDOW_LOWER_RX: Integer; cdecl;
    {class} function _GetDEC_2D_WINDOW_LOWER_RY: Integer; cdecl;
    {class} function _GetDEC_2D_WINDOW_UPPER_LX: Integer; cdecl;
    {class} function _GetDEC_2D_WINDOW_UPPER_LY: Integer; cdecl;
    {class} function _GetDEC_DECODE_DEBUG_MODE: Integer; cdecl;
    {class} function _GetDEC_DECODE_DELAY: Integer; cdecl;
    {class} function _GetDEC_ES_CONFORM_IMAGE: Integer; cdecl;
    {class} function _GetDEC_ES_CONFORM_TRIES: Integer; cdecl;
    {class} function _GetDEC_ES_EXPOSURE_METHOD: Integer; cdecl;
    {class} function _GetDEC_ES_FIXED_EXP: Integer; cdecl;
    {class} function _GetDEC_ES_FIXED_FRAME_RATE: Integer; cdecl;
    {class} function _GetDEC_ES_FIXED_GAIN: Integer; cdecl;
    {class} function _GetDEC_ES_FRAME_RATE: Integer; cdecl;
    {class} function _GetDEC_ES_MAX_EXP: Integer; cdecl;
    {class} function _GetDEC_ES_MAX_GAIN: Integer; cdecl;
    {class} function _GetDEC_ES_SPECULAR_EXCLUSION: Integer; cdecl;
    {class} function _GetDEC_ES_SPECULAR_LIMIT: Integer; cdecl;
    {class} function _GetDEC_ES_SPECULAR_SAT: Integer; cdecl;
    {class} function _GetDEC_ES_TARGET_ACCEPT_GAP: Integer; cdecl;
    {class} function _GetDEC_ES_TARGET_PERCENTILE: Integer; cdecl;
    {class} function _GetDEC_ES_TARGET_VALUE: Integer; cdecl;
    {class} function _GetDEC_EachImageAttempt_TIME: Integer; cdecl;
    {class} function _GetDEC_ILLUM_POWER_LEVEL: Integer; cdecl;
    {class} function _GetDEC_MaxMultiRead_COUNT: Integer; cdecl;
    {class} function _GetDEC_Multiple_Decode_INTERVAL: Integer; cdecl;
    {class} function _GetDEC_Multiple_Decode_MODE: Integer; cdecl;
    {class} function _GetDEC_Multiple_Decode_TIMEOUT: Integer; cdecl;
    {class} function _GetDEC_OCR_MODE: Integer; cdecl;
    {class} function _GetDEC_OCR_TEMPLATE: Integer; cdecl;
    {class} function _GetDEC_OCR_USER_TEMPLATE: Integer; cdecl;
    {class} function _GetDEC_PICKLIST_AIM_DELAY: Integer; cdecl;
    {class} function _GetDEC_PICKLIST_AIM_MODE: Integer; cdecl;
    {class} function _GetDOTCODE_ENABLE: Integer; cdecl;
    {class} function _GetDPM_DECODE_MODE: Integer; cdecl;
    {class} function _GetEAN13_BOOKLANDEAN: Integer; cdecl;
    {class} function _GetEAN13_BOOKLAND_FORMAT: Integer; cdecl;
    {class} function _GetEAN13_ENABLE: Integer; cdecl;
    {class} function _GetEAN13_SEND_CHECK: Integer; cdecl;
    {class} function _GetEAN8_ENABLE: Integer; cdecl;
    {class} function _GetEAN8_SEND_CHECK: Integer; cdecl;
    {class} function _GetEAN8_TO_EAN13: Integer; cdecl;
    {class} function _GetEAN_EXT_ENABLE_2_5_DIGIT: Integer; cdecl;
    {class} function _GetFULL_READ_MODE: Integer; cdecl;
    {class} function _GetFUZZY_1D_PROCESSING: Integer; cdecl;
    {class} function _GetGOOD_READ_BEEP_ENABLE: Integer; cdecl;
    {class} function _GetGOOD_READ_VIBRATE_ENABLE: Integer; cdecl;
    {class} function _GetGS1128__UCCEAN_Composite: Integer; cdecl;
    {class} function _GetGS1_14_ENABLE: Integer; cdecl;
    {class} function _GetGS1_14_TO_UPC_EAN: Integer; cdecl;
    {class} function _GetGS1_EXP_ENABLE: Integer; cdecl;
    {class} function _GetGS1_EXP_LENGTH1: Integer; cdecl;
    {class} function _GetGS1_EXP_LENGTH2: Integer; cdecl;
    {class} function _GetGS1_LIMIT_ENABLE: Integer; cdecl;
    {class} function _GetGS1_LIMIT_Security_Level: Integer; cdecl;
    {class} function _GetHANXIN_ENABLE: Integer; cdecl;
    {class} function _GetHANXIN_INVERSE: Integer; cdecl;
    {class} function _GetI25_ENABLE: Integer; cdecl;
    {class} function _GetI25_ENABLE_CHECK: Integer; cdecl;
    {class} function _GetI25_LENGTH1: Integer; cdecl;
    {class} function _GetI25_LENGTH2: Integer; cdecl;
    {class} function _GetI25_QUIET_ZONE: Integer; cdecl;
    {class} function _GetI25_SECURITY_LEVEL: Integer; cdecl;
    {class} function _GetI25_SEND_CHECK: Integer; cdecl;
    {class} function _GetI25_TO_EAN13: Integer; cdecl;
    {class} function _GetIMAGE_EXPOSURE_MODE: Integer; cdecl;
    {class} function _GetIMAGE_FIXED_EXPOSURE: Integer; cdecl;
    {class} function _GetIMAGE_ONE_D_INVERSE: Integer; cdecl;
    {class} function _GetIMAGE_PICKLIST_MODE: Integer; cdecl;
    {class} function _GetJAPANESE_POST_ENABLE: Integer; cdecl;
    {class} function _GetKIX_CODE_ENABLE: Integer; cdecl;
    {class} function _GetKOREA_POST_ENABLE: Integer; cdecl;
    {class} function _GetLABEL_APPEND_ENTER: Integer; cdecl;
    {class} function _GetLABEL_FORMAT_SEPARATOR_CHAR: Integer; cdecl;
    {class} function _GetLABEL_MATCHER_PATTERN: Integer; cdecl;
    {class} function _GetLABEL_MATCHER_REPLACEMENT: Integer; cdecl;
    {class} function _GetLABEL_MATCHER_TARGETREGEX: Integer; cdecl;
    {class} function _GetLABEL_PREFIX: Integer; cdecl;
    {class} function _GetLABEL_SEPARATOR_ENABLE: Integer; cdecl;
    {class} function _GetLABEL_SUFFIX: Integer; cdecl;
    {class} function _GetLASER_ON_TIME: Integer; cdecl;
    {class} function _GetLINEAR_1D_QUIET_ZONE_LEVEL: Integer; cdecl;
    {class} function _GetLINEAR_CODE_TYPE_SECURITY_LEVEL: Integer; cdecl;
    {class} function _GetM25_ENABLE: Integer; cdecl;
    {class} function _GetM25_ENABLE_CHECK: Integer; cdecl;
    {class} function _GetM25_LENGTH1: Integer; cdecl;
    {class} function _GetM25_LENGTH2: Integer; cdecl;
    {class} function _GetM25_SEND_CHECK: Integer; cdecl;
    {class} function _GetMAXICODE_ENABLE: Integer; cdecl;
    {class} function _GetMICROPDF417_ENABLE: Integer; cdecl;
    {class} function _GetMICROQRCODE_ENABLE: Integer; cdecl;
    {class} function _GetMSI_CHECK_2_MOD_11: Integer; cdecl;
    {class} function _GetMSI_ENABLE: Integer; cdecl;
    {class} function _GetMSI_LENGTH1: Integer; cdecl;
    {class} function _GetMSI_LENGTH2: Integer; cdecl;
    {class} function _GetMSI_REQUIRE_2_CHECK: Integer; cdecl;
    {class} function _GetMSI_SEND_CHECK: Integer; cdecl;
    {class} function _GetMULTI_DECODE_MODE: Integer; cdecl;
    {class} function _GetOUT_CLIPBOARD_ENABLE: Integer; cdecl;
    {class} function _GetOUT_EDITORTEXT_MODE: Integer; cdecl;
    {class} function _GetPDF417_ENABLE: Integer; cdecl;
    {class} function _GetPOSTAL_GROUP_TYPE_ENABLE: Integer; cdecl;
    {class} function _GetQRCODE_ENABLE: Integer; cdecl;
    {class} function _GetQRCODE_INVERSE: Integer; cdecl;
    {class} function _GetREMOVE_NONPRINT_CHAR: Integer; cdecl;
    {class} function _GetROYAL_MAIL_ENABLE: Integer; cdecl;
    {class} function _GetROYAL_MAIL_SEND_CHECK: Integer; cdecl;
    {class} function _GetSCAN_HANDLE: Integer; cdecl;
    {class} function _GetSEND_GOOD_READ_BEEP_ENABLE: Integer; cdecl;
    {class} function _GetSEND_GOOD_READ_VIBRATE_ENABLE: Integer; cdecl;
    {class} function _GetSEND_LABEL_PREFIX_SUFFIX: Integer; cdecl;
    {class} function _GetSPECIFIC_CODE_GS: Integer; cdecl;
    {class} function _GetSUSPENSION_BUTTON: Integer; cdecl;
    {class} function _GetTIMEOUT_BETWEEN_SAME_SYMBOL: Integer; cdecl;
    {class} function _GetTRANSMIT_CODE_ID: Integer; cdecl;
    {class} function _GetTRIGGERING_LOCK: Integer; cdecl;
    {class} function _GetTRIGGERING_MODES: Integer; cdecl;
    {class} function _GetTRIGGERING_SLEEP_WORK: Integer; cdecl;
    {class} function _GetTRIOPTIC_ENABLE: Integer; cdecl;
    {class} function _GetUCC_COUPON_EXT_CODE: Integer; cdecl;
    {class} function _GetUCC_COUPON_EXT_REPORT_MODE: Integer; cdecl;
    {class} function _GetUCC_EAN_ZERO_EXTEND: Integer; cdecl;
    {class} function _GetUCC_REDUCED_QUIET_ZONE: Integer; cdecl;
    {class} function _GetUPCA_ENABLE: Integer; cdecl;
    {class} function _GetUPCA_SEND_CHECK: Integer; cdecl;
    {class} function _GetUPCA_SEND_SYS: Integer; cdecl;
    {class} function _GetUPCA_TO_EAN13: Integer; cdecl;
    {class} function _GetUPCE1_ENABLE: Integer; cdecl;
    {class} function _GetUPCE1_SEND_CHECK: Integer; cdecl;
    {class} function _GetUPCE1_SEND_SYS: Integer; cdecl;
    {class} function _GetUPCE1_TO_UPCA: Integer; cdecl;
    {class} function _GetUPCE_ENABLE: Integer; cdecl;
    {class} function _GetUPCE_SEND_CHECK: Integer; cdecl;
    {class} function _GetUPCE_SEND_SYS: Integer; cdecl;
    {class} function _GetUPCE_TO_UPCA: Integer; cdecl;
    {class} function _GetUPC_EAN_SECURITY_LEVEL: Integer; cdecl;
    {class} function _GetUPU_FICS_ENABLE: Integer; cdecl;
    {class} function _GetUSPS_4STATE_ENABLE: Integer; cdecl;
    {class} function _GetUS_PLANET_ENABLE: Integer; cdecl;
    {class} function _GetUS_POSTAL_SEND_CHECK: Integer; cdecl;
    {class} function _GetUS_POSTNET_ENABLE: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_ACTION_NAME: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_CATEGORY_NAME: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_DATA_STRING_TAG: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_DECODE_DATA_TAG: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_DELIVERY_MODE: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_FOREGROUND_FLAG: Integer; cdecl;
    {class} function _GetWEDGE_INTENT_LABEL_TYPE_TAG: Integer; cdecl;
    {class} function _GetWEDGE_KEYBOARD_ENABLE: Integer; cdecl;
    {class} function _GetWEDGE_KEYBOARD_TYPE: Integer; cdecl;
    {class} function init: JPropertyID; cdecl;//Deprecated
    {class} property APPEND_ENTER_DELAY: Integer read _GetAPPEND_ENTER_DELAY;
    {class} property AUSTRALIAN_POST_ENABLE: Integer read _GetAUSTRALIAN_POST_ENABLE;
    {class} property AZTEC_ENABLE: Integer read _GetAZTEC_ENABLE;
    {class} property AZTEC_INVERSE: Integer read _GetAZTEC_INVERSE;
    {class} property BAR_CODES_TO_READ: Integer read _GetBAR_CODES_TO_READ;
    {class} property C25_ENABLE: Integer read _GetC25_ENABLE;
    {class} property CACHE_DATA_ENABLE: Integer read _GetCACHE_DATA_ENABLE;
    {class} property CACHE_DATA_LIMIT_ENABLE: Integer read _GetCACHE_DATA_LIMIT_ENABLE;
    {class} property CACHE_DATA_LIMIT_TIME: Integer read _GetCACHE_DATA_LIMIT_TIME;
    {class} property CHARACTER_DATA_DELAY: Integer read _GetCHARACTER_DATA_DELAY;
    {class} property CODABAR_CLSI: Integer read _GetCODABAR_CLSI;
    {class} property CODABAR_CONCATENATE: Integer read _GetCODABAR_CONCATENATE;
    {class} property CODABAR_ENABLE: Integer read _GetCODABAR_ENABLE;
    {class} property CODABAR_ENABLE_CHECK: Integer read _GetCODABAR_ENABLE_CHECK;
    {class} property CODABAR_LENGTH1: Integer read _GetCODABAR_LENGTH1;
    {class} property CODABAR_LENGTH2: Integer read _GetCODABAR_LENGTH2;
    {class} property CODABAR_NOTIS: Integer read _GetCODABAR_NOTIS;
    {class} property CODABAR_SEND_CHECK: Integer read _GetCODABAR_SEND_CHECK;
    {class} property CODABAR_SEND_START: Integer read _GetCODABAR_SEND_START;
    {class} property CODE11_ENABLE: Integer read _GetCODE11_ENABLE;
    {class} property CODE11_ENABLE_CHECK: Integer read _GetCODE11_ENABLE_CHECK;
    {class} property CODE11_LENGTH1: Integer read _GetCODE11_LENGTH1;
    {class} property CODE11_LENGTH2: Integer read _GetCODE11_LENGTH2;
    {class} property CODE11_SEND_CHECK: Integer read _GetCODE11_SEND_CHECK;
    {class} property CODE128_CHECK_ISBT_TABLE: Integer read _GetCODE128_CHECK_ISBT_TABLE;
    {class} property CODE128_ENABLE: Integer read _GetCODE128_ENABLE;
    {class} property CODE128_GS1_ENABLE: Integer read _GetCODE128_GS1_ENABLE;
    {class} property CODE128_IGNORE_FNC4: Integer read _GetCODE128_IGNORE_FNC4;
    {class} property CODE128_LENGTH1: Integer read _GetCODE128_LENGTH1;
    {class} property CODE128_LENGTH2: Integer read _GetCODE128_LENGTH2;
    {class} property CODE128_REDUCED_QUIET_ZONE: Integer read _GetCODE128_REDUCED_QUIET_ZONE;
    {class} property CODE128_SECURITY_LEVEL: Integer read _GetCODE128_SECURITY_LEVEL;
    {class} property CODE32_ENABLE: Integer read _GetCODE32_ENABLE;
    {class} property CODE32_SEND_START: Integer read _GetCODE32_SEND_START;
    {class} property CODE39_ENABLE: Integer read _GetCODE39_ENABLE;
    {class} property CODE39_ENABLE_CHECK: Integer read _GetCODE39_ENABLE_CHECK;
    {class} property CODE39_FULL_ASCII: Integer read _GetCODE39_FULL_ASCII;
    {class} property CODE39_LENGTH1: Integer read _GetCODE39_LENGTH1;
    {class} property CODE39_LENGTH2: Integer read _GetCODE39_LENGTH2;
    {class} property CODE39_Quiet_Zone: Integer read _GetCODE39_Quiet_Zone;
    {class} property CODE39_SECURITY_LEVEL: Integer read _GetCODE39_SECURITY_LEVEL;
    {class} property CODE39_SEND_CHECK: Integer read _GetCODE39_SEND_CHECK;
    {class} property CODE39_START_STOP: Integer read _GetCODE39_START_STOP;
    {class} property CODE93_ENABLE: Integer read _GetCODE93_ENABLE;
    {class} property CODE93_LENGTH1: Integer read _GetCODE93_LENGTH1;
    {class} property CODE93_LENGTH2: Integer read _GetCODE93_LENGTH2;
    {class} property CODE_ISBT_128: Integer read _GetCODE_ISBT_128;
    {class} property CODE_ISBT_Concatenation_MODE: Integer read _GetCODE_ISBT_Concatenation_MODE;
    {class} property CODING_FORMAT: Integer read _GetCODING_FORMAT;
    {class} property COMPOSITE_CC_AB_ENABLE: Integer read _GetCOMPOSITE_CC_AB_ENABLE;
    {class} property COMPOSITE_CC_C_ENABLE: Integer read _GetCOMPOSITE_CC_C_ENABLE;
    {class} property COMPOSITE_TLC39_ENABLE: Integer read _GetCOMPOSITE_TLC39_ENABLE;
    {class} property COMPOSITE_UPC_MODE: Integer read _GetCOMPOSITE_UPC_MODE;
    {class} property Canadian_POSTAL_ENABLE: Integer read _GetCanadian_POSTAL_ENABLE;
    {class} property D25_ENABLE: Integer read _GetD25_ENABLE;
    {class} property D25_LENGTH1: Integer read _GetD25_LENGTH1;
    {class} property D25_LENGTH2: Integer read _GetD25_LENGTH2;
    {class} property DATAMATRIX_ENABLE: Integer read _GetDATAMATRIX_ENABLE;
    {class} property DATAMATRIX_INVERSE: Integer read _GetDATAMATRIX_INVERSE;
    {class} property DATAMATRIX_LENGTH1: Integer read _GetDATAMATRIX_LENGTH1;
    {class} property DATAMATRIX_LENGTH2: Integer read _GetDATAMATRIX_LENGTH2;
    {class} property DEC_2D_CENTERING_ENABLE: Integer read _GetDEC_2D_CENTERING_ENABLE;
    {class} property DEC_2D_CENTERING_MODE: Integer read _GetDEC_2D_CENTERING_MODE;
    {class} property DEC_2D_DEBUG_WINDOW_ENABLE: Integer read _GetDEC_2D_DEBUG_WINDOW_ENABLE;
    {class} property DEC_2D_LIGHTS_MODE: Integer read _GetDEC_2D_LIGHTS_MODE;
    {class} property DEC_2D_WINDOW_LOWER_RX: Integer read _GetDEC_2D_WINDOW_LOWER_RX;
    {class} property DEC_2D_WINDOW_LOWER_RY: Integer read _GetDEC_2D_WINDOW_LOWER_RY;
    {class} property DEC_2D_WINDOW_UPPER_LX: Integer read _GetDEC_2D_WINDOW_UPPER_LX;
    {class} property DEC_2D_WINDOW_UPPER_LY: Integer read _GetDEC_2D_WINDOW_UPPER_LY;
    {class} property DEC_DECODE_DEBUG_MODE: Integer read _GetDEC_DECODE_DEBUG_MODE;
    {class} property DEC_DECODE_DELAY: Integer read _GetDEC_DECODE_DELAY;
    {class} property DEC_ES_CONFORM_IMAGE: Integer read _GetDEC_ES_CONFORM_IMAGE;
    {class} property DEC_ES_CONFORM_TRIES: Integer read _GetDEC_ES_CONFORM_TRIES;
    {class} property DEC_ES_EXPOSURE_METHOD: Integer read _GetDEC_ES_EXPOSURE_METHOD;
    {class} property DEC_ES_FIXED_EXP: Integer read _GetDEC_ES_FIXED_EXP;
    {class} property DEC_ES_FIXED_FRAME_RATE: Integer read _GetDEC_ES_FIXED_FRAME_RATE;
    {class} property DEC_ES_FIXED_GAIN: Integer read _GetDEC_ES_FIXED_GAIN;
    {class} property DEC_ES_FRAME_RATE: Integer read _GetDEC_ES_FRAME_RATE;
    {class} property DEC_ES_MAX_EXP: Integer read _GetDEC_ES_MAX_EXP;
    {class} property DEC_ES_MAX_GAIN: Integer read _GetDEC_ES_MAX_GAIN;
    {class} property DEC_ES_SPECULAR_EXCLUSION: Integer read _GetDEC_ES_SPECULAR_EXCLUSION;
    {class} property DEC_ES_SPECULAR_LIMIT: Integer read _GetDEC_ES_SPECULAR_LIMIT;
    {class} property DEC_ES_SPECULAR_SAT: Integer read _GetDEC_ES_SPECULAR_SAT;
    {class} property DEC_ES_TARGET_ACCEPT_GAP: Integer read _GetDEC_ES_TARGET_ACCEPT_GAP;
    {class} property DEC_ES_TARGET_PERCENTILE: Integer read _GetDEC_ES_TARGET_PERCENTILE;
    {class} property DEC_ES_TARGET_VALUE: Integer read _GetDEC_ES_TARGET_VALUE;
    {class} property DEC_EachImageAttempt_TIME: Integer read _GetDEC_EachImageAttempt_TIME;
    {class} property DEC_ILLUM_POWER_LEVEL: Integer read _GetDEC_ILLUM_POWER_LEVEL;
    {class} property DEC_MaxMultiRead_COUNT: Integer read _GetDEC_MaxMultiRead_COUNT;
    {class} property DEC_Multiple_Decode_INTERVAL: Integer read _GetDEC_Multiple_Decode_INTERVAL;
    {class} property DEC_Multiple_Decode_MODE: Integer read _GetDEC_Multiple_Decode_MODE;
    {class} property DEC_Multiple_Decode_TIMEOUT: Integer read _GetDEC_Multiple_Decode_TIMEOUT;
    {class} property DEC_OCR_MODE: Integer read _GetDEC_OCR_MODE;
    {class} property DEC_OCR_TEMPLATE: Integer read _GetDEC_OCR_TEMPLATE;
    {class} property DEC_OCR_USER_TEMPLATE: Integer read _GetDEC_OCR_USER_TEMPLATE;
    {class} property DEC_PICKLIST_AIM_DELAY: Integer read _GetDEC_PICKLIST_AIM_DELAY;
    {class} property DEC_PICKLIST_AIM_MODE: Integer read _GetDEC_PICKLIST_AIM_MODE;
    {class} property DOTCODE_ENABLE: Integer read _GetDOTCODE_ENABLE;
    {class} property DPM_DECODE_MODE: Integer read _GetDPM_DECODE_MODE;
    {class} property EAN13_BOOKLANDEAN: Integer read _GetEAN13_BOOKLANDEAN;
    {class} property EAN13_BOOKLAND_FORMAT: Integer read _GetEAN13_BOOKLAND_FORMAT;
    {class} property EAN13_ENABLE: Integer read _GetEAN13_ENABLE;
    {class} property EAN13_SEND_CHECK: Integer read _GetEAN13_SEND_CHECK;
    {class} property EAN8_ENABLE: Integer read _GetEAN8_ENABLE;
    {class} property EAN8_SEND_CHECK: Integer read _GetEAN8_SEND_CHECK;
    {class} property EAN8_TO_EAN13: Integer read _GetEAN8_TO_EAN13;
    {class} property EAN_EXT_ENABLE_2_5_DIGIT: Integer read _GetEAN_EXT_ENABLE_2_5_DIGIT;
    {class} property FULL_READ_MODE: Integer read _GetFULL_READ_MODE;
    {class} property FUZZY_1D_PROCESSING: Integer read _GetFUZZY_1D_PROCESSING;
    {class} property GOOD_READ_BEEP_ENABLE: Integer read _GetGOOD_READ_BEEP_ENABLE;
    {class} property GOOD_READ_VIBRATE_ENABLE: Integer read _GetGOOD_READ_VIBRATE_ENABLE;
    {class} property GS1128__UCCEAN_Composite: Integer read _GetGS1128__UCCEAN_Composite;
    {class} property GS1_14_ENABLE: Integer read _GetGS1_14_ENABLE;
    {class} property GS1_14_TO_UPC_EAN: Integer read _GetGS1_14_TO_UPC_EAN;
    {class} property GS1_EXP_ENABLE: Integer read _GetGS1_EXP_ENABLE;
    {class} property GS1_EXP_LENGTH1: Integer read _GetGS1_EXP_LENGTH1;
    {class} property GS1_EXP_LENGTH2: Integer read _GetGS1_EXP_LENGTH2;
    {class} property GS1_LIMIT_ENABLE: Integer read _GetGS1_LIMIT_ENABLE;
    {class} property GS1_LIMIT_Security_Level: Integer read _GetGS1_LIMIT_Security_Level;
    {class} property HANXIN_ENABLE: Integer read _GetHANXIN_ENABLE;
    {class} property HANXIN_INVERSE: Integer read _GetHANXIN_INVERSE;
    {class} property I25_ENABLE: Integer read _GetI25_ENABLE;
    {class} property I25_ENABLE_CHECK: Integer read _GetI25_ENABLE_CHECK;
    {class} property I25_LENGTH1: Integer read _GetI25_LENGTH1;
    {class} property I25_LENGTH2: Integer read _GetI25_LENGTH2;
    {class} property I25_QUIET_ZONE: Integer read _GetI25_QUIET_ZONE;
    {class} property I25_SECURITY_LEVEL: Integer read _GetI25_SECURITY_LEVEL;
    {class} property I25_SEND_CHECK: Integer read _GetI25_SEND_CHECK;
    {class} property I25_TO_EAN13: Integer read _GetI25_TO_EAN13;
    {class} property IMAGE_EXPOSURE_MODE: Integer read _GetIMAGE_EXPOSURE_MODE;
    {class} property IMAGE_FIXED_EXPOSURE: Integer read _GetIMAGE_FIXED_EXPOSURE;
    {class} property IMAGE_ONE_D_INVERSE: Integer read _GetIMAGE_ONE_D_INVERSE;
    {class} property IMAGE_PICKLIST_MODE: Integer read _GetIMAGE_PICKLIST_MODE;
    {class} property JAPANESE_POST_ENABLE: Integer read _GetJAPANESE_POST_ENABLE;
    {class} property KIX_CODE_ENABLE: Integer read _GetKIX_CODE_ENABLE;
    {class} property KOREA_POST_ENABLE: Integer read _GetKOREA_POST_ENABLE;
    {class} property LABEL_APPEND_ENTER: Integer read _GetLABEL_APPEND_ENTER;
    {class} property LABEL_FORMAT_SEPARATOR_CHAR: Integer read _GetLABEL_FORMAT_SEPARATOR_CHAR;
    {class} property LABEL_MATCHER_PATTERN: Integer read _GetLABEL_MATCHER_PATTERN;
    {class} property LABEL_MATCHER_REPLACEMENT: Integer read _GetLABEL_MATCHER_REPLACEMENT;
    {class} property LABEL_MATCHER_TARGETREGEX: Integer read _GetLABEL_MATCHER_TARGETREGEX;
    {class} property LABEL_PREFIX: Integer read _GetLABEL_PREFIX;
    {class} property LABEL_SEPARATOR_ENABLE: Integer read _GetLABEL_SEPARATOR_ENABLE;
    {class} property LABEL_SUFFIX: Integer read _GetLABEL_SUFFIX;
    {class} property LASER_ON_TIME: Integer read _GetLASER_ON_TIME;
    {class} property LINEAR_1D_QUIET_ZONE_LEVEL: Integer read _GetLINEAR_1D_QUIET_ZONE_LEVEL;
    {class} property LINEAR_CODE_TYPE_SECURITY_LEVEL: Integer read _GetLINEAR_CODE_TYPE_SECURITY_LEVEL;
    {class} property M25_ENABLE: Integer read _GetM25_ENABLE;
    {class} property M25_ENABLE_CHECK: Integer read _GetM25_ENABLE_CHECK;
    {class} property M25_LENGTH1: Integer read _GetM25_LENGTH1;
    {class} property M25_LENGTH2: Integer read _GetM25_LENGTH2;
    {class} property M25_SEND_CHECK: Integer read _GetM25_SEND_CHECK;
    {class} property MAXICODE_ENABLE: Integer read _GetMAXICODE_ENABLE;
    {class} property MICROPDF417_ENABLE: Integer read _GetMICROPDF417_ENABLE;
    {class} property MICROQRCODE_ENABLE: Integer read _GetMICROQRCODE_ENABLE;
    {class} property MSI_CHECK_2_MOD_11: Integer read _GetMSI_CHECK_2_MOD_11;
    {class} property MSI_ENABLE: Integer read _GetMSI_ENABLE;
    {class} property MSI_LENGTH1: Integer read _GetMSI_LENGTH1;
    {class} property MSI_LENGTH2: Integer read _GetMSI_LENGTH2;
    {class} property MSI_REQUIRE_2_CHECK: Integer read _GetMSI_REQUIRE_2_CHECK;
    {class} property MSI_SEND_CHECK: Integer read _GetMSI_SEND_CHECK;
    {class} property MULTI_DECODE_MODE: Integer read _GetMULTI_DECODE_MODE;
    {class} property OUT_CLIPBOARD_ENABLE: Integer read _GetOUT_CLIPBOARD_ENABLE;
    {class} property OUT_EDITORTEXT_MODE: Integer read _GetOUT_EDITORTEXT_MODE;
    {class} property PDF417_ENABLE: Integer read _GetPDF417_ENABLE;
    {class} property POSTAL_GROUP_TYPE_ENABLE: Integer read _GetPOSTAL_GROUP_TYPE_ENABLE;
    {class} property QRCODE_ENABLE: Integer read _GetQRCODE_ENABLE;
    {class} property QRCODE_INVERSE: Integer read _GetQRCODE_INVERSE;
    {class} property REMOVE_NONPRINT_CHAR: Integer read _GetREMOVE_NONPRINT_CHAR;
    {class} property ROYAL_MAIL_ENABLE: Integer read _GetROYAL_MAIL_ENABLE;
    {class} property ROYAL_MAIL_SEND_CHECK: Integer read _GetROYAL_MAIL_SEND_CHECK;
    {class} property SCAN_HANDLE: Integer read _GetSCAN_HANDLE;
    {class} property SEND_GOOD_READ_BEEP_ENABLE: Integer read _GetSEND_GOOD_READ_BEEP_ENABLE;
    {class} property SEND_GOOD_READ_VIBRATE_ENABLE: Integer read _GetSEND_GOOD_READ_VIBRATE_ENABLE;
    {class} property SEND_LABEL_PREFIX_SUFFIX: Integer read _GetSEND_LABEL_PREFIX_SUFFIX;
    {class} property SPECIFIC_CODE_GS: Integer read _GetSPECIFIC_CODE_GS;
    {class} property SUSPENSION_BUTTON: Integer read _GetSUSPENSION_BUTTON;
    {class} property TIMEOUT_BETWEEN_SAME_SYMBOL: Integer read _GetTIMEOUT_BETWEEN_SAME_SYMBOL;
    {class} property TRANSMIT_CODE_ID: Integer read _GetTRANSMIT_CODE_ID;
    {class} property TRIGGERING_LOCK: Integer read _GetTRIGGERING_LOCK;
    {class} property TRIGGERING_MODES: Integer read _GetTRIGGERING_MODES;
    {class} property TRIGGERING_SLEEP_WORK: Integer read _GetTRIGGERING_SLEEP_WORK;
    {class} property TRIOPTIC_ENABLE: Integer read _GetTRIOPTIC_ENABLE;
    {class} property UCC_COUPON_EXT_CODE: Integer read _GetUCC_COUPON_EXT_CODE;
    {class} property UCC_COUPON_EXT_REPORT_MODE: Integer read _GetUCC_COUPON_EXT_REPORT_MODE;
    {class} property UCC_EAN_ZERO_EXTEND: Integer read _GetUCC_EAN_ZERO_EXTEND;
    {class} property UCC_REDUCED_QUIET_ZONE: Integer read _GetUCC_REDUCED_QUIET_ZONE;
    {class} property UPCA_ENABLE: Integer read _GetUPCA_ENABLE;
    {class} property UPCA_SEND_CHECK: Integer read _GetUPCA_SEND_CHECK;
    {class} property UPCA_SEND_SYS: Integer read _GetUPCA_SEND_SYS;
    {class} property UPCA_TO_EAN13: Integer read _GetUPCA_TO_EAN13;
    {class} property UPCE1_ENABLE: Integer read _GetUPCE1_ENABLE;
    {class} property UPCE1_SEND_CHECK: Integer read _GetUPCE1_SEND_CHECK;
    {class} property UPCE1_SEND_SYS: Integer read _GetUPCE1_SEND_SYS;
    {class} property UPCE1_TO_UPCA: Integer read _GetUPCE1_TO_UPCA;
    {class} property UPCE_ENABLE: Integer read _GetUPCE_ENABLE;
    {class} property UPCE_SEND_CHECK: Integer read _GetUPCE_SEND_CHECK;
    {class} property UPCE_SEND_SYS: Integer read _GetUPCE_SEND_SYS;
    {class} property UPCE_TO_UPCA: Integer read _GetUPCE_TO_UPCA;
    {class} property UPC_EAN_SECURITY_LEVEL: Integer read _GetUPC_EAN_SECURITY_LEVEL;
    {class} property UPU_FICS_ENABLE: Integer read _GetUPU_FICS_ENABLE;
    {class} property USPS_4STATE_ENABLE: Integer read _GetUSPS_4STATE_ENABLE;
    {class} property US_PLANET_ENABLE: Integer read _GetUS_PLANET_ENABLE;
    {class} property US_POSTAL_SEND_CHECK: Integer read _GetUS_POSTAL_SEND_CHECK;
    {class} property US_POSTNET_ENABLE: Integer read _GetUS_POSTNET_ENABLE;
    {class} property WEDGE_INTENT_ACTION_NAME: Integer read _GetWEDGE_INTENT_ACTION_NAME;
    {class} property WEDGE_INTENT_CATEGORY_NAME: Integer read _GetWEDGE_INTENT_CATEGORY_NAME;
    {class} property WEDGE_INTENT_DATA_STRING_TAG: Integer read _GetWEDGE_INTENT_DATA_STRING_TAG;
    {class} property WEDGE_INTENT_DECODE_DATA_TAG: Integer read _GetWEDGE_INTENT_DECODE_DATA_TAG;
    {class} property WEDGE_INTENT_DELIVERY_MODE: Integer read _GetWEDGE_INTENT_DELIVERY_MODE;
    {class} property WEDGE_INTENT_FOREGROUND_FLAG: Integer read _GetWEDGE_INTENT_FOREGROUND_FLAG;
    {class} property WEDGE_INTENT_LABEL_TYPE_TAG: Integer read _GetWEDGE_INTENT_LABEL_TYPE_TAG;
    {class} property WEDGE_KEYBOARD_ENABLE: Integer read _GetWEDGE_KEYBOARD_ENABLE;
    {class} property WEDGE_KEYBOARD_TYPE: Integer read _GetWEDGE_KEYBOARD_TYPE;
  end;

  [JavaSignature('android/device/scanner/configuration/PropertyID')]
  JPropertyID = interface(JObject)
    ['{2B7F79E1-EF1C-4630-AECD-8C29C88F0B36}']
  end;
  TJPropertyID = class(TJavaGenericImport<JPropertyIDClass, JPropertyID>) end;

  JSymbologyClass = interface(JEnumClass)
    ['{2DB982B2-F52A-4DFD-BF9A-F79680406964}']
    {class} function _GetAZTEC: JSymbology; cdecl;
    {class} function _GetCHINESE25: JSymbology; cdecl;
    {class} function _GetCODABAR: JSymbology; cdecl;
    {class} function _GetCODE11: JSymbology; cdecl;
    {class} function _GetCODE128: JSymbology; cdecl;
    {class} function _GetCODE32: JSymbology; cdecl;
    {class} function _GetCODE39: JSymbology; cdecl;
    {class} function _GetCODE93: JSymbology; cdecl;
    {class} function _GetCOMPOSITE_CC_AB: JSymbology; cdecl;
    {class} function _GetCOMPOSITE_CC_C: JSymbology; cdecl;
    {class} function _GetCOMPOSITE_TLC39: JSymbology; cdecl;
    {class} function _GetDATAMATRIX: JSymbology; cdecl;
    {class} function _GetDISCRETE25: JSymbology; cdecl;
    {class} function _GetDOTCODE: JSymbology; cdecl;
    {class} function _GetEAN13: JSymbology; cdecl;
    {class} function _GetEAN8: JSymbology; cdecl;
    {class} function _GetGS1_128: JSymbology; cdecl;
    {class} function _GetGS1_14: JSymbology; cdecl;
    {class} function _GetGS1_EXP: JSymbology; cdecl;
    {class} function _GetGS1_LIMIT: JSymbology; cdecl;
    {class} function _GetHANXIN: JSymbology; cdecl;
    {class} function _GetINTERLEAVED25: JSymbology; cdecl;
    {class} function _GetMATRIX25: JSymbology; cdecl;
    {class} function _GetMAXICODE: JSymbology; cdecl;
    {class} function _GetMICROPDF417: JSymbology; cdecl;
    {class} function _GetMSI: JSymbology; cdecl;
    {class} function _GetNONE: JSymbology; cdecl;
    {class} function _GetPDF417: JSymbology; cdecl;
    {class} function _GetPOSTAL_4STATE: JSymbology; cdecl;
    {class} function _GetPOSTAL_AUSTRALIAN: JSymbology; cdecl;
    {class} function _GetPOSTAL_JAPAN: JSymbology; cdecl;
    {class} function _GetPOSTAL_KIX: JSymbology; cdecl;
    {class} function _GetPOSTAL_PLANET: JSymbology; cdecl;
    {class} function _GetPOSTAL_POSTNET: JSymbology; cdecl;
    {class} function _GetPOSTAL_ROYALMAIL: JSymbology; cdecl;
    {class} function _GetPOSTAL_UPUFICS: JSymbology; cdecl;
    {class} function _GetQRCODE: JSymbology; cdecl;
    {class} function _GetRESERVED_13: JSymbology; cdecl;
    {class} function _GetRESERVED_15: JSymbology; cdecl;
    {class} function _GetRESERVED_16: JSymbology; cdecl;
    {class} function _GetRESERVED_20: JSymbology; cdecl;
    {class} function _GetRESERVED_21: JSymbology; cdecl;
    {class} function _GetRESERVED_27: JSymbology; cdecl;
    {class} function _GetRESERVED_28: JSymbology; cdecl;
    {class} function _GetRESERVED_30: JSymbology; cdecl;
    {class} function _GetRESERVED_33: JSymbology; cdecl;
    {class} function _GetRESERVED_6: JSymbology; cdecl;
    {class} function _GetTRIOPTIC: JSymbology; cdecl;
    {class} function _GetUPCA: JSymbology; cdecl;
    {class} function _GetUPCE: JSymbology; cdecl;
    {class} function _GetUPCE1: JSymbology; cdecl;
    {class} function fromInt(i: Integer): JSymbology; cdecl;
    {class} function fromOrdinal(i: Integer): JSymbology; cdecl;
    {class} function valueOf(string_: JString): JSymbology; cdecl;
    {class} function values: TJavaObjectArray<JSymbology>; cdecl;//Deprecated
    {class} property AZTEC: JSymbology read _GetAZTEC;
    {class} property CHINESE25: JSymbology read _GetCHINESE25;
    {class} property CODABAR: JSymbology read _GetCODABAR;
    {class} property CODE11: JSymbology read _GetCODE11;
    {class} property CODE128: JSymbology read _GetCODE128;
    {class} property CODE32: JSymbology read _GetCODE32;
    {class} property CODE39: JSymbology read _GetCODE39;
    {class} property CODE93: JSymbology read _GetCODE93;
    {class} property COMPOSITE_CC_AB: JSymbology read _GetCOMPOSITE_CC_AB;
    {class} property COMPOSITE_CC_C: JSymbology read _GetCOMPOSITE_CC_C;
    {class} property COMPOSITE_TLC39: JSymbology read _GetCOMPOSITE_TLC39;
    {class} property DATAMATRIX: JSymbology read _GetDATAMATRIX;
    {class} property DISCRETE25: JSymbology read _GetDISCRETE25;
    {class} property DOTCODE: JSymbology read _GetDOTCODE;
    {class} property EAN13: JSymbology read _GetEAN13;
    {class} property EAN8: JSymbology read _GetEAN8;
    {class} property GS1_128: JSymbology read _GetGS1_128;
    {class} property GS1_14: JSymbology read _GetGS1_14;
    {class} property GS1_EXP: JSymbology read _GetGS1_EXP;
    {class} property GS1_LIMIT: JSymbology read _GetGS1_LIMIT;
    {class} property HANXIN: JSymbology read _GetHANXIN;
    {class} property INTERLEAVED25: JSymbology read _GetINTERLEAVED25;
    {class} property MATRIX25: JSymbology read _GetMATRIX25;
    {class} property MAXICODE: JSymbology read _GetMAXICODE;
    {class} property MICROPDF417: JSymbology read _GetMICROPDF417;
    {class} property MSI: JSymbology read _GetMSI;
    {class} property NONE: JSymbology read _GetNONE;
    {class} property PDF417: JSymbology read _GetPDF417;
    {class} property POSTAL_4STATE: JSymbology read _GetPOSTAL_4STATE;
    {class} property POSTAL_AUSTRALIAN: JSymbology read _GetPOSTAL_AUSTRALIAN;
    {class} property POSTAL_JAPAN: JSymbology read _GetPOSTAL_JAPAN;
    {class} property POSTAL_KIX: JSymbology read _GetPOSTAL_KIX;
    {class} property POSTAL_PLANET: JSymbology read _GetPOSTAL_PLANET;
    {class} property POSTAL_POSTNET: JSymbology read _GetPOSTAL_POSTNET;
    {class} property POSTAL_ROYALMAIL: JSymbology read _GetPOSTAL_ROYALMAIL;
    {class} property POSTAL_UPUFICS: JSymbology read _GetPOSTAL_UPUFICS;
    {class} property QRCODE: JSymbology read _GetQRCODE;
    {class} property RESERVED_13: JSymbology read _GetRESERVED_13;
    {class} property RESERVED_15: JSymbology read _GetRESERVED_15;
    {class} property RESERVED_16: JSymbology read _GetRESERVED_16;
    {class} property RESERVED_20: JSymbology read _GetRESERVED_20;
    {class} property RESERVED_21: JSymbology read _GetRESERVED_21;
    {class} property RESERVED_27: JSymbology read _GetRESERVED_27;
    {class} property RESERVED_28: JSymbology read _GetRESERVED_28;
    {class} property RESERVED_30: JSymbology read _GetRESERVED_30;
    {class} property RESERVED_33: JSymbology read _GetRESERVED_33;
    {class} property RESERVED_6: JSymbology read _GetRESERVED_6;
    {class} property TRIOPTIC: JSymbology read _GetTRIOPTIC;
    {class} property UPCA: JSymbology read _GetUPCA;
    {class} property UPCE: JSymbology read _GetUPCE;
    {class} property UPCE1: JSymbology read _GetUPCE1;
  end;

  [JavaSignature('android/device/scanner/configuration/Symbology')]
  JSymbology = interface(JEnum)
    ['{FF00713A-0884-42AC-8F69-26A0065324BB}']
    function toInt: Integer; cdecl;
  end;
  TJSymbology = class(TJavaGenericImport<JSymbologyClass, JSymbology>) end;

  JTriggeringClass = interface(JEnumClass)
    ['{C2B60A4A-8988-406B-BDB0-7031DC132CD5}']
    {class} function _GetCONTINUOUS: JTriggering; cdecl;
    {class} function _GetHOST: JTriggering; cdecl;
    {class} function _GetPULSE: JTriggering; cdecl;
    {class} function valueOf(string_: JString): JTriggering; cdecl;
    {class} function values: TJavaObjectArray<JTriggering>; cdecl;//Deprecated
    {class} property CONTINUOUS: JTriggering read _GetCONTINUOUS;
    {class} property HOST: JTriggering read _GetHOST;
    {class} property PULSE: JTriggering read _GetPULSE;
  end;

  [JavaSignature('android/device/scanner/configuration/Triggering')]
  JTriggering = interface(JEnum)
    ['{00EB66FF-9E28-4E8A-BD9F-3F5C4F0B8065}']
    function toInt: Integer; cdecl;
  end;
  TJTriggering = class(TJavaGenericImport<JTriggeringClass, JTriggering>) end;

  Jsdk_BuildConfigClass = interface(JObjectClass)
    ['{29A8E9B0-E132-4FFC-AC4B-25FC59B5C926}']
    {class} function _GetAPPLICATION_ID: JString; cdecl;
    {class} function _GetBUILD_TYPE: JString; cdecl;
    {class} function _GetDEBUG: Boolean; cdecl;
    {class} function _GetFLAVOR: JString; cdecl;
    {class} function _GetVERSION_CODE: Integer; cdecl;
    {class} function _GetVERSION_NAME: JString; cdecl;
    {class} function init: Jsdk_BuildConfig; cdecl;//Deprecated
    {class} property APPLICATION_ID: JString read _GetAPPLICATION_ID;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property DEBUG: Boolean read _GetDEBUG;
    {class} property FLAVOR: JString read _GetFLAVOR;
    {class} property VERSION_CODE: Integer read _GetVERSION_CODE;
    {class} property VERSION_NAME: JString read _GetVERSION_NAME;
  end;

  [JavaSignature('android/device/sdk/BuildConfig')]
  Jsdk_BuildConfig = interface(JObject)
    ['{DA8DBFFB-8485-4F98-A0B3-E00ED6A2D612}']
  end;
  TJsdk_BuildConfig = class(TJavaGenericImport<Jsdk_BuildConfigClass, Jsdk_BuildConfig>) end;

  JIInputActionListenerClass = interface(JIInterfaceClass)
    ['{1A3FE0BC-DABC-4C8A-ABEA-2B92854BB31D}']
  end;

  [JavaSignature('android/os/IInputActionListener')]
  JIInputActionListener = interface(JIInterface)
    ['{4A27D769-99EF-4DA8-82E7-108C7B5215C0}']
    procedure onInputChanged(i: Integer; i1: Integer; bundle: JBundle); cdecl;
  end;
  TJIInputActionListener = class(TJavaGenericImport<JIInputActionListenerClass, JIInputActionListener>) end;

  JIInputActionListener_StubClass = interface(JBinderClass)
    ['{A6928F5D-A385-4015-9E18-4DC8E77B9010}']
    {class} function _GetTRANSACTION_onInputChanged: Integer; cdecl;
    {class} function asInterface(iBinder: JIBinder): JIInputActionListener; cdecl;
    {class} function init: JIInputActionListener_Stub; cdecl;
    {class} property TRANSACTION_onInputChanged: Integer read _GetTRANSACTION_onInputChanged;
  end;

  [JavaSignature('android/os/IInputActionListener$Stub')]
  JIInputActionListener_Stub = interface(JBinder)
    ['{B3F62C44-97DD-4FF8-A048-6615EF19F02D}']
    function asBinder: JIBinder; cdecl;
    function onTransact(i: Integer; parcel: JParcel; parcel1: JParcel; i1: Integer): Boolean; cdecl;
  end;
  TJIInputActionListener_Stub = class(TJavaGenericImport<JIInputActionListener_StubClass, JIInputActionListener_Stub>) end;

  JIInputActionListener_Stub_ProxyClass = interface(JIInputActionListenerClass)
    ['{C0546FB5-7974-477B-B7D4-50B5587CD106}']
    {class} function asBinder: JIBinder; cdecl;
    {class} function init(iBinder: JIBinder): JIInputActionListener_Stub_Proxy; cdecl;
  end;

  [JavaSignature('android/os/IInputActionListener$Stub$Proxy')]
  JIInputActionListener_Stub_Proxy = interface(JIInputActionListener)
    ['{1C166633-0008-4919-88CC-2BECEF839A67}']
    function getInterfaceDescriptor: JString; cdecl;
    procedure onInputChanged(i: Integer; i1: Integer; bundle: JBundle); cdecl;
  end;
  TJIInputActionListener_Stub_Proxy = class(TJavaGenericImport<JIInputActionListener_Stub_ProxyClass, JIInputActionListener_Stub_Proxy>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Urovo_SDK.JIPackageDeleteObserver', TypeInfo(Urovo_SDK.JIPackageDeleteObserver));
  TRegTypes.RegisterType('Urovo_SDK.JIPackageDeleteObserver_Stub', TypeInfo(Urovo_SDK.JIPackageDeleteObserver_Stub));
  TRegTypes.RegisterType('Urovo_SDK.JIPackageInstallObserver', TypeInfo(Urovo_SDK.JIPackageInstallObserver));
  TRegTypes.RegisterType('Urovo_SDK.JIPackageInstallObserver_Stub', TypeInfo(Urovo_SDK.JIPackageInstallObserver_Stub));
  TRegTypes.RegisterType('Urovo_SDK.JOnFinishObserver', TypeInfo(Urovo_SDK.JOnFinishObserver));
  TRegTypes.RegisterType('Urovo_SDK.JDeviceManager', TypeInfo(Urovo_SDK.JDeviceManager));
  TRegTypes.RegisterType('Urovo_SDK.JIccManager', TypeInfo(Urovo_SDK.JIccManager));
  TRegTypes.RegisterType('Urovo_SDK.JKeyMapManager', TypeInfo(Urovo_SDK.JKeyMapManager));
  TRegTypes.RegisterType('Urovo_SDK.JKeyMapManager_KeyEntry', TypeInfo(Urovo_SDK.JKeyMapManager_KeyEntry));
  TRegTypes.RegisterType('Urovo_SDK.JLed', TypeInfo(Urovo_SDK.JLed));
  TRegTypes.RegisterType('Urovo_SDK.JLedManager', TypeInfo(Urovo_SDK.JLedManager));
  TRegTypes.RegisterType('Urovo_SDK.JMagManager', TypeInfo(Urovo_SDK.JMagManager));
  TRegTypes.RegisterType('Urovo_SDK.JMaxqManager', TypeInfo(Urovo_SDK.JMaxqManager));
  TRegTypes.RegisterType('Urovo_SDK.JMaxqManager_PedInputListener', TypeInfo(Urovo_SDK.JMaxqManager_PedInputListener));
  TRegTypes.RegisterType('Urovo_SDK.JPiccManager', TypeInfo(Urovo_SDK.JPiccManager));
  TRegTypes.RegisterType('Urovo_SDK.JPrinterManager', TypeInfo(Urovo_SDK.JPrinterManager));
  TRegTypes.RegisterType('Urovo_SDK.JSEManager', TypeInfo(Urovo_SDK.JSEManager));
  TRegTypes.RegisterType('Urovo_SDK.JSEManager_PedInputListener', TypeInfo(Urovo_SDK.JSEManager_PedInputListener));
  TRegTypes.RegisterType('Urovo_SDK.JSEManager_OperationPedInputListener', TypeInfo(Urovo_SDK.JSEManager_OperationPedInputListener));
  TRegTypes.RegisterType('Urovo_SDK.JScanManager', TypeInfo(Urovo_SDK.JScanManager));
  TRegTypes.RegisterType('Urovo_SDK.JSettingProperty', TypeInfo(Urovo_SDK.JSettingProperty));
  TRegTypes.RegisterType('Urovo_SDK.JUFSManager', TypeInfo(Urovo_SDK.JUFSManager));
  TRegTypes.RegisterType('Urovo_SDK.Jconfiguration_Constants', TypeInfo(Urovo_SDK.Jconfiguration_Constants));
  TRegTypes.RegisterType('Urovo_SDK.JConstants_Symbology', TypeInfo(Urovo_SDK.JConstants_Symbology));
  TRegTypes.RegisterType('Urovo_SDK.JPropertyID', TypeInfo(Urovo_SDK.JPropertyID));
  TRegTypes.RegisterType('Urovo_SDK.JSymbology', TypeInfo(Urovo_SDK.JSymbology));
  TRegTypes.RegisterType('Urovo_SDK.JTriggering', TypeInfo(Urovo_SDK.JTriggering));
  TRegTypes.RegisterType('Urovo_SDK.Jsdk_BuildConfig', TypeInfo(Urovo_SDK.Jsdk_BuildConfig));
  TRegTypes.RegisterType('Urovo_SDK.JIInputActionListener', TypeInfo(Urovo_SDK.JIInputActionListener));
  TRegTypes.RegisterType('Urovo_SDK.JIInputActionListener_Stub', TypeInfo(Urovo_SDK.JIInputActionListener_Stub));
  TRegTypes.RegisterType('Urovo_SDK.JIInputActionListener_Stub_Proxy', TypeInfo(Urovo_SDK.JIInputActionListener_Stub_Proxy));
end;

initialization
  RegisterTypes;
end.

