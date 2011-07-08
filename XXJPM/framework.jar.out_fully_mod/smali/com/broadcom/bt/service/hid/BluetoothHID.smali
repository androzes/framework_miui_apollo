.class public final Lcom/broadcom/bt/service/hid/BluetoothHID;
.super Ljava/lang/Object;
.source "BluetoothHID.java"


# static fields
.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.broadcom.bt.service.hid.action.STATE_CHANGED"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.broadcom.bt.service.hid.extra.STATE"

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothHID"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mContext:Landroid/content/Context;

    .line 114
    const-string v1, "bluetooth_hid"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 116
    invoke-static {v0}, Lcom/broadcom/bt/service/hid/IBluetoothHID$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/hid/IBluetoothHID;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "BluetoothHID"

    const-string v2, "Bluetooth HID service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    goto :goto_0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const-string v3, "BluetoothHID"

    .line 133
    const-string v1, "BluetoothHID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const-string v3, "BluetoothHID"

    .line 149
    const-string v1, "BluetoothHID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    :goto_0
    return-object v1

    .line 236
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 244
    if-nez p1, :cond_0

    move v1, v4

    .line 253
    :goto_0
    return v1

    .line 249
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    const/4 v1, 0x1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 253
    goto :goto_0
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 5
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 272
    if-eqz p1, :cond_0

    if-lt p2, v2, :cond_0

    const/4 v1, 0x3

    if-le p2, v1, :cond_1

    :cond_0
    move v1, v4

    .line 281
    :goto_0
    return v1

    .line 277
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 278
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 280
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 281
    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 179
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5
    .parameter "device"
    .parameter "cData"

    .prologue
    const/4 v4, 0x0

    .line 302
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 311
    :goto_0
    return v1

    .line 307
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 310
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 311
    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    const/4 v4, 0x0

    .line 258
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v1, v4

    .line 267
    :goto_0
    return v1

    .line 263
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    const/4 v1, 0x1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 266
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 267
    goto :goto_0
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 5
    .parameter "device"
    .parameter "reportType"
    .parameter "cData"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 286
    if-eqz p1, :cond_0

    if-lt p2, v2, :cond_0

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 295
    :goto_0
    return v1

    .line 291
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 292
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothHID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v4

    .line 295
    goto :goto_0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const-string v3, "BluetoothHID"

    .line 164
    const-string v1, "BluetoothHID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "virtualUnplug("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHID;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHID;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHID;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHID"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
