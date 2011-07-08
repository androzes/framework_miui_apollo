.class Lcom/nemustech/tiffany/world/TFPageFlipper$6;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFPageFlipper;->setDragAmount(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

.field final synthetic val$final_degree:I

.field final synthetic val$final_t:F


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFPageFlipper;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$6;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    iput p2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$6;->val$final_degree:I

    iput p3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$6;->val$final_t:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$6;->this$0:Lcom/nemustech/tiffany/world/TFPageFlipper;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 396
    .local v0, curPagePanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 397
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$6;->val$final_degree:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 398
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper$6;->val$final_t:F

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 399
    return-void
.end method
