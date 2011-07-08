.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFTPService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CONFIG_USE_MEDIA_SCANNER:Z = false

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothFTPService"


# instance fields
.field private mCurState:I

.field private mFtpNativeData:I

.field private mIsFinish:Z

.field private mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

.field private mSrvDeviceAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 95
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->classInitNative()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 88
    iput v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCurState:I

    .line 141
    iput v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCurState:I

    .line 142
    new-instance v0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    .line 143
    return-void
.end method

.method private FtpGetFileIsDRM(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    .line 275
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 277
    .local v1, mDrmManager:Landroid/drm/mobile2/OMADRMManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v1, p1}, Landroid/drm/mobile2/OMADRMManager;->isConvertedFL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "BluetoothFTPService"

    const-string v3, "onFtpServerAccessRequested: DRM file so can not send."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 280
    const/4 v2, 0x1

    .line 290
    :goto_0
    return v2

    .line 283
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 284
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 290
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 285
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 286
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 287
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 288
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupFtpNativeDataNative()V
.end method

.method private native closeFtpServerNative()V
.end method

.method private native disableFtpServerNative()V
.end method

.method private native enableDefaultFtpServerNative()V
.end method

.method private native enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
.end method

.method private native ftpServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native initFtpNativeDataNative()V
.end method

.method private onConnectStateChanged(B)V
    .locals 3
    .parameter "state"

    .prologue
    .line 243
    iget v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCurState:I

    if-eq v1, p1, :cond_0

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, intent:Landroid/content/Intent;
    iput p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCurState:I

    .line 247
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 249
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 252
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .locals 16
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"

    .prologue
    .line 296
    const-string v14, "/sdcard/telecom/pb.vcf"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "/sdcard/telecom/pb/info.log"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 301
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 303
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.broadcom.bt.service.ftp.action.FTP_PBAP_CONNECTION"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v7, ftsDialogIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    .end local v7           #ftsDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 308
    :cond_1
    packed-switch p4, :pswitch_data_0

    .line 370
    :cond_2
    :pswitch_0
    const-string v14, "service.brcm.bt.secure_mode"

    const-string v15, "property not found"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, mSecureModeProperty:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string/jumbo v14, "true"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 374
    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v9           #mSecureModeProperty:Ljava/lang/String;
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_2
    :try_start_0
    new-instance v5, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-direct {v5, v14}, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;-><init>(Landroid/content/Context;)V

    .line 321
    .local v5, bluetoothFtpVisibility:Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;->CreateVisibleFileList(Ljava/lang/String;)V

    .line 322
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v5           #bluetoothFtpVisibility:Lcom/broadcom/bt/service/ftp/BluetoothFTPVisibility;
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 324
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "BluetoothFTPService"

    const-string v15, "ftpServerAccessRspNative failed"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v6           #e:Ljava/lang/Exception;
    :pswitch_3
    const/4 v10, 0x0

    .line 333
    .local v10, path:Ljava/lang/String;
    const-string v14, "/"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 334
    .local v8, index:I
    if-lez v8, :cond_4

    .line 335
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 339
    :cond_4
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 340
    .local v11, stfs:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    move v0, v14

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 341
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    div-int v14, p2, v14

    add-int/lit8 v14, v14, 0x1

    int-to-long v12, v14

    .line 342
    .local v12, usableBlocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v14, v12

    if-gez v14, :cond_2

    .line 344
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 346
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.broadcom.bt.service.ftp.action.FTP_SD_FULL"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v7       #ftsDialogIntent:Landroid/content/Intent;
    const-string v14, "fileName"

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v14, "fileSize"

    move-object v0, v7

    move-object v1, v14

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v14, "opcode"

    move-object v0, v7

    move-object v1, v14

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 350
    const-string v14, "remoteDeviceName"

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 359
    .end local v7           #ftsDialogIntent:Landroid/content/Intent;
    .end local v8           #index:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #stfs:Landroid/os/StatFs;
    .end local v12           #usableBlocks:J
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->FtpGetFileIsDRM(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 360
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v14

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto/16 :goto_0

    .line 378
    .restart local v9       #mSecureModeProperty:Ljava/lang/String;
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v14, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v4, accessReqIntent:Landroid/content/Intent;
    const-string v14, "broadcom.android.bluetooth.intent.FILE_NAME"

    move-object v0, v4

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v14, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    move-object v0, v4

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v14, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    move-object v0, v4

    move-object v1, v14

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v14, "broadcom.android.bluetooth.intent.FILE_SIZE"

    move-object v0, v4

    move-object v1, v14

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v14, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    move-object v0, v4

    move-object v1, v14

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 387
    const-string v14, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v15, 0x3

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "android.permission.BLUETOOTH"

    invoke-virtual {v14, v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFtpServerAuthen(Ljava/lang/String;BZ)V
    .locals 0
    .parameter "user_id"
    .parameter "userid_length"
    .parameter "userid_required"

    .prologue
    .line 272
    return-void
.end method

.method private onFtpServerClosed()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onConnectStateChanged(B)V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mSrvDeviceAddr:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private onFtpServerDelCompleted(Ljava/lang/String;B)V
    .locals 3
    .parameter "file_name"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 419
    const-string v0, "BluetoothFTPService"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "BluetoothFTPService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFtpServerDelCompleted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    return-void
.end method

.method private onFtpServerDisabled()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 233
    return-void
.end method

.method private onFtpServerEnabled()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 228
    return-void
.end method

.method private onFtpServerFileTransferInProgress(II)V
    .locals 3
    .parameter "file_size"
    .parameter "num_of_byte_since_last_reported"

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 392
    const-string v0, "BluetoothFTPService"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "BluetoothFTPService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transferring file via FTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    return-void
.end method

.method private onFtpServerGetCompleted(Ljava/lang/String;B)V
    .locals 3
    .parameter "file_name"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 413
    const-string v0, "BluetoothFTPService"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "BluetoothFTPService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFtpServerGetCompleted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    return-void
.end method

.method private onFtpServerOpened(Ljava/lang/String;)V
    .locals 1
    .parameter "remoteAddress"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mSrvDeviceAddr:Ljava/lang/String;

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onConnectStateChanged(B)V

    .line 259
    return-void
.end method

.method private onFtpServerPutCompleted(Ljava/lang/String;B)V
    .locals 5
    .parameter "file_name"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 398
    const-string v2, "BluetoothFTPService"

    const/4 v2, 0x4

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerPutCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .local v0, mFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->scanFiles(Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v0           #mFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 408
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized closeFtpServer()V
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServerNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "closeFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableFtpServer()V
    .locals 3

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServerNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "disableFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableDefaultFtpServer()V
    .locals 3

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServerNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "enableDefaultFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableFtpServer(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
    .locals 3
    .parameter "security_mask"
    .parameter "service_name"
    .parameter "root_path"
    .parameter "enable_authen"
    .parameter "realm_len"
    .parameter "realm"
    .parameter "app_id"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "enableFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->finish()V

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 115
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->cleanupFtpNativeDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to cleanup ftp service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 113
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mSrvDeviceAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mSrvDeviceAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "bluetooth_ftp"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->initFtpNativeDataNative()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServer()V

    .line 426
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServer()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mSrvDeviceAddr:Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onConnectStateChanged(B)V

    .line 433
    return-void
.end method
