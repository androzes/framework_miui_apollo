.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 63

    .prologue
    .line 81
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 84
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 86
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 89
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 91
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 92
    .local v39, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    move/from16 v38, v5

    .line 95
    .local v38, factoryTest:I
    :goto_0
    const/16 v44, 0x0

    .line 96
    .local v44, lights:Lcom/android/server/LightsService;
    const/16 v51, 0x0

    .line 97
    .local v51, power:Lcom/android/server/PowerManagerService;
    const/16 v25, 0x0

    .line 98
    .local v25, battery:Lcom/android/server/BatteryService;
    const/16 v32, 0x0

    .line 99
    .local v32, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v50, 0x0

    .line 100
    .local v50, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 101
    .local v6, context:Landroid/content/Context;
    const/16 v62, 0x0

    .line 102
    .local v62, wm:Lcom/android/server/WindowManagerService;
    const/16 v26, 0x0

    .line 103
    .local v26, bluetooth:Landroid/server/BluetoothService;
    const/16 v28, 0x0

    .line 104
    .local v28, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v30, 0x0

    .line 105
    .local v30, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    const/16 v40, 0x0

    .line 106
    .local v40, headset:Lcom/android/server/HeadsetObserver;
    const/16 v35, 0x0

    .line 107
    .local v35, dock:Lcom/android/server/DockObserver;
    const/16 v58, 0x0

    .line 108
    .local v58, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v52, 0x0

    .line 109
    .local v52, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v56, 0x0

    .line 113
    .local v56, throttle:Lcom/android/server/ThrottleService;
    :try_start_0
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 116
    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_28

    .line 118
    .end local v51           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 120
    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static/range {v38 .. v38}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 123
    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 128
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v5, "SystemServer"

    const-string v7, "!@beginofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v38, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v50

    .line 132
    const-string v5, "SystemServer"

    const-string v7, "!@2nfofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 136
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :try_start_2
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :goto_2
    :try_start_3
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v5, 0x1

    move/from16 v0, v38

    move v1, v5

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 151
    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 154
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    .end local v25           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_4
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 158
    const-string v5, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v45, Lcom/android/server/LightsService;

    move-object/from16 v0, v45

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_29

    .line 161
    .end local v44           #lights:Lcom/android/server/LightsService;
    .local v45, lights:Lcom/android/server/LightsService;
    :try_start_5
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 166
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v45

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 168
    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 170
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 172
    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 177
    const-string v5, "SystemServer"

    const-string v9, "Sensor Service"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v5, "sensor"

    new-instance v9, Lcom/android/server/SensorService;

    invoke-direct {v9, v6}, Lcom/android/server/SensorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 180
    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v5, 0x1

    move/from16 v0, v38

    move v1, v5

    if-eq v0, v1, :cond_7

    const/4 v5, 0x1

    :goto_4
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v62

    .line 183
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    .line 191
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 197
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v27, Landroid/server/BluetoothService;

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 199
    .end local v26           #bluetooth:Landroid/server/BluetoothService;
    .local v27, bluetooth:Landroid/server/BluetoothService;
    :try_start_6
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    invoke-virtual/range {v27 .. v27}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 201
    new-instance v29, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v29

    move-object v1, v6

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2a

    .line 202
    .end local v28           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v29, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_7
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 204
    new-instance v31, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v31

    move-object v1, v6

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2b

    .line 205
    .end local v30           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .local v31, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_8
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2c

    move-object/from16 v30, v31

    .end local v31           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v30       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v28, v29

    .end local v29           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v28       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v26, v27

    .end local v27           #bluetooth:Landroid/server/BluetoothService;
    .restart local v26       #bluetooth:Landroid/server/BluetoothService;
    :goto_5
    move-object/from16 v44, v45

    .line 235
    .end local v45           #lights:Lcom/android/server/LightsService;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    :goto_6
    const/16 v33, 0x0

    .line 236
    .local v33, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v54, 0x0

    .line 237
    .local v54, statusBar:Lcom/android/server/status/StatusBarService;
    const/16 v42, 0x0

    .line 238
    .local v42, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v23, 0x0

    .line 239
    .local v23, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v48, 0x0

    .line 240
    .local v48, notification:Lcom/android/server/NotificationManagerService;
    const/16 v60, 0x0

    .line 241
    .local v60, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v46, 0x0

    .line 243
    .local v46, location:Lcom/android/server/LocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v38

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 245
    :try_start_9
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v34, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 247
    .end local v33           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v34, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_a
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_27

    move-object/from16 v33, v34

    .line 253
    .end local v34           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v33       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_7
    :try_start_b
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v55, Lcom/android/server/status/StatusBarService;

    move-object/from16 v0, v55

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 255
    .end local v54           #statusBar:Lcom/android/server/status/StatusBarService;
    .local v55, statusBar:Lcom/android/server/status/StatusBarService;
    :try_start_c
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_26

    move-object/from16 v54, v55

    .line 261
    .end local v55           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v54       #statusBar:Lcom/android/server/status/StatusBarService;
    :goto_8
    :try_start_d
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 269
    :goto_9
    :try_start_e
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v43, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v43

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 271
    .end local v42           #imm:Lcom/android/server/InputMethodManagerService;
    .local v43, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_f
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_25

    move-object/from16 v42, v43

    .line 277
    .end local v43           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v42       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_a
    :try_start_10
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 284
    :goto_b
    :try_start_11
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v5, "network_management"

    new-instance v9, Lcom/android/server/NetworkManagementService;

    invoke-direct {v9, v6}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 292
    :goto_c
    :try_start_12
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v32

    .line 294
    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 300
    :goto_d
    :try_start_13
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v57, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v57

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .line 302
    .end local v56           #throttle:Lcom/android/server/ThrottleService;
    .local v57, throttle:Lcom/android/server/ThrottleService;
    :try_start_14
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_24

    move-object/from16 v56, v57

    .line 309
    .end local v57           #throttle:Lcom/android/server/ThrottleService;
    .restart local v56       #throttle:Lcom/android/server/ThrottleService;
    :goto_e
    :try_start_15
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 321
    :goto_f
    :try_start_16
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 328
    :goto_10
    :try_start_17
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v49, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v49

    move-object v1, v6

    move-object/from16 v2, v54

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;Lcom/android/server/LightsService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    .line 330
    .end local v48           #notification:Lcom/android/server/NotificationManagerService;
    .local v49, notification:Lcom/android/server/NotificationManagerService;
    :try_start_18
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_23

    move-object/from16 v48, v49

    .line 336
    .end local v49           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v48       #notification:Lcom/android/server/NotificationManagerService;
    :goto_11
    :try_start_19
    const-string v5, "SystemServer"

    const-string v9, "DataRouter Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v5, "datarouter"

    new-instance v9, Lcom/android/server/DataRouterService;

    invoke-direct {v9, v6}, Lcom/android/server/DataRouterService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .line 344
    :goto_12
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_f

    .line 352
    :goto_13
    :try_start_1b
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v47, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_10

    .line 354
    .end local v46           #location:Lcom/android/server/LocationManagerService;
    .local v47, location:Lcom/android/server/LocationManagerService;
    :try_start_1c
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_22

    move-object/from16 v46, v47

    .line 360
    .end local v47           #location:Lcom/android/server/LocationManagerService;
    .restart local v46       #location:Lcom/android/server/LocationManagerService;
    :goto_14
    :try_start_1d
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_11

    .line 373
    :goto_15
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_12

    .line 381
    :goto_16
    :try_start_1f
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v61, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v61

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_13

    .line 383
    .end local v60           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v61, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_20
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_21

    move-object/from16 v60, v61

    .line 389
    .end local v61           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v60       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_17
    :try_start_21
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_14

    .line 405
    :goto_18
    :try_start_22
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v41, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_15

    .end local v40           #headset:Lcom/android/server/HeadsetObserver;
    .local v41, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v40, v41

    .line 416
    .end local v41           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v40       #headset:Lcom/android/server/HeadsetObserver;
    :goto_19
    :try_start_23
    const-string v5, "SystemServer"

    const-string v9, " FM_RADIO_SERVICE"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v5, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v6}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_16

    .line 429
    :goto_1a
    :try_start_24
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v36, Lcom/android/server/DockObserver;

    move-object/from16 v0, v36

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_17

    .end local v35           #dock:Lcom/android/server/DockObserver;
    .local v36, dock:Lcom/android/server/DockObserver;
    move-object/from16 v35, v36

    .line 437
    .end local v36           #dock:Lcom/android/server/DockObserver;
    .restart local v35       #dock:Lcom/android/server/DockObserver;
    :goto_1b
    :try_start_25
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v59, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_18

    .end local v58           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v59, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v58, v59

    .line 445
    .end local v59           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v58       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_1c
    :try_start_26
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_19

    .line 453
    :goto_1d
    :try_start_27
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v24, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1a

    .line 455
    .end local v23           #appWidget:Lcom/android/server/AppWidgetService;
    .local v24, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_28
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_20

    move-object/from16 v23, v24

    .line 461
    .end local v24           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v23       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_1e
    :try_start_29
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v53, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v53

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1b

    .end local v52           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v53, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v53

    .line 468
    .end local v53           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v52       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_1f
    :try_start_2a
    move-object v0, v6

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->installIcons(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1c

    .line 474
    :goto_20
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1d

    .line 480
    :goto_21
    move-object v0, v6

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 485
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    .end local v6           #context:Landroid/content/Context;
    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_22
    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "SimDBReady"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v18

    .line 498
    .local v18, safeMode:Z
    if-eqz v18, :cond_b

    .line 500
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 502
    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 504
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_1f

    .line 514
    :goto_23
    if-eqz v33, :cond_1

    .line 515
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    .line 518
    :cond_1
    if-eqz v48, :cond_2

    .line 519
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 522
    :cond_2
    if-eqz v54, :cond_3

    .line 523
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/status/StatusBarService;->systemReady()V

    .line 525
    :cond_3
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/WindowManagerService;->systemReady()V

    .line 526
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 528
    :try_start_2d
    invoke-interface/range {v50 .. v50}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_1e

    .line 533
    :goto_24
    move-object v12, v7

    .line 534
    .local v12, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v13, v32

    .line 535
    .local v13, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v14, v35

    .line 536
    .local v14, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v22, v56

    .line 537
    .local v22, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v15, v58

    .line 538
    .local v15, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v17, v23

    .line 539
    .local v17, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v19, v60

    .line 540
    .local v19, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v20, v42

    .line 541
    .local v20, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v16, v52

    .line 542
    .local v16, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v21, v46

    .line 549
    .local v21, locationF:Lcom/android/server/LocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v22}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 573
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 574
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 92
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #batteryF:Lcom/android/server/BatteryService;
    .end local v13           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v14           #dockF:Lcom/android/server/DockObserver;
    .end local v15           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v16           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v17           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v18           #safeMode:Z
    .end local v19           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v20           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v21           #locationF:Lcom/android/server/LocationManagerService;
    .end local v22           #throttleF:Lcom/android/server/ThrottleService;
    .end local v23           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v26           #bluetooth:Landroid/server/BluetoothService;
    .end local v28           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v30           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v32           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v33           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v35           #dock:Lcom/android/server/DockObserver;
    .end local v38           #factoryTest:I
    .end local v40           #headset:Lcom/android/server/HeadsetObserver;
    .end local v42           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v44           #lights:Lcom/android/server/LightsService;
    .end local v46           #location:Lcom/android/server/LocationManagerService;
    .end local v48           #notification:Lcom/android/server/NotificationManagerService;
    .end local v50           #pm:Landroid/content/pm/IPackageManager;
    .end local v52           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v54           #statusBar:Lcom/android/server/status/StatusBarService;
    .end local v56           #throttle:Lcom/android/server/ThrottleService;
    .end local v58           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v60           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v62           #wm:Lcom/android/server/WindowManagerService;
    :cond_4
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v38, v5

    goto/16 :goto_0

    .line 130
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v25       #battery:Lcom/android/server/BatteryService;
    .restart local v26       #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v32       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v35       #dock:Lcom/android/server/DockObserver;
    .restart local v38       #factoryTest:I
    .restart local v40       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    .restart local v50       #pm:Landroid/content/pm/IPackageManager;
    .restart local v52       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v56       #throttle:Lcom/android/server/ThrottleService;
    .restart local v58       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v62       #wm:Lcom/android/server/WindowManagerService;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 143
    :catch_0
    move-exception v5

    move-object/from16 v37, v5

    .line 144
    .local v37, e:Ljava/lang/Throwable;
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_1

    goto/16 :goto_2

    .line 231
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v7, v25

    .line 232
    .end local v25           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v37, e:Ljava/lang/RuntimeException;
    :goto_25
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 148
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v37           #e:Ljava/lang/RuntimeException;
    .restart local v25       #battery:Lcom/android/server/BatteryService;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 181
    .end local v25           #battery:Lcom/android/server/BatteryService;
    .end local v44           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v45       #lights:Lcom/android/server/LightsService;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 208
    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v38

    move v1, v5

    if-ne v0, v1, :cond_9

    .line 209
    :try_start_2f
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_5

    .line 231
    :catch_2
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v44, v45

    .end local v45           #lights:Lcom/android/server/LightsService;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    goto :goto_25

    .line 212
    .end local v44           #lights:Lcom/android/server/LightsService;
    .restart local v45       #lights:Lcom/android/server/LightsService;
    :cond_9
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v27, Landroid/server/BluetoothService;

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_2

    .line 214
    .end local v26           #bluetooth:Landroid/server/BluetoothService;
    .restart local v27       #bluetooth:Landroid/server/BluetoothService;
    :try_start_30
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 215
    invoke-virtual/range {v27 .. v27}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 216
    new-instance v29, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v29

    move-object v1, v6

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_2a

    .line 217
    .end local v28           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v29       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_31
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    new-instance v31, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v31

    move-object v1, v6

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_2b

    .line 220
    .end local v30           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v31       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_32
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_2c

    move-object/from16 v30, v31

    .end local v31           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v30       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v28, v29

    .end local v29           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v28       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v26, v27

    .end local v27           #bluetooth:Landroid/server/BluetoothService;
    .restart local v26       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_5

    .line 248
    .end local v45           #lights:Lcom/android/server/LightsService;
    .restart local v23       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v33       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v42       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    .restart local v46       #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v54       #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v60       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v5

    move-object/from16 v37, v5

    .line 249
    .local v37, e:Ljava/lang/Throwable;
    :goto_26
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 256
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    move-object/from16 v37, v5

    .line 257
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_27
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 264
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    move-object/from16 v37, v5

    .line 265
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 272
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    move-object/from16 v37, v5

    .line 273
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_28
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 279
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    move-object/from16 v37, v5

    .line 280
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 287
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v5

    move-object/from16 v37, v5

    .line 288
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 295
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v5

    move-object/from16 v37, v5

    .line 296
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 304
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v5

    move-object/from16 v37, v5

    .line 305
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_29
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 312
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v5

    move-object/from16 v37, v5

    .line 313
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 323
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v5

    move-object/from16 v37, v5

    .line 324
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 331
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v5

    move-object/from16 v37, v5

    .line 332
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_2a
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 338
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v5

    move-object/from16 v37, v5

    .line 339
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DataRouter Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 347
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v5

    move-object/from16 v37, v5

    .line 348
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 355
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v5

    move-object/from16 v37, v5

    .line 356
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_2b
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 363
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v5

    move-object/from16 v37, v5

    .line 364
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 376
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v5

    move-object/from16 v37, v5

    .line 377
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 384
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v5

    move-object/from16 v37, v5

    .line 385
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_2c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 391
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v5

    move-object/from16 v37, v5

    .line 392
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 408
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v5

    move-object/from16 v37, v5

    .line 409
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 420
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v5

    move-object/from16 v37, v5

    .line 421
    .restart local v37       #e:Ljava/lang/Throwable;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    const-string v5, "SystemServer"

    const-string v9, "Failure starting RadioService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 432
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v5

    move-object/from16 v37, v5

    .line 433
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 440
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v5

    move-object/from16 v37, v5

    .line 441
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 448
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v5

    move-object/from16 v37, v5

    .line 449
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 456
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v5

    move-object/from16 v37, v5

    .line 457
    .restart local v37       #e:Ljava/lang/Throwable;
    :goto_2d
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 463
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v5

    move-object/from16 v37, v5

    .line 464
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 469
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v37

    .line 470
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure installing status bar icons"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 476
    .end local v37           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v5

    move-object/from16 v37, v5

    .line 477
    .restart local v37       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 485
    .end local v6           #context:Landroid/content/Context;
    .end local v37           #e:Ljava/lang/Throwable;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 509
    .restart local v18       #safeMode:Z
    :cond_b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_23

    .line 529
    :catch_1e
    move-exception v5

    goto/16 :goto_24

    .line 505
    :catch_1f
    move-exception v5

    goto/16 :goto_23

    .line 456
    .end local v18           #safeMode:Z
    .end local v23           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v24       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_20
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v23, v24

    .end local v24           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v23       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_2d

    .line 384
    .end local v60           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v61       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_21
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v60, v61

    .end local v61           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v60       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_2c

    .line 355
    .end local v46           #location:Lcom/android/server/LocationManagerService;
    .restart local v47       #location:Lcom/android/server/LocationManagerService;
    :catch_22
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v46, v47

    .end local v47           #location:Lcom/android/server/LocationManagerService;
    .restart local v46       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_2b

    .line 331
    .end local v48           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v49       #notification:Lcom/android/server/NotificationManagerService;
    :catch_23
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v48, v49

    .end local v49           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v48       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_2a

    .line 304
    .end local v56           #throttle:Lcom/android/server/ThrottleService;
    .restart local v57       #throttle:Lcom/android/server/ThrottleService;
    :catch_24
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v56, v57

    .end local v57           #throttle:Lcom/android/server/ThrottleService;
    .restart local v56       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_29

    .line 272
    .end local v42           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v43       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_25
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v42, v43

    .end local v43           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v42       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_28

    .line 256
    .end local v54           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v55       #statusBar:Lcom/android/server/status/StatusBarService;
    :catch_26
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v54, v55

    .end local v55           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v54       #statusBar:Lcom/android/server/status/StatusBarService;
    goto/16 :goto_27

    .line 248
    .end local v33           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v34       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_27
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v33, v34

    .end local v34           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v33       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_26

    .line 231
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v23           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v33           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v42           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v46           #location:Lcom/android/server/LocationManagerService;
    .end local v48           #notification:Lcom/android/server/NotificationManagerService;
    .end local v54           #statusBar:Lcom/android/server/status/StatusBarService;
    .end local v60           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v25       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #power:Lcom/android/server/PowerManagerService;
    :catch_28
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v7, v25

    .end local v25           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v51

    .end local v51           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_25

    :catch_29
    move-exception v5

    move-object/from16 v37, v5

    goto/16 :goto_25

    .end local v26           #bluetooth:Landroid/server/BluetoothService;
    .end local v44           #lights:Lcom/android/server/LightsService;
    .restart local v27       #bluetooth:Landroid/server/BluetoothService;
    .restart local v45       #lights:Lcom/android/server/LightsService;
    :catch_2a
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v26, v27

    .end local v27           #bluetooth:Landroid/server/BluetoothService;
    .restart local v26       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #lights:Lcom/android/server/LightsService;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_25

    .end local v26           #bluetooth:Landroid/server/BluetoothService;
    .end local v28           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v44           #lights:Lcom/android/server/LightsService;
    .restart local v27       #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v45       #lights:Lcom/android/server/LightsService;
    :catch_2b
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v28, v29

    .end local v29           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v28       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v26, v27

    .end local v27           #bluetooth:Landroid/server/BluetoothService;
    .restart local v26       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #lights:Lcom/android/server/LightsService;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_25

    .end local v26           #bluetooth:Landroid/server/BluetoothService;
    .end local v28           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v30           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v44           #lights:Lcom/android/server/LightsService;
    .restart local v27       #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v45       #lights:Lcom/android/server/LightsService;
    :catch_2c
    move-exception v5

    move-object/from16 v37, v5

    move-object/from16 v30, v31

    .end local v31           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v30       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v28, v29

    .end local v29           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v28       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v26, v27

    .end local v27           #bluetooth:Landroid/server/BluetoothService;
    .restart local v26       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v44, v45

    .end local v45           #lights:Lcom/android/server/LightsService;
    .restart local v44       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_25
.end method
