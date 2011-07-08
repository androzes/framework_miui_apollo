.class public Lcom/nemustech/tiffany/widget/TFPageLayout;
.super Landroid/widget/FrameLayout;
.source "TFPageLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;,
        Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;,
        Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DEBUG_TRANSITION:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_TRANSITION_GAP:I = 0xa

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POSITION:I = -0x80000000

.field protected static final SCROLL_UNIT:I = 0x64

.field public static final STYLE_PLAIN_SLIDE:I = 0x0

.field public static final STYLE_PSEUDO_3D_WALL:I = 0x1

.field public static final STYLE_ZOOM_SLIDE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TFPageLayout"

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAG:I = 0x2

.field private static final TOUCH_MODE_FLING:I = 0x3

.field private static final TOUCH_MODE_REST:I = 0x0

.field public static final VERTICAL:I = 0x1

.field public static final mNullPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

.field public static final mSimpleTextPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field mCurScrollPosition:I

.field mFlingRunnable:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

.field mHandler:Landroid/os/Handler;

.field private mLeftTopView:Landroid/view/View;

.field private mMainView:Landroid/view/View;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixScale:Landroid/graphics/Matrix;

.field private final mMinFlingVelocity:F

.field private mMotionDownScrollPosition:I

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mOrientation:I

.field private mOriginalPageIndex:I

.field private mPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

.field private mRatio:F

.field private mRectPos:Landroid/graphics/Rect;

.field private mRightBottomView:Landroid/view/View;

.field private mTouchMode:I

.field private final mTouchSlop:I

.field mTransitionActuallyStarted:Z

.field private mTransitionGap:I

.field private mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

.field private mTransitionStyle:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/nemustech/tiffany/widget/TFPageLayout$1;

    invoke-direct {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout$1;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mNullPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    .line 84
    new-instance v0, Lcom/nemustech/tiffany/widget/TFPageLayout$2;

    invoke-direct {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout$2;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mSimpleTextPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 345
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    .line 164
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    .line 165
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRectPos:Landroid/graphics/Rect;

    .line 169
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    .line 170
    iput-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionActuallyStarted:Z

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mHandler:Landroid/os/Handler;

    .line 173
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 177
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    .line 179
    sget-object v0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mSimpleTextPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    .line 180
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    .line 181
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    .line 182
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    .line 355
    new-instance v0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFPageLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    .line 356
    const/high16 v0, 0x4120

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    .line 358
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchSlop:I

    .line 359
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMinFlingVelocity:F

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFPageLayout;)Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFPageLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getMaxScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFPageLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/nemustech/tiffany/widget/TFPageLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFPageLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->onEndTransition()V

    return-void
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFPageLayout;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->setScrollPositionInt(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFPageLayout;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcPageIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFPageLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOriginalPageIndex:I

    return v0
.end method

.method private calcPageIndex(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 773
    add-int/lit8 v1, p1, 0x32

    div-int/lit8 v0, v1, 0x64

    .line 774
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 776
    :cond_0
    return v0
.end method

.method private calcTransitionZoomScale(ZF)F
    .locals 3
    .parameter "leftTop"
    .parameter "progressRatio"

    .prologue
    .line 422
    const v0, 0x3f19999a

    .line 424
    .local v0, MIN_SCALE:F
    if-eqz p1, :cond_0

    .line 425
    const/high16 v1, 0x3f80

    const v2, -0x41333334

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 427
    :goto_0
    return v1

    :cond_0
    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method private doDrag(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x42c8

    const v5, 0x3f4ccccd

    .line 742
    const v0, 0x3f4ccccd

    .line 744
    .local v0, CORRECTION_RATIO:F
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_0

    .line 745
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    .line 749
    :cond_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    if-nez v2, :cond_1

    .line 750
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownX:F

    sub-float/2addr v3, p1

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 755
    .local v1, newScrollPos:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->setScrollPositionInt(I)V

    .line 756
    return-void

    .line 752
    .end local v1           #newScrollPos:I
    :cond_1
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownY:F

    sub-float/2addr v3, p2

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v1, v2

    .restart local v1       #newScrollPos:I
    goto :goto_0
.end method

.method private endDrag()V
    .locals 4

    .prologue
    .line 767
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    add-int/lit8 v1, v1, 0x32

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v0, v1, 0x64

    .line 769
    .local v0, target:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    sub-int v2, v0, v2

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->startUsingDistance(II)V

    .line 770
    return-void
.end method

.method private fireTransitionStartNotification(I)V
    .locals 1
    .parameter "curIndex"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    if-eqz v0, :cond_0

    .line 805
    new-instance v0, Lcom/nemustech/tiffany/widget/TFPageLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFPageLayout$3;-><init>(Lcom/nemustech/tiffany/widget/TFPageLayout;I)V

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->post(Ljava/lang/Runnable;)Z

    .line 811
    :cond_0
    return-void
.end method

.method private getMaxScrollRange()I
    .locals 2

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getPageCount()I

    move-result v0

    .line 716
    .local v0, count:I
    if-nez v0, :cond_0

    .line 717
    const/4 v1, 0x0

    .line 719
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    mul-int/lit8 v1, v1, 0x64

    goto :goto_0
.end method

.method private getPageCount()I
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method private isExactPagePosition(I)Z
    .locals 1
    .parameter "scrollPosition"

    .prologue
    .line 370
    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v0, v0, 0x64

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEndTransition()V
    .locals 4

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionActuallyStarted:Z

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOriginalPageIndex:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getCurrentPageIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;->onTransitionEnd(IILandroid/view/View;)V

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getCurrentPageIndex()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOriginalPageIndex:I

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionActuallyStarted:Z

    .line 832
    return-void
.end method

.method private setScrollPositionInt(I)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x1

    .line 780
    if-gez p1, :cond_2

    .line 781
    const/4 p1, 0x0

    .line 789
    :cond_0
    :goto_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    if-eq v3, p1, :cond_1

    .line 790
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    .line 791
    .local v1, prevPos:I
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    .line 792
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->isExactPagePosition(I)Z

    move-result v2

    .line 793
    .local v2, prevPosExact:Z
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFPageLayout;->isExactPagePosition(I)Z

    move-result v0

    .line 794
    .local v0, newPosExact:Z
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->updatePagesVisibility()V

    .line 795
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->invalidate()V

    .line 796
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionActuallyStarted:Z

    if-nez v3, :cond_1

    .line 797
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionActuallyStarted:Z

    .line 798
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOriginalPageIndex:I

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFPageLayout;->fireTransitionStartNotification(I)V

    .line 801
    .end local v0           #newPosExact:Z
    .end local v1           #prevPos:I
    .end local v2           #prevPosExact:Z
    :cond_1
    return-void

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x64

    if-le p1, v3, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v4

    mul-int/lit8 p1, v3, 0x64

    goto :goto_0
.end method

.method private startDragIfNeeded(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, motionDistance:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    if-nez v2, :cond_1

    .line 726
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownX:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 731
    :goto_0
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchSlop:I

    if-le v0, v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 733
    .local v1, startDrag:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 734
    const/4 v2, 0x2

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFPageLayout;->doDrag(FF)V

    .line 737
    :cond_0
    return-void

    .line 728
    .end local v1           #startDrag:Z
    :cond_1
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownY:F

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0

    .line 731
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1
.end method

.method private transitionToPage(II)V
    .locals 4
    .parameter "index"
    .parameter "animationDuration"

    .prologue
    const/4 v3, 0x1

    .line 317
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    if-ge p2, v3, :cond_2

    .line 322
    const/16 p2, 0x384

    .line 324
    :cond_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getPageCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getPageCount()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 328
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getPageCount()I

    move-result v1

    sub-int p1, v1, v3

    .line 330
    :cond_3
    if-gez p1, :cond_4

    .line 331
    const/4 p1, 0x0

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getCurrentPageIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 337
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOriginalPageIndex:I

    .line 339
    mul-int/lit8 v0, p1, 0x64

    .line 340
    .local v0, newPosition:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, p2}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->startUsingDistance(II)V

    goto :goto_0
.end method

.method private updatePagesVisibility()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 374
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFPageLayout;->isExactPagePosition(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    .line 377
    iput-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    .line 378
    iput-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    .line 379
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_0
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 383
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    if-eq v3, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 385
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .end local v2           #index:I
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    div-int/lit8 v0, v4, 0x64

    .line 390
    .local v0, activeLeft:I
    add-int/lit8 v1, v0, 0x1

    .line 392
    .local v1, activeRight:I
    :goto_1
    if-gez v0, :cond_3

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 396
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 397
    add-int/lit8 v0, v0, -0x1

    .line 398
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 401
    :cond_4
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    .line 402
    iput-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    .line 403
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    .line 404
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    .line 405
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 406
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_5
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    .line 409
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #index:I
    :goto_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 412
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 413
    .restart local v3       #v:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-eq v3, v4, :cond_7

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-eq v3, v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 414
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 418
    .end local v0           #activeLeft:I
    .end local v1           #activeRight:I
    .end local v3           #v:Landroid/view/View;
    :cond_8
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 435
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getPageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRectPos:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 439
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRectPos:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 440
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRectPos:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 441
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRectPos:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 443
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRectPos:Landroid/graphics/Rect;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcPageIndex(I)I

    move-result v5

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    int-to-float v1, v1

    const/high16 v6, 0x42c8

    div-float v6, v1, v6

    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getPageCount()I

    move-result v7

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;->drawMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIFI)V

    .line 449
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, handle:Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 456
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 457
    .local v3, width_half:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 459
    .local v2, height_half:F
    neg-float v0, v3

    .line 461
    .local v0, Z_translation:F
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    if-nez v5, :cond_4

    .line 463
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    packed-switch v5, :pswitch_data_0

    .line 496
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    if-ne v5, p2, :cond_2

    .line 575
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 579
    return v1

    .line 465
    :pswitch_0
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    if-eq v5, p2, :cond_0

    .line 466
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-ne v5, p2, :cond_1

    .line 468
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 470
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 471
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v3, v2, v0}, Landroid/graphics/Camera;->translate(FFF)V

    .line 472
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x42b4

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 473
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v3

    const/4 v7, 0x0

    neg-float v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 474
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 475
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 476
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-ne v5, p2, :cond_0

    .line 480
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 482
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 483
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v3, v2, v0}, Landroid/graphics/Camera;->translate(FFF)V

    .line 484
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x42b4

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x42b4

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 485
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v3

    const/4 v7, 0x0

    neg-float v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 486
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 487
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 489
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 497
    :cond_2
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-ne v5, p2, :cond_3

    .line 499
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 500
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 501
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 502
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 503
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 505
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 506
    const/4 v5, 0x1

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    invoke-direct {p0, v5, v6}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcTransitionZoomScale(ZF)F

    move-result v4

    .line 507
    .local v4, zoom:F
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 510
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 513
    .end local v4           #zoom:F
    :cond_3
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-ne v5, p2, :cond_0

    .line 515
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 516
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x3f80

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 517
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 518
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 519
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 521
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 522
    const/4 v5, 0x0

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    invoke-direct {p0, v5, v6}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcTransitionZoomScale(ZF)F

    move-result v4

    .line 523
    .restart local v4       #zoom:F
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 526
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 533
    .end local v4           #zoom:F
    :cond_4
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    .line 536
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMainView:Landroid/view/View;

    if-eq v5, p2, :cond_0

    .line 537
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    if-ne v5, p2, :cond_5

    .line 540
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 541
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 542
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 543
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 544
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 546
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 547
    const/4 v5, 0x1

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    invoke-direct {p0, v5, v6}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcTransitionZoomScale(ZF)F

    move-result v4

    .line 548
    .restart local v4       #zoom:F
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 551
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 553
    .end local v4           #zoom:F
    :cond_5
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRightBottomView:Landroid/view/View;

    if-ne v5, p2, :cond_0

    .line 556
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 557
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/high16 v7, -0x4080

    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 558
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 559
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 560
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 562
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 563
    const/4 v5, 0x0

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mRatio:F

    invoke-direct {p0, v5, v6}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcTransitionZoomScale(ZF)F

    move-result v4

    .line 564
    .restart local v4       #zoom:F
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mLeftTopView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 567
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMatrixScale:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->calcPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    return v0
.end method

.method public getPageMarkerPainter()Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    return-object v0
.end method

.method public getPageTransitionListener()Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    return-object v0
.end method

.method public getTransitionGap()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 676
    .local v0, action:I
    if-nez v0, :cond_1

    .line 677
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 679
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-ne v3, v4, :cond_0

    move v3, v5

    .line 702
    :goto_0
    return v3

    :cond_0
    move v3, v6

    .line 682
    goto :goto_0

    .line 686
    :cond_1
    if-ne v0, v4, :cond_5

    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, motionDistance:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    if-nez v3, :cond_2

    .line 689
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    .line 694
    :goto_1
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchSlop:I

    if-le v1, v3, :cond_3

    move v2, v5

    .line 696
    .local v2, startDrag:Z
    :goto_2
    if-eqz v2, :cond_4

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-ne v3, v5, :cond_4

    move v2, v5

    .line 698
    :goto_3
    if-eqz v2, :cond_5

    move v3, v5

    .line 699
    goto :goto_0

    .line 691
    .end local v2           #startDrag:Z
    :cond_2
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v1, v3

    goto :goto_1

    :cond_3
    move v2, v6

    .line 694
    goto :goto_2

    .restart local v2       #startDrag:Z
    :cond_4
    move v2, v6

    .line 696
    goto :goto_3

    .end local v1           #motionDistance:I
    .end local v2           #startDrag:Z
    :cond_5
    move v3, v6

    .line 702
    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 364
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 366
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->updatePagesVisibility()V

    .line 367
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v8, -0x4080

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 589
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 590
    .local v2, action:I
    if-nez v2, :cond_0

    .line 591
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 596
    if-ne v2, v6, :cond_1

    .line 597
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 600
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 661
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-eqz v4, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->endDrag()V

    .line 669
    :cond_2
    :goto_0
    return v6

    .line 603
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownX:F

    .line 604
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownY:F

    .line 605
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    iput v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    .line 607
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 608
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    goto :goto_0

    .line 610
    :cond_3
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    goto :goto_0

    .line 614
    :pswitch_1
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-ne v4, v6, :cond_4

    .line 615
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/nemustech/tiffany/widget/TFPageLayout;->startDragIfNeeded(FF)V

    goto :goto_0

    .line 616
    :cond_4
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-ne v4, v7, :cond_2

    .line 617
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/nemustech/tiffany/widget/TFPageLayout;->doDrag(FF)V

    goto :goto_0

    .line 621
    :pswitch_2
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-ne v4, v7, :cond_a

    .line 623
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    if-nez v4, :cond_6

    .line 624
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 628
    .local v1, absVelocity:F
    :goto_1
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMinFlingVelocity:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_9

    .line 631
    const/4 v3, 0x0

    .line 632
    .local v3, velocity:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    if-nez v4, :cond_7

    .line 633
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v3, v4

    .line 640
    :goto_2
    const/16 v0, 0x1f4

    .line 642
    .local v0, VELOCITY_MAX:I
    const/high16 v4, 0x43fa

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    .line 643
    if-lez v3, :cond_8

    move v4, v6

    :goto_3
    mul-int/lit16 v3, v4, 0x1f4

    .line 647
    :cond_5
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mFlingRunnable:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    invoke-virtual {v4, v3}, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_0

    .line 626
    .end local v0           #VELOCITY_MAX:I
    .end local v1           #absVelocity:F
    .end local v3           #velocity:I
    :cond_6
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .restart local v1       #absVelocity:F
    goto :goto_1

    .line 635
    .restart local v3       #velocity:I
    :cond_7
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v3, v4

    goto :goto_2

    .line 643
    .restart local v0       #VELOCITY_MAX:I
    :cond_8
    const/4 v4, -0x1

    goto :goto_3

    .line 652
    .end local v0           #VELOCITY_MAX:I
    .end local v3           #velocity:I
    :cond_9
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->endDrag()V

    goto/16 :goto_0

    .line 654
    .end local v1           #absVelocity:F
    :cond_a
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTouchMode:I

    if-ne v4, v6, :cond_2

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFPageLayout;->isExactPagePosition(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 656
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->endDrag()V

    goto/16 :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/widget/TFPageLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCurrentPageIndex(IZ)V
    .locals 2
    .parameter "pageIndex"
    .parameter "animated"

    .prologue
    const/high16 v1, -0x8000

    .line 286
    if-nez p2, :cond_0

    .line 287
    mul-int/lit8 v0, p1, 0x64

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mCurScrollPosition:I

    .line 288
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->updatePagesVisibility()V

    .line 289
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    .line 290
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOriginalPageIndex:I

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->transitionToPage(II)V

    .line 293
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mMotionDownScrollPosition:I

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 199
    if-gez p1, :cond_1

    .line 200
    const/4 p1, 0x0

    .line 204
    :cond_0
    :goto_0
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mOrientation:I

    .line 205
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 202
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public setPageMarkerPainter(Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;)V
    .locals 0
    .parameter "painter"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mPageMarkerPainter:Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;

    .line 261
    return-void
.end method

.method public setPageTransitionListener(Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionListener:Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    .line 277
    return-void
.end method

.method public setTransitionGap(I)V
    .locals 0
    .parameter "transitionGap"

    .prologue
    .line 241
    if-gez p1, :cond_0

    .line 242
    const/4 p1, 0x0

    .line 244
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionGap:I

    .line 245
    return-void
.end method

.method public setTransitionStyle(I)V
    .locals 0
    .parameter "transitionStyle"

    .prologue
    .line 224
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout;->mTransitionStyle:I

    .line 225
    return-void
.end method
