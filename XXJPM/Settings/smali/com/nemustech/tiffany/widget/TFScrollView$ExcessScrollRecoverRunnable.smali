.class Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;
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
    name = "ExcessScrollRecoverRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFScrollView.ExcessScrollRecoverRunnable"


# instance fields
.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFScrollView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V
    .locals 3
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private getProperDuration(I)I
    .locals 1
    .parameter "distance"

    .prologue
    .line 711
    mul-int/lit16 v0, p1, 0x96

    div-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 719
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 720
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 729
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 730
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$200(Lcom/nemustech/tiffany/widget/TFScrollView;)Z

    .line 734
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 739
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 690
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I

    .line 691
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    neg-int v4, v3

    const/16 v5, 0x96

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 693
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 694
    return-void
.end method

.method public startAfterDecelerating()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 704
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I

    .line 705
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->mScroller:Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v2, v2, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    neg-int v4, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    iget v3, v3, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->getProperDuration(I)I

    move-result v5

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 707
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFScrollView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->post(Ljava/lang/Runnable;)Z

    .line 708
    return-void
.end method
