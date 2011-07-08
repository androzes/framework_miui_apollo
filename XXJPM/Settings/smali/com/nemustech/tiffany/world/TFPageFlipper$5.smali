.class Lcom/nemustech/tiffany/world/TFPageFlipper$5;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->finishDrag(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

.field final synthetic val$f_canceled:Z

.field final synthetic val$f_duration:I


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    iput-boolean p2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_canceled:Z

    iput p3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 362
    .local v0, curPagePanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_canceled:Z

    if-ne v1, v5, :cond_1

    .line 363
    invoke-virtual {v0, v6}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 364
    const-string v1, "TFPageFlipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### finishDrag f_canceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_canceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_canceled:Z

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_duration:I

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 370
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1, v4}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1302(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)Z

    .line 378
    :goto_1
    return-void

    :cond_0
    move v2, v5

    .line 366
    goto :goto_0

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$1400(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 373
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_canceled:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$5;->val$f_duration:I

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2
.end method
