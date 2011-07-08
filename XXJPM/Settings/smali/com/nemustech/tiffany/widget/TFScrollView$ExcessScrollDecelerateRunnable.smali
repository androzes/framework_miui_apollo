.class Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;
.super Ljava/lang/Object;
.source "TFScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDecelerateRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFScrollView.ExcessScrollDecelerateRunnable"


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V
    .locals 4
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4220

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 788
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 771
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 775
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$300(Lcom/nemustech/tiffany/widget/TFScrollView;)Z

    .line 777
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 778
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->startAfterDecelerating()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "flingSpeed"

    .prologue
    const/4 v1, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 755
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I

    .line 757
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v8

    .line 759
    .local v8, height:I
    mul-int/lit8 v4, p1, -0x1

    .line 760
    .local v4, speed:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    neg-int v7, v8

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 766
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method
