.class Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDecelerateRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollDecelerateRunnable"


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 4
    .parameter

    .prologue
    .line 2494
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2539
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4220

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2533
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2534
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 2518
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2522
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2524
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2529
    :goto_0
    return-void

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->startAfterDecelerating()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "flingSpeed"

    .prologue
    const/4 v1, 0x0

    .line 2501
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 2502
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I

    .line 2504
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v8

    .line 2506
    .local v8, height:I
    mul-int/lit8 v4, p1, -0x1

    .line 2507
    .local v4, speed:I
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    neg-int v7, v8

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 2513
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2514
    return-void
.end method
