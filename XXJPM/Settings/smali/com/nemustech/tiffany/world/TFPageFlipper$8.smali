.class Lcom/nemustech/tiffany/world/TFPageFlipper$8;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 491
    const-string v1, "TFPageFlipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### onEffectFinish() mEffecting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1300(Lcom/nemustech/tiffany/world/TFPageFlipper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 495
    .local v0, curPagePanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 496
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->unlock()V

    .line 498
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1600(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$700(Lcom/nemustech/tiffany/world/TFPageFlipper;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1700(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)V

    .line 501
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1800(Lcom/nemustech/tiffany/world/TFPageFlipper;)I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1900(Lcom/nemustech/tiffany/world/TFPageFlipper;)I

    move-result v4

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$700(Lcom/nemustech/tiffany/world/TFPageFlipper;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$2000(Lcom/nemustech/tiffany/world/TFPageFlipper;IIZ)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1802(Lcom/nemustech/tiffany/world/TFPageFlipper;I)I

    .line 504
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$8;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$700(Lcom/nemustech/tiffany/world/TFPageFlipper;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$800(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)V

    .line 507
    :cond_0
    return-void
.end method
