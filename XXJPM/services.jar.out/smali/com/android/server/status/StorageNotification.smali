.class public Lcom/android/server/status/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# static fields
.field private static final POP_UMS_ACTIVITY_ON_CONNECT:Z = true

.field private static final TAG:Ljava/lang/String; = "StorageNotification"

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field private static mMountService:Landroid/os/storage/IMountService;


# instance fields
.field private final MAX_BUFFER_SIZE:I

.field private final askOnStatusPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;

.field private final usbMenuSelPath:Ljava/lang/String;

.field private final usbStatePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "StorageNotification"

    .line 113
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 92
    const-string v1, "/sys/devices/virtual/switch/usb_mass_storage/state"

    iput-object v1, p0, Lcom/android/server/status/StorageNotification;->usbStatePath:Ljava/lang/String;

    .line 94
    const-string v1, "/sys/class/sec/switch/UsbMenuSel"

    iput-object v1, p0, Lcom/android/server/status/StorageNotification;->usbMenuSelPath:Ljava/lang/String;

    .line 95
    const-string v1, "/sys/class/sec/switch/AskOnStatus"

    iput-object v1, p0, Lcom/android/server/status/StorageNotification;->askOnStatusPath:Ljava/lang/String;

    .line 96
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/status/StorageNotification;->MAX_BUFFER_SIZE:I

    .line 114
    const-string v1, "StorageNotification"

    const-string v1, "StorageNotification :: "

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    .line 116
    const-string v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/status/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 117
    iget-object v1, p0, Lcom/android/server/status/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    .line 118
    const-string v1, "StorageNotification"

    const-string v1, "Startup with UMS connection %s (media state %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StorageNotification;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 122
    .local v0, mountService:Landroid/os/storage/IMountService;
    return-void
.end method

.method private declared-synchronized getMediaStorageNotificationDismissable()Z
    .locals 2

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    const-string v0, "StorageNotification"

    const-string v1, "getMediaStorageNotificationDismissable :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 637
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 104
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 109
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 106
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "StorageNotification"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getStateFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const-string v10, "StorageNotification"

    const-string v10, "IOException : "

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, in:Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 133
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 134
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 136
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 137
    aput-byte v8, v0, v2

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 143
    if-eqz v5, :cond_1

    .line 144
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    sub-int v9, v5, v9

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v6           #value:Ljava/lang/String;
    .local v7, value:Ljava/lang/String;
    move-object v6, v7

    .line 154
    .end local v7           #value:Ljava/lang/String;
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    move-object v3, v4

    .line 161
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_2
    return-object v6

    .line 146
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 147
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 148
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 155
    :catch_1
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 149
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 150
    .local v1, e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 151
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 155
    :catch_3
    move-exception v1

    goto :goto_4

    .line 153
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 154
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 153
    :goto_7
    throw v8

    .line 155
    :catch_4
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 155
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 156
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 149
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 146
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_7
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_3
.end method

.method private hideNotification(I)V
    .locals 6
    .parameter "id"

    .prologue
    const-string v5, "StorageNotification"

    .line 749
    const-string v3, "StorageNotification"

    const-string v3, "hideNotification"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 754
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 755
    const-string v3, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationManager is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_0
    return-void

    .line 759
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 760
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 761
    const/4 v3, 0x0

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 762
    iget v3, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 765
    :try_start_0
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final isActivityPlayStorageSounds()Z
    .locals 6

    .prologue
    const-string v5, "StorageNotification"

    .line 167
    const/4 v0, 0x0

    .line 170
    .local v0, bRet:Z
    :try_start_0
    sget-object v2, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPlayNotificationSounds()Z

    move-result v0

    .line 171
    :cond_0
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivityPlayStorageSounds :: bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return v0

    .line 172
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 173
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityPlayStorageSounds :: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isVolumeStateShared()Z
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, int_path:Ljava/lang/String;
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 182
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V
    .locals 14
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "sound"

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    const-string v11, "StorageNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMediaStorageNotification :: titleId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", messageId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", icon = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", visible = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dismissable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sound = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-nez p4, :cond_1

    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_1

    .line 746
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 683
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 686
    .local v8, notificationManager:Landroid/app/NotificationManager;
    if-eqz v8, :cond_0

    .line 690
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v11, :cond_2

    if-eqz p4, :cond_2

    .line 695
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v11, Landroid/app/Notification;->icon:I

    .line 696
    .local v7, notificationId:I
    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 699
    .end local v7           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 700
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 701
    .local v9, r:Landroid/content/res/Resources;
    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 702
    .local v10, title:Ljava/lang/CharSequence;
    move-object v0, v9

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 704
    .local v6, message:Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v11, :cond_3

    .line 705
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    iput-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 706
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v12, 0x0

    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 709
    :cond_3
    const/16 p7, 0x0

    .line 711
    invoke-static {}, Lcom/android/server/status/StorageNotification;->isActivityPlayStorageSounds()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p7, :cond_6

    .line 712
    const-string v11, "StorageNotification"

    const-string v12, "setMediaStorageNotification :: Play Inserted Sound"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-string v12, "system/media/audio/ui/Insert.ogg"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 724
    :goto_1
    if-eqz p5, :cond_7

    .line 725
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v12, 0x10

    iput v12, v11, Landroid/app/Notification;->flags:I

    .line 730
    :goto_2
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v10, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 731
    if-nez p6, :cond_4

    .line 732
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v5, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v5, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 736
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 737
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v12, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v0, v11

    move-object v1, v12

    move-object v2, v10

    move-object v3, v6

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 740
    .end local v6           #message:Ljava/lang/CharSequence;
    .end local v9           #r:Landroid/content/res/Resources;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_5
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v11, Landroid/app/Notification;->icon:I

    .line 741
    .restart local v7       #notificationId:I
    if-eqz p4, :cond_8

    .line 742
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v8, v7, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 676
    .end local v7           #notificationId:I
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 716
    .restart local v6       #message:Ljava/lang/CharSequence;
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    .restart local v9       #r:Landroid/content/res/Resources;
    .restart local v10       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    const-string v11, "StorageNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMediaStorageNotification :: Don\'t play Inserted Sound. sound is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v12, v11, Landroid/app/Notification;->defaults:I

    and-int/lit8 v12, v12, -0x2

    iput v12, v11, Landroid/app/Notification;->defaults:I

    .line 718
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v12, 0x0

    iput-object v12, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 727
    :cond_7
    iget-object v11, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v12, 0x2

    iput v12, v11, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 744
    .end local v6           #message:Ljava/lang/CharSequence;
    .end local v9           #r:Landroid/content/res/Resources;
    .end local v10           #title:Ljava/lang/CharSequence;
    .restart local v7       #notificationId:I
    :cond_8
    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setMediaStorageNotificationDummy(IZ)V
    .locals 6
    .parameter "icon"
    .parameter "sound"

    .prologue
    const-string v3, "StorageNotification"

    .line 641
    monitor-enter p0

    :try_start_0
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaStorageNotificationDummy :: icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sound = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :try_start_1
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 644
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 645
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v3, :cond_0

    .line 646
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 647
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 650
    :cond_0
    if-eqz v2, :cond_1

    .line 651
    move v1, p1

    .line 653
    .local v1, notificationId:I
    const/4 p2, 0x0

    .line 654
    invoke-static {}, Lcom/android/server/status/StorageNotification;->isActivityPlayStorageSounds()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 655
    const-string v3, "StorageNotification"

    const-string v4, "setMediaStorageNotification :: Play Inserted Sound"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-string v4, "system/media/audio/ui/Insert.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 663
    :goto_0
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 670
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 659
    .restart local v1       #notificationId:I
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    :cond_2
    :try_start_2
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaStorageNotification :: Don\'t play Inserted Sound. sound is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/app/Notification;->defaults:I

    .line 661
    iget-object v3, p0, Lcom/android/server/status/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 666
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 668
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 641
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 9
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    const-string v6, "StorageNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUsbStorageNotification :: titleId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", messageId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", icon = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sound = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", visible = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    if-nez p5, :cond_1

    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 628
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 582
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 585
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    .line 589
    if-eqz p5, :cond_4

    .line 590
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 591
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 593
    .local v5, title:Ljava/lang/CharSequence;
    if-nez p2, :cond_5

    .line 594
    const/4 v1, 0x0

    .line 599
    .local v1, message:Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v6, :cond_2

    .line 600
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 601
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v6, Landroid/app/Notification;->icon:I

    .line 602
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 605
    :cond_2
    if-eqz p4, :cond_6

    .line 606
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 611
    :goto_2
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 613
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 614
    if-nez p6, :cond_3

    .line 615
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v0, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 619
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 622
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v2, v6, Landroid/app/Notification;->icon:I

    .line 623
    .local v2, notificationId:I
    if-eqz p5, :cond_7

    .line 624
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    .end local v2           #notificationId:I
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 596
    .restart local v3       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/CharSequence;
    goto :goto_1

    .line 608
    :cond_6
    iget-object v6, p0, Lcom/android/server/status/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 626
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    .restart local v2       #notificationId:I
    :cond_7
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized updateUsbModeNotification(Z)V
    .locals 9
    .parameter "connected"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "Blocking"

    const-string v4, ", askOnMenu is "

    const-string v4, "StorageNotification"

    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_setting_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 519
    .local v3, usbSettingMode:I
    iget-object v4, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v7, v4, :cond_0

    move v0, v7

    .line 523
    .local v0, adbCheck:Z
    :goto_0
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUsbModeNotification :: connected is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", usbSettingMode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and adbCheck is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-nez v3, :cond_2

    .line 527
    if-ne v0, v7, :cond_1

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #adbCheck:Z
    :cond_0
    move v0, v8

    .line 519
    goto :goto_0

    .line 530
    .restart local v0       #adbCheck:Z
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbNotification(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 515
    .end local v0           #adbCheck:Z
    .end local v3           #usbSettingMode:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 532
    .restart local v0       #adbCheck:Z
    .restart local v3       #usbSettingMode:I
    :cond_2
    if-ne v3, v7, :cond_4

    .line 533
    if-ne v0, v7, :cond_3

    .line 534
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbNotification(Z)V

    goto :goto_1

    .line 538
    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 540
    :cond_5
    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    .line 541
    const-string v4, "/sys/class/sec/switch/UsbMenuSel"

    invoke-direct {p0, v4}, Lcom/android/server/status/StorageNotification;->getStateFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, usbMenu:Ljava/lang/String;
    const-string v4, "/sys/class/sec/switch/AskOnStatus"

    invoke-direct {p0, v4}, Lcom/android/server/status/StorageNotification;->getStateFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, askOnMenu:Ljava/lang/String;
    const-string v4, "[UsbMenuSel] ACM_MTP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Blocking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 545
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "choice SUMSUNG KIES :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-ne v0, v7, :cond_6

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 549
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbNotification(Z)V

    goto :goto_1

    .line 551
    :cond_7
    const-string v4, "[UsbMenuSel] MTP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Blocking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 552
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "choice MEDIA PLAYER :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-ne v0, v7, :cond_8

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 556
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbNotification(Z)V

    goto/16 :goto_1

    .line 558
    :cond_9
    const-string v4, "[UsbMenuSel] UMS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "Blocking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 559
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "choice USB MASS STORAGE :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 562
    :cond_a
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Other state :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 566
    .end local v1           #askOnMenu:Ljava/lang/String;
    .end local v2           #usbMenu:Ljava/lang/String;
    :cond_b
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown state :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 209
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStorageStateChanged :: Media { "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " } state changed from { "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " } -> { "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v4, "shared"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/server/status/UsbStorageActivity;

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 220
    .local v10, pi:Landroid/app/PendingIntent;
    const v5, 0x104034a

    const v6, 0x104034b

    const v7, 0x108008a

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/status/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 449
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v4, "pending"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    const-string v4, "StorageNotification"

    const-string v5, "Wait for Mount..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_2
    const-string v4, "checking"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    const v12, 0x104035f

    const v13, 0x1040360

    const v14, 0x10800ab

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 248
    :goto_1
    const v20, 0x10800ab

    .line 249
    .local v20, notificationId:I
    const v4, 0x10800ab

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->hideNotification(I)V

    goto :goto_0

    .line 242
    .end local v20           #notificationId:I
    :cond_3
    const v12, 0x104036d

    const v13, 0x104036e

    const v14, 0x10800ab

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_1

    .line 254
    :cond_4
    const-string v4, "mounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    const-string v4, "checking"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 260
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 261
    const v12, 0x104035f

    const v13, 0x1040360

    const v14, 0x10800ab

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 274
    :cond_5
    :goto_2
    const v20, 0x10800ab

    .line 275
    .restart local v20       #notificationId:I
    const v4, 0x10800ab

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->hideNotification(I)V

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 267
    .end local v20           #notificationId:I
    :cond_6
    const v12, 0x104036d

    const v13, 0x104036e

    const v14, 0x10800ab

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_2

    .line 280
    :cond_7
    const-string v4, "unmounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 287
    const-string v4, "shared"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "unmountable"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "pending"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 294
    :cond_8
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 301
    :cond_9
    const/16 v21, 0x0

    .line 303
    .local v21, safeUnmount:Z
    :try_start_0
    sget-object v4, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->getShowSafeUnmountNotification(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    .line 307
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 308
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_a

    .line 309
    const v12, 0x1040367

    const v13, 0x1040368

    const v14, 0x108007a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 318
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    .line 334
    :goto_5
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 335
    :try_start_1
    sget-object v4, Lcom/android/server/status/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/os/storage/IMountService;->setShowSafeUnmountNotification(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 337
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 315
    :cond_a
    const-string v4, "StorageNotification"

    const-string v5, "Maybe next state will be MEDIA_BAD_REMOVAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const v4, 0x108007a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotificationDummy(IZ)V

    goto :goto_4

    .line 320
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_c

    .line 321
    const v12, 0x1040375

    const v13, 0x1040376

    const v14, 0x108007a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 330
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto :goto_5

    .line 327
    :cond_c
    const-string v4, "StorageNotification"

    const-string v5, "Maybe next state will be MEDIA_BAD_REMOVAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_6

    .line 345
    .end local v21           #safeUnmount:Z
    :cond_d
    const-string v4, "StorageNotification"

    const-string v5, "Be receviced the msg \'MEDIA_UNMOUNTED\', but we still have connected ums"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 347
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 351
    :cond_e
    const-string v4, "nofs"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 356
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 357
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 358
    .restart local v10       #pi:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 360
    const v5, 0x1040361

    const v6, 0x1040362

    const v7, 0x108007b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 366
    :cond_f
    const v5, 0x104036f

    const v6, 0x1040370

    const v7, 0x108007b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 370
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 374
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_10
    const-string v4, "unmountable"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 379
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 380
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 381
    .restart local v10       #pi:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/internal/app/ExternalMediaFormatActivity;

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 382
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 383
    const v5, 0x1040363

    const v6, 0x1040364

    const v7, 0x108007b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 389
    :cond_11
    const v5, 0x1040371

    const v6, 0x1040372

    const v7, 0x108007b

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 393
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 397
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_12
    const-string v4, "removed"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 402
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 403
    const v12, 0x1040369

    const v13, 0x104036a

    const v14, 0x108007b

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 409
    const v20, 0x108007b

    .line 410
    .restart local v20       #notificationId:I
    const v4, 0x108007b

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->hideNotification(I)V

    .line 412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 413
    .end local v20           #notificationId:I
    :cond_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    const v12, 0x1040377

    const v13, 0x1040378

    const v14, 0x108007b

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 420
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 424
    :cond_14
    const-string v4, "bad_removal"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 429
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 430
    const v12, 0x1040365

    const v13, 0x1040366

    const v14, 0x108008a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 435
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 437
    :cond_15
    const v12, 0x1040373

    const v13, 0x1040374

    const v14, 0x108008a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/server/status/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 442
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 447
    :cond_16
    const-string v4, "StorageNotification"

    const-string v5, "Ignoring unknown state {%s}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 304
    .restart local v21       #safeUnmount:Z
    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 7
    .parameter "connected"

    .prologue
    const-string v6, "StorageNotification"

    .line 189
    const-string v2, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbMassStorageConnectionChanged :: connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-boolean p1, p0, Lcom/android/server/status/StorageNotification;->mUmsAvailable:Z

    .line 192
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, inter_st:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, exter_st:Ljava/lang/String;
    const-string v2, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state internal = %s, external = %s )"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p1, :cond_1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "checking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    const/4 p1, 0x0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/status/StorageNotification;->updateUsbModeNotification(Z)V

    .line 202
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 20
    .parameter "available"

    .prologue
    .line 455
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUsbMassStorageNotification :: available = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz p1, :cond_2

    .line 458
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 459
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-class v5, Lcom/android/server/status/UsbStorageActivity;

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    const/high16 v4, 0x1000

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 467
    .local v18, adbOn:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v19

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 468
    .local v10, pi:Landroid/app/PendingIntent;
    const v5, 0x1040347

    const v6, 0x1040348

    const v7, 0x10802b8

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/status/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 474
    if-nez v18, :cond_0

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 486
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v18           #adbOn:Z
    .end local v19           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 462
    .restart local v19       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_0

    .line 484
    .end local v19           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/server/status/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method updateUsbNotification(Z)V
    .locals 8
    .parameter "available"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v2, "StorageNotification"

    .line 492
    const-string v0, "StorageNotification"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsbNotification :: available = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/server/status/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 499
    .local v7, default_usb_setting_mode:I
    const-string v0, "StorageNotification"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default_usb_setting_mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz p1, :cond_1

    .line 502
    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    .line 503
    const v1, 0x1040347

    const v2, 0x1040349

    const v3, 0x10802b8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/status/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, v4

    move v2, v4

    move v3, v4

    move v5, v4

    .line 510
    invoke-direct/range {v0 .. v6}, Lcom/android/server/status/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
