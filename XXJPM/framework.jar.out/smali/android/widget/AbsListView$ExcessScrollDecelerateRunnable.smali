.class Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExcessScrollDecelerateRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollDecelerateRunnable"


# instance fields
.field private mScroller:Landroid/widget/TFScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 4
    .parameter

    .prologue
    .line 2497
    iput-object p1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2541
    new-instance v0, Landroid/widget/TFScroller;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4220

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;F)V

    iput-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2534
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2535
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2536
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2519
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    invoke-virtual {v0}, Landroid/widget/TFScroller;->computeScrollOffset()Z

    .line 2520
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    invoke-virtual {v1}, Landroid/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 2524
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    invoke-virtual {v0}, Landroid/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2525
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2526
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2531
    :goto_0
    return-void

    .line 2529
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mExcessScrollRecoverRunnable:Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->startAfterDecelerating()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "flingSpeed"

    .prologue
    const/4 v1, 0x0

    .line 2504
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->cancel()V

    .line 2506
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 2508
    .local v8, height:I
    mul-int/lit8 v4, p1, -0x1

    .line 2509
    .local v4, speed:I
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->mScroller:Landroid/widget/TFScroller;

    neg-int v7, v8

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/TFScroller;->fling(IIIIIIII)V

    .line 2515
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2516
    return-void
.end method
