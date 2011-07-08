.class Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;
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
    name = "ExcessScrollRecoverRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollRecoverRunnable"


# instance fields
.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 3
    .parameter

    .prologue
    .line 2426
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2488
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-void
.end method

.method private getProperDuration(I)I
    .locals 1
    .parameter "distance"

    .prologue
    .line 2458
    mul-int/lit16 v0, p1, 0x96

    div-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2466
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2467
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    .line 2476
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2481
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2485
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2486
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2433
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2437
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I

    .line 2438
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    neg-int v4, v3

    const/16 v5, 0x96

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 2440
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2441
    return-void
.end method

.method public startAfterDecelerating()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2447
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2451
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$802(Lcom/nemustech/tiffany/widget/TFAbsListView;I)I

    .line 2452
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    neg-int v4, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->getProperDuration(I)I

    move-result v5

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 2454
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2455
    return-void
.end method
