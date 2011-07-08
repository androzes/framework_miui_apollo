.class public Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.super Ljava/lang/Object;
.source "BluetoothServiceConfig.java"


# static fields
.field private static final ALLOW_FACTORY_TEST:Z = false

.field public static final BLUETOOTH_HID_SERVICE_ENABLED:Z = true

.field public static final DISABLE_SCAN_ON_PHONECALL:Z = false

.field public static final HID_TEST_MODE_ENABLED:Z = true

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_UNDEFINED:I = -0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field private static final SERVICES:[Ljava/lang/String; = null

.field private static final SERVICES_AVAILABLE:[Z = null

.field private static final SERVICES_STARTUP_ENABLED:[Z = null

.field static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field private static mBluetoothSupported:Z

.field private static final mFactoryTests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mSysContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_bpp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_dg_service"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_pbs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_fm_receiver_service"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 101
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mFactoryTests:Ljava/util/HashMap;

    return-void

    .line 85
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 101
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceType(Ljava/lang/String;)I
    .locals 1
    .parameter "btServiceName"

    .prologue
    .line 192
    const-string v0, "bluetooth_opp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_bpp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_pbs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_ftp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_dun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_sap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_fm_receiver_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x2

    .line 202
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .parameter "sysContext"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "bt_svcst_init"

    .line 161
    sput-object p0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    sput-boolean v5, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mBluetoothSupported:Z

    .line 169
    :cond_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 170
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, settingsExist:I
    if-nez v2, :cond_3

    .line 174
    const-string v3, "BluetoothServiceConfig"

    const-string v4, "*********Initializing Bluetooth Service Settings*******"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 178
    goto :goto_1

    .line 182
    :cond_2
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_3
    return-void
.end method

.method public static isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mBluetoothSupported:Z

    return v0
.end method

.method private static isFactoryTestModeSet(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public static isScanAllowed(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 285
    if-eqz p0, :cond_0

    .line 297
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isFactoryTestModeSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_svcst_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_0

    move v1, v4

    .line 276
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    move v1, v3

    .line 273
    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    move v1, v3

    .line 276
    goto :goto_0
.end method

.method public static isServiceEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "svcName"

    .prologue
    .line 262
    sget-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 211
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 213
    const/4 v1, 0x0

    .line 230
    :goto_1
    return v1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static setAllFactoryTestMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "ctx"
    .parameter "factoryTest"

    .prologue
    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 330
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mFactoryTests:Ljava/util/HashMap;

    sget-object v2, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method public static setFactoryTestMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "ctx"
    .parameter "svcName"
    .parameter "factoryTest"

    .prologue
    .line 322
    sget-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mFactoryTests:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void
.end method
