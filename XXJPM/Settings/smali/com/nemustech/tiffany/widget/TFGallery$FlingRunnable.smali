.class Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "TFGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFGallery;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFGallery;)V
    .locals 2
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    new-instance v0, Lcom/nemustech/tiffany/widget/TFScroller;

    invoke-virtual {p1}, Lcom/nemustech/tiffany/widget/TFGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 1414
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1401
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;)Lcom/nemustech/tiffany/widget/TFScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFScroller;->forceFinished(Z)V

    .line 1455
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFGallery;->access$500(Lcom/nemustech/tiffany/widget/TFGallery;)V

    .line 1456
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1419
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1460
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    iget v5, v5, Lcom/nemustech/tiffany/widget/TFGallery;->mItemCount:I

    if-nez v5, :cond_0

    .line 1461
    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->endFling(Z)V

    .line 1499
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$602(Lcom/nemustech/tiffany/widget/TFGallery;Z)Z

    .line 1467
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    .line 1468
    .local v3, scroller:Lcom/nemustech/tiffany/widget/TFScroller;
    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFScroller;->computeScrollOffset()Z

    move-result v1

    .line 1469
    .local v1, more:Z
    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFScroller;->getCurrX()I

    move-result v4

    .line 1473
    .local v4, x:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1476
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 1478
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    iget v6, v6, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    invoke-static {v5, v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$702(Lcom/nemustech/tiffany/widget/TFGallery;I)I

    .line 1481
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFGallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$800(Lcom/nemustech/tiffany/widget/TFGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$900(Lcom/nemustech/tiffany/widget/TFGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1491
    :goto_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v5, v0}, Lcom/nemustech/tiffany/widget/TFGallery;->trackMotionScroll(I)V

    .line 1493
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v5}, Lcom/nemustech/tiffany/widget/TFGallery;->access$600(Lcom/nemustech/tiffany/widget/TFGallery;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1494
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mLastFlingX:I

    .line 1495
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v5, p0}, Lcom/nemustech/tiffany/widget/TFGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1484
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFGallery;->getChildCount()I

    move-result v5

    sub-int v2, v5, v7

    .line 1485
    .local v2, offsetToLast:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    iget v6, v6, Lcom/nemustech/tiffany/widget/TFGallery;->mFirstPosition:I

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$702(Lcom/nemustech/tiffany/widget/TFGallery;I)I

    .line 1488
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/widget/TFGallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$1000(Lcom/nemustech/tiffany/widget/TFGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v6}, Lcom/nemustech/tiffany/widget/TFGallery;->access$1100(Lcom/nemustech/tiffany/widget/TFGallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1497
    .end local v2           #offsetToLast:I
    :cond_2
    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1434
    if-nez p1, :cond_0

    .line 1441
    :goto_0
    return-void

    .line 1436
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->startCommon()V

    .line 1438
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mLastFlingX:I

    .line 1439
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v2}, Lcom/nemustech/tiffany/widget/TFGallery;->access$400(Lcom/nemustech/tiffany/widget/TFGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFScroller;->startScroll(IIIII)V

    .line 1440
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1422
    if-nez p1, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1424
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->startCommon()V

    .line 1426
    if-gez p1, :cond_1

    move v1, v6

    .line 1427
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mLastFlingX:I

    .line 1428
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->mScroller:Lcom/nemustech/tiffany/widget/TFScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/nemustech/tiffany/widget/TFScroller;->fling(IIIIIIII)V

    .line 1430
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_1
    move v1, v2

    .line 1426
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1445
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFGallery$FlingRunnable;->endFling(Z)V

    .line 1446
    return-void
.end method
