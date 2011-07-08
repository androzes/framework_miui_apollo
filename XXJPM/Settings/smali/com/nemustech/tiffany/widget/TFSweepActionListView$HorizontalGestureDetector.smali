.class Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;
.super Ljava/lang/Object;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HorizontalGestureDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDownX:F

.field private mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private mScrollStarted:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1719
    const-class v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;)V
    .locals 2
    .parameter "ctx"
    .parameter "l"

    .prologue
    .line 1734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mScrollStarted:Z

    .line 1735
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1736
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mTouchSlop:I

    .line 1737
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mMinimumFlingVelocity:I

    .line 1738
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mMaximumFlingVelocity:I

    .line 1739
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1740
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

    .line 1741
    sget-boolean v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1742
    :cond_0
    return-void
.end method


# virtual methods
.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1745
    const/4 v1, 0x0

    .line 1746
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1747
    .local v0, action:I
    if-nez v0, :cond_0

    .line 1748
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mDownX:F

    .line 1750
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mScrollStarted:Z

    .line 1753
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1755
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1756
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mScrollStarted:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mDownX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1757
    :cond_1
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mScrollStarted:Z

    .line 1758
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mDownX:F

    sub-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;->onScroll(F)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1762
    :cond_2
    if-ne v0, v6, :cond_3

    .line 1763
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1764
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 1765
    .local v2, velX:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mMinimumFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 1766
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

    invoke-interface {v3, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;->onFling(F)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1772
    .end local v2           #velX:F
    :cond_3
    :goto_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 1773
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

    invoke-interface {v3, v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;->onTouchUpNonFling(Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1776
    :cond_4
    return v1

    .line 1768
    .restart local v2       #velX:F
    :cond_5
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->mListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;

    invoke-interface {v3, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;->onTouchUpNonFling(Z)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0
.end method
