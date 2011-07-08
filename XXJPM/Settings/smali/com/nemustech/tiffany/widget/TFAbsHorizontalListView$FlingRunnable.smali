.class Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;
.super Ljava/lang/Object;
.source "TFAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;
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

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V
    .locals 2
    .parameter

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2513
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {p1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 2514
    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2539
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 2540
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1100(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)V

    .line 2541
    return-void
.end method

.method private updateFlingSpeedInfo(II)V
    .locals 1
    .parameter "curCalcPos"
    .parameter "curCalcTime"

    .prologue
    .line 2647
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingY:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mSecondLastFlingY:I

    .line 2648
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingYTime:I

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mSecondLastFlingYTime:I

    .line 2649
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingY:I

    .line 2650
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingYTime:I

    .line 2651
    return-void
.end method


# virtual methods
.method getLastFlingSpeed()I
    .locals 3

    .prologue
    .line 2633
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mSecondLastFlingYTime:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 2634
    const/4 v1, 0x0

    .line 2642
    :goto_0
    return v1

    .line 2637
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingYTime:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mSecondLastFlingYTime:I

    sub-int v0, v1, v2

    .line 2638
    .local v0, timePassed:I
    if-gtz v0, :cond_1

    .line 2639
    const/16 v0, 0x64

    .line 2642
    :cond_1
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingY:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mSecondLastFlingY:I

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2544
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1

    .line 2628
    :cond_0
    :goto_0
    return-void

    .line 2548
    :cond_1
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mItemCount:I

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_3

    .line 2549
    :cond_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 2553
    :cond_3
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 2554
    .local v7, scroller:Lcom/nemustech/tiffany/widget/TFScroller;
    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    move-result v4

    .line 2555
    .local v4, more:Z
    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrY()I

    move-result v8

    .line 2559
    .local v8, y:I
    iget v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    .line 2562
    .local v0, delta:I
    if-lez v0, :cond_5

    .line 2564
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    iput v10, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    .line 2565
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2566
    .local v1, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    .line 2569
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1200(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1300(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v11

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2582
    .end local v1           #firstView:Landroid/view/View;
    :goto_1
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9, v0, v0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->trackMotionScroll(II)V

    .line 2585
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v11, v11, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2586
    .local v5, motionView:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 2589
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_4

    .line 2590
    const/4 v4, 0x0

    .line 2594
    :cond_4
    if-eqz v4, :cond_6

    .line 2597
    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFScroller;->timePassed()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->updateFlingSpeedInfo(II)V

    .line 2599
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2572
    .end local v5           #motionView:Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildCount()I

    move-result v9

    sub-int v6, v9, v11

    .line 2573
    .local v6, offsetToLast:I
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v10, v10, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v6

    iput v10, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionPosition:I

    .line 2575
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9, v6}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2576
    .local v3, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mMotionViewOriginalTop:I

    .line 2579
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1400(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1500(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v11

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2601
    .end local v3           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v5       #motionView:Landroid/view/View;
    :cond_6
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 2613
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-boolean v9, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollEnabled:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-boolean v9, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mBlockExcessScroll:Z

    if-nez v9, :cond_0

    .line 2614
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->getLastFlingSpeed()I

    move-result v2

    .line 2619
    .local v2, lastFlingSpeed:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v10

    if-le v9, v10, :cond_7

    .line 2620
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-static {v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->access$1000(Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;)Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollDecelerateRunnable;->start(I)V

    goto/16 :goto_0

    .line 2622
    :cond_7
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget v9, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScroll:I

    if-eqz v9, :cond_0

    .line 2623
    iget-object v9, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    iget-object v9, v9, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$ExcessScrollRecoverRunnable;->start()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 2520
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mSecondLastFlingYTime:I

    .line 2522
    if-gez p1, :cond_0

    move v2, v6

    .line 2523
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mLastFlingY:I

    .line 2524
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 2526
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->mTouchMode:I

    .line 2527
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 2535
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2522
    goto :goto_0
.end method
