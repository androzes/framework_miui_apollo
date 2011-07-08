.class Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BluetoothServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BtServiceWrapper"
.end annotation


# instance fields
.field private mIsStarted:Z

.field private mService:Lcom/broadcom/bt/service/framework/IBtService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V
    .locals 0
    .parameter "svc"
    .parameter "isStarted"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mService:Lcom/broadcom/bt/service/framework/IBtService;

    .line 125
    iput-boolean p2, p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mService:Lcom/broadcom/bt/service/framework/IBtService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BluetoothServiceManager$BtServiceWrapper;->mIsStarted:Z

    return p1
.end method
