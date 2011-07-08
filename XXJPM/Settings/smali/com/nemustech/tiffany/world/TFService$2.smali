.class Lcom/nemustech/tiffany/world/TFService$2;
.super Lcom/nemustech/tiffany/world/ITFServiceFrom$Stub;
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
    .line 67
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFService$2;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-direct {p0}, Lcom/nemustech/tiffany/world/ITFServiceFrom$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlock()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/nemustech/tiffany/world/TFService;->access$200()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBound()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$2;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFService;->access$400(Lcom/nemustech/tiffany/world/TFService;)Z

    move-result v0

    return v0
.end method

.method public setPathFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$2;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/world/TFService;->access$002(Lcom/nemustech/tiffany/world/TFService;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$2;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0, p2}, Lcom/nemustech/tiffany/world/TFService;->access$102(Lcom/nemustech/tiffany/world/TFService;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$2;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFService;->access$300(Lcom/nemustech/tiffany/world/TFService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFService$2;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFService;->access$300(Lcom/nemustech/tiffany/world/TFService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    return-void
.end method
