.class Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;
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
    name = "ExcessScrollRecoverRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFAbsListView.ExcessScrollRecoverRunnable"


# instance fields
.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 3
    .parameter

    .prologue
    .line 2432
    iput-object p1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2492
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private getProperDuration(I)I
    .locals 1
    .parameter "distance"

    .prologue
    .line 2462
    mul-int/lit16 v0, p1, 0x96

    div-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2470
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$ExcessScrollDecelerateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2471
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2478
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 2479
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2480
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mExcessScroll:I

    .line 2485
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2486
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2489
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2490
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2439
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2443
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mExcessScroll:I

    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    neg-int v4, v3

    const/16 v5, 0x96

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2445
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2446
    return-void
.end method

.method public startAfterDecelerating()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2452
    invoke-virtual {p0}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->cancel()V

    .line 2456
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mExcessScroll:I

    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    neg-int v4, v3

    iget-object v3, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->getProperDuration(I)I

    move-result v5

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2458
    iget-object v0, p0, Landroid/widget/AbsListView$ExcessScrollRecoverRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2459
    return-void
.end method
