.class Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;
.super Ljava/lang/Object;
.source "OppEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/OppEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessInvoker"
.end annotation


# instance fields
.field mAccess:I

.field mFilePathName:Ljava/lang/String;

.field mOperation:I

.field final synthetic this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/opp/OppEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->this$0:Lcom/broadcom/bt/service/opp/OppEventLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/opp/OppEventLoop;Lcom/broadcom/bt/service/opp/OppEventLoop$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;-><init>(Lcom/broadcom/bt/service/opp/OppEventLoop;)V

    return-void
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 5
    .parameter "proxyObject"

    .prologue
    .line 423
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-object v1, v0

    .line 424
    .local v1, proxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    iget v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->mOperation:I

    iget v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->mAccess:I

    iget-object v4, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->mFilePathName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 425
    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V

    .line 426
    const/4 v1, 0x0

    .line 427
    return-void
.end method

.method public setAccess(IILjava/lang/String;)V
    .locals 0
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"

    .prologue
    .line 417
    iput p1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->mOperation:I

    .line 418
    iput p2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->mAccess:I

    .line 419
    iput-object p3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;->mFilePathName:Ljava/lang/String;

    .line 420
    return-void
.end method
