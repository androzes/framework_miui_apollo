.class public Lcom/broadcom/bt/service/sap/BluetoothSAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothSAP.java"


# static fields
.field private static final DBG:Z = false

.field public static final SAPS_DISCONNECT_TYPE_GRACEFUL:I = 0x0

.field public static final SAPS_DISCONNECT_TYPE_IMMEDIATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothSAP"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

.field private mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/sap/IBluetoothSAPService;Landroid/content/ServiceConnection;)V
    .locals 3
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 106
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 205
    new-instance v1, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/sap/BluetoothSAP$1;-><init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mCallback:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    .line 110
    iput-object p2, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    iget-object v2, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mCallback:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSAP"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    return-object v0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSAP"

    const-string v2, "disable() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnect(B)V
    .locals 3
    .parameter "type"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService;->disconnect(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSAP"

    const-string v2, "disconnect() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSAP"

    const-string v2, "enable() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 123
    return-void
.end method

.method public registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 135
    return-void
.end method

.method public unregisterEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    if-ne v0, p1, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "BluetoothSAP"

    const-string v1, "Failed to unregisterEventHandler - handler mismatch."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
