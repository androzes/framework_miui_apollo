.class public Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothPBAP.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPBAP"


# instance fields
.field private final mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 51
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 52
    iput-object p2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    .line 64
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 148
    return-void
.end method

.method public pbapServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;->pbapServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPBAP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 143
    int-to-byte v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, v0, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->pbapServerAccessRsp(BZLjava/lang/String;)V

    .line 144
    return-void
.end method
