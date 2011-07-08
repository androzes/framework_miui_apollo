.class Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mLastFlingYTime:I

.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field private mSecondLastFlingY:I

.field private mSecondLastFlingYTime:I

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 2679
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2680
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {p1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 2681
    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2709
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->reportScrollStateChange(I)V

    .line 2710
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1000(Lcom/nemustech/tiffany/widget/TFAbsListView;)V

    .line 2711
    return-void
.end method

.method private updateFlingSpeedInfo(II)V
    .locals 1
    .parameter "curCalcPos"
    .parameter "curCalcTime"

    .prologue
    .line 2831
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingY:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mSecondLastFlingY:I

    .line 2832
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingYTime:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    .line 2833
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingY:I

    .line 2834
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingYTime:I

    .line 2835
    return-void
.end method


# virtual methods
.method getLastFlingSpeed()I
    .locals 3

    .prologue
    .line 2817
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2818
    const/4 v1, 0x0

    .line 2826
    :goto_0
    return v1

    .line 2821
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingYTime:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    sub-int v0, v1, v2

    .line 2822
    .local v0, timePassed:I
    if-gtz v0, :cond_1

    .line 2823
    const/16 v0, 0x64

    .line 2826
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingY:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mSecondLastFlingY:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 2714
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    .line 2812
    :cond_0
    :goto_0
    return-void

    .line 2718
    :cond_1
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mItemCount:I

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_3

    .line 2719
    :cond_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 2723
    :cond_3
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v7, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    .line 2724
    .local v7, prevExcessScroll:I
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 2725
    .local v8, scroller:Lcom/nemustech/tiffany/widget/TFScroller;
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    move-result v4

    .line 2726
    .local v4, more:Z
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v9

    .line 2730
    .local v9, y:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v10, v9

    .line 2735
    .local v0, delta:I
    if-lez v0, :cond_8

    .line 2737
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v11, v11, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    iput v11, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2738
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2739
    .local v1, firstView:Landroid/view/View;
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2742
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1100(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1200(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v12

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2755
    .end local v1           #firstView:Landroid/view/View;
    :goto_1
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10, v0, v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->trackMotionScroll(II)V

    .line 2758
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v11, v11, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    iget-object v12, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v12, v12, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2759
    .local v5, motionView:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 2762
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v11, v11, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewNewTop:I

    if-eq v10, v11, :cond_4

    .line 2763
    const/4 v4, 0x0

    .line 2769
    :cond_4
    if-gtz v7, :cond_5

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-lt v10, v7, :cond_6

    :cond_5
    if-ltz v7, :cond_7

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-le v10, v7, :cond_7

    .line 2773
    :cond_6
    const/4 v4, 0x0

    .line 2776
    :cond_7
    if-eqz v4, :cond_9

    .line 2777
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 2781
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFScroller;->timePassed()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->updateFlingSpeedInfo(II)V

    .line 2783
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2745
    .end local v5           #motionView:Landroid/view/View;
    :cond_8
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildCount()I

    move-result v10

    sub-int v6, v10, v12

    .line 2746
    .local v6, offsetToLast:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v11, v11, Lcom/nemustech/tiffany/widget/TFAbsListView;->mFirstPosition:I

    add-int/2addr v11, v6

    iput v11, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionPosition:I

    .line 2748
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10, v6}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2749
    .local v3, lastView:Landroid/view/View;
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mMotionViewOriginalTop:I

    .line 2752
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1300(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1400(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v12

    neg-int v10, v10

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2785
    .end local v3           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v5       #motionView:Landroid/view/View;
    :cond_9
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->endFling()V

    .line 2797
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mBlockExcessScroll:Z

    if-nez v10, :cond_0

    .line 2798
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->getLastFlingSpeed()I

    move-result v2

    .line 2803
    .local v2, lastFlingSpeed:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$1500(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v11

    if-le v10, v11, :cond_a

    .line 2804
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-static {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$900(Lcom/nemustech/tiffany/widget/TFAbsListView;)Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollDecelerateRunnable;->start(I)V

    goto/16 :goto_0

    .line 2806
    :cond_a
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScroll:I

    if-eqz v10, :cond_0

    .line 2807
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v10, v10, Lcom/nemustech/tiffany/widget/TFAbsListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsListView$ExcessScrollRecoverRunnable;->start()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 2689
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mSecondLastFlingYTime:I

    .line 2691
    if-gez p1, :cond_0

    move v2, v6

    .line 2692
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mLastFlingY:I

    .line 2694
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 2696
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2697
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2705
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2691
    goto :goto_0
.end method
