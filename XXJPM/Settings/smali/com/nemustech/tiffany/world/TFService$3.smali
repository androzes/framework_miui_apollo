.class Lcom/nemustech/tiffany/world/TFService$3;
.super Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;
.source "TFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFService;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFService$3;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-direct {p0}, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isBound()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$3;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFService;->access$500(Lcom/nemustech/tiffany/world/TFService;)Z

    move-result v0

    return v0
.end method

.method public showBlockWindow(Z)V
    .locals 2
    .parameter "show"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$3;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFService;->access$300(Lcom/nemustech/tiffany/world/TFService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$3;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFService;->access$300(Lcom/nemustech/tiffany/world/TFService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
