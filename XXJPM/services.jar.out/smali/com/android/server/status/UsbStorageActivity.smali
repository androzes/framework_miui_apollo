.class public Lcom/android/server/status/UsbStorageActivity;
.super Landroid/app/Activity;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UsbStorageActivity"

.field static final localLOGV:Z = true


# instance fields
.field private mBanner:Landroid/widget/TextView;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mIcon:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMountButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUnmountButton:Landroid/widget/Button;

.field private final usbStatePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    const-string v0, "/sys/devices/virtual/switch/usb_mass_storage/state"

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->usbStatePath:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/server/status/UsbStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/UsbStorageActivity$1;-><init>(Lcom/android/server/status/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/android/server/status/UsbStorageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/status/UsbStorageActivity$2;-><init>(Lcom/android/server/status/UsbStorageActivity;)V

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/status/UsbStorageActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/status/UsbStorageActivity;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/status/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/status/UsbStorageActivity;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/status/UsbStorageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/status/UsbStorageActivity;->switchUsbMassStorageAsync(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/status/UsbStorageActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private checkStorageUsers()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v10, "UsbStorageActivity"

    .line 324
    invoke-direct {p0}, Lcom/android/server/status/UsbStorageActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 325
    .local v3, ims:Landroid/os/storage/IMountService;
    if-nez v3, :cond_0

    .line 327
    invoke-direct {p0, v9}, Lcom/android/server/status/UsbStorageActivity;->showDialogInner(I)V

    .line 330
    :cond_0
    const/4 v5, 0x0

    .line 349
    .local v5, showDialog:Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, extInterStoragePath:Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v6

    .line 352
    .local v6, stUsers1:[I
    if-eqz v6, :cond_2

    array-length v7, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v7, :cond_2

    .line 353
    const/4 v5, 0x1

    .line 368
    .end local v2           #extInterStoragePath:Ljava/lang/String;
    .end local v6           #stUsers1:[I
    :cond_1
    :goto_0
    if-eqz v5, :cond_3

    .line 370
    invoke-direct {p0, v8}, Lcom/android/server/status/UsbStorageActivity;->showDialogInner(I)V

    .line 411
    :goto_1
    return-void

    .line 356
    .restart local v2       #extInterStoragePath:Ljava/lang/String;
    .restart local v6       #stUsers1:[I
    :cond_2
    :try_start_1
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/server/status/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 357
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v4

    .line 358
    .local v4, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-lez v7, :cond_1

    .line 359
    const/4 v5, 0x1

    goto :goto_0

    .line 363
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #extInterStoragePath:Ljava/lang/String;
    .end local v4           #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #stUsers1:[I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 365
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v9}, Lcom/android/server/status/UsbStorageActivity;->showDialogInner(I)V

    goto :goto_0

    .line 372
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v7, "UsbStorageActivity"

    const-string v7, "onClick !!! (Enabling UMS)"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v7, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 375
    invoke-direct {p0, v8}, Lcom/android/server/status/UsbStorageActivity;->switchUsbMassStorageAsync(Z)V

    goto :goto_1

    .line 377
    :cond_4
    const-string v7, "UsbStorageActivity"

    const-string v7, "onClick :: Failed not connected ums mode or usb is ejected"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 266
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 267
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 268
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStateFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const-string v10, "UsbStorageActivity"

    const-string v10, "IOException : "

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, in:Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 225
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 226
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 228
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 229
    aput-byte v8, v0, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
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

    .line 234
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 235
    if-eqz v5, :cond_1

    .line 236
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

    .line 246
    .end local v7           #value:Ljava/lang/String;
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    move-object v3, v4

    .line 253
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_2
    return-object v6

    .line 238
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 239
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 240
    const-string v8, "UsbStorageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 247
    :catch_1
    move-exception v1

    .line 248
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 242
    .local v1, e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    const-string v8, "UsbStorageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 247
    :catch_3
    move-exception v1

    goto :goto_4

    .line 245
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 246
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 245
    :goto_7
    throw v8

    .line 247
    :catch_4
    move-exception v1

    .line 248
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 247
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 248
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_6

    .line 241
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 238
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

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 257
    const-string v1, "/sys/devices/virtual/switch/usb_mass_storage/state"

    invoke-direct {p0, v1}, Lcom/android/server/status/UsbStorageActivity;->getStateFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, usbState:Ljava/lang/String;
    const-string v1, "UsbStorageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBatteryChanged :: usbState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "ums online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/server/status/UsbStorageActivity;->finish()V

    .line 263
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/status/UsbStorageActivity;->removeDialog(I)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/status/UsbStorageActivity;->showDialog(I)V

    .line 301
    return-void
.end method

.method private switchDisplay(Z)V
    .locals 5
    .parameter "usbStorageInUse"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 169
    const-string v0, "UsbStorageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchDisplay :: usbStorageInUse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x108036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x104034c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x104034d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    const v1, 0x108036c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    const v1, 0x1040343

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    const v1, 0x1040344

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private switchUsbMassStorageAsync(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/16 v2, 0x8

    .line 304
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    move v0, p1

    .line 311
    .local v0, _on:Z
    new-instance v1, Lcom/android/server/status/UsbStorageActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/status/UsbStorageActivity$4;-><init>(Lcom/android/server/status/UsbStorageActivity;Z)V

    invoke-virtual {v1}, Lcom/android/server/status/UsbStorageActivity$4;->start()V

    .line 320
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 424
    const-string v0, "UsbStorageActivity"

    const-string v1, "onCancel !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Lcom/android/server/status/UsbStorageActivity;->finish()V

    .line 426
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/android/server/status/UsbStorageActivity;->checkStorageUsers()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 418
    const-string v0, "UsbStorageActivity"

    const-string v1, "onClick !!! (Disabling UMS)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->switchUsbMassStorageAsync(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const-string v1, "UsbStorageActivity"

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "UsbStorageActivity"

    const-string v0, "onCreate !!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 145
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "UsbStorageActivity"

    const-string v0, "Failed to get StorageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->requestWindowFeature(I)Z

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 153
    const v0, 0x1040342

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const v0, 0x109006f

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->setContentView(I)V

    .line 157
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mIcon:Landroid/widget/ImageView;

    .line 158
    const v0, 0x1020186

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mBanner:Landroid/widget/TextView;

    .line 159
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMessage:Landroid/widget/TextView;

    .line 161
    const v0, 0x1020220

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x1020221

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mUnmountButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 166
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const v3, 0x1040353

    const/4 v2, 0x0

    .line 275
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 295
    :goto_0
    return-object v0

    .line 277
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040350

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/status/UsbStorageActivity$3;

    invoke-direct {v1, p0}, Lcom/android/server/status/UsbStorageActivity$3;-><init>(Lcom/android/server/status/UsbStorageActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040351

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040352

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040346

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "UsbStorageActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/status/UsbStorageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 212
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 213
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const-string v4, "UsbStorageActivity"

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    const-string v1, "UsbStorageActivity"

    const-string v1, "onResume !!!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 193
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/status/UsbStorageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/status/UsbStorageActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/status/UsbStorageActivity;->switchDisplay(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 199
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "UsbStorageActivity"

    const-string v1, "Failed to read UMS enable state"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
