.class public Lcom/nemustech/tiffany/widget/TFScrollView;
.super Landroid/widget/FrameLayout;
.source "TFScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;,
        Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final DEBUG_EXCESS_SCROLL:Z = false

.field protected static final EXCESS_SCROLL_MODE_DECELERATE:I = 0x1

.field protected static final EXCESS_SCROLL_MODE_DRAG:I = 0x0

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DECELERATE:I = 0x3

.field protected static final EXCESS_SCROLL_MODE_RECOVER_FROM_DRAG:I = 0x2

.field private static final EXCESS_SCROLL_RECOVER_DURATION:I = 0x96

.field private static final EXCESS_SCROLL_TENSION:F = 0.5f

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TFScrollView"


# instance fields
.field protected mBlockExcessScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field protected mExcessScroll:I

.field private mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

.field private mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

.field protected mExcessScrollEnabled:Z

.field private mExcessScrollMode:I

.field protected mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private mTFScrollViewMovedFocus:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 232
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 96
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 110
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    .line 126
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    .line 139
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 142
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$1;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$1;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    .line 194
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    .line 216
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    .line 219
    new-instance v1, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFScrollView;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    .line 237
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->initScrollView()V

    .line 239
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x105

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getIntArr(I)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFillViewport(Z)V

    .line 244
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 245
    return-void
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/widget/TFScrollView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFScrollView;)Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 341
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 343
    .end local v1           #childHeight:I
    :goto_0
    return v2

    .restart local v1       #childHeight:I
    :cond_0
    move v2, v5

    .line 341
    goto :goto_0

    .end local v1           #childHeight:I
    :cond_1
    move v2, v5

    .line 343
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1515
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1531
    :cond_0
    const/4 v0, 0x0

    .line 1541
    :goto_0
    return v0

    .line 1533
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 1539
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1541
    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1112
    if-eqz p1, :cond_0

    .line 1113
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1114
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 852
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 853
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 862
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 864
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 865
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 866
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 867
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 868
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 870
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 876
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v10, 0x1

    move v8, v10

    .line 879
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 881
    move-object v1, v5

    .line 882
    move v3, v8

    .line 865
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 876
    :cond_1
    const/4 v10, 0x0

    move v8, v10

    goto :goto_1

    .line 884
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v7, v10

    .line 889
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 890
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 896
    move-object v1, v5

    goto :goto_2

    .line 884
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v7, v10

    goto :goto_3

    .line 899
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 901
    move-object v1, v5

    .line 902
    const/4 v3, 0x1

    goto :goto_2

    .line 903
    :cond_7
    if-eqz v7, :cond_0

    .line 908
    move-object v1, v5

    goto :goto_2

    .line 915
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 822
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 823
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 825
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    move-object v3, p3

    .line 831
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 288
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    .line 289
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setFocusable(Z)V

    .line 290
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 291
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->setWillNotDraw(Z)V

    .line 292
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 293
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    .line 294
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    .line 295
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    .line 296
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 1091
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1451
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1456
    :goto_0
    return v1

    .line 1455
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1456
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1100
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1102
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 999
    const/4 v3, 0x1

    .line 1001
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    .line 1002
    .local v4, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v1

    .line 1003
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1004
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    move v6, v9

    .line 1006
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1007
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1008
    move-object v5, p0

    .line 1011
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1012
    const/4 v3, 0x0

    .line 1018
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1019
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1020
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1023
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 1004
    goto :goto_0

    .line 1014
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v7, p2, v1

    move v2, v7

    .line 1015
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1014
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1253
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1255
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1257
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1258
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1260
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1271
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1272
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1273
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1274
    if-eqz p2, :cond_2

    .line 1275
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 1280
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1272
    goto :goto_0

    .line 1277
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 314
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 332
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TFScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1038
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1040
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1042
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1043
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1044
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1045
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1046
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    .line 1047
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1071
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1079
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestFocus()Z

    .line 1081
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->setDescendantFocusability(I)V

    .line 1083
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1050
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 1052
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1053
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v6

    .line 1065
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 1066
    goto :goto_1

    .line 1054
    :cond_4
    if-ne p1, v10, :cond_3

    .line 1055
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1056
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1058
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    .line 1060
    .local v5, screenBottom:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1061
    sub-int v6, v1, v5

    goto :goto_2

    .line 1068
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 1194
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1211
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1212
    .local v2, oldX:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1213
    .local v3, oldY:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1214
    .local v5, x:I
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1215
    .local v6, y:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 1216
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1217
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-direct {p0, v5, v7, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1218
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    .line 1220
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq v7, v6, :cond_1

    .line 1221
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v4

    .line 1222
    .local v4, velocity:F
    const-string v7, "TFScrollView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeScroll. bumped to limits. velocity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mScrollY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1224
    float-to-int v1, v4

    .line 1225
    .local v1, decelerationFlingSpeed:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-nez v7, :cond_0

    .line 1226
    mul-int/lit8 v1, v1, -0x1

    .line 1228
    :cond_0
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDecelerateRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;

    invoke-virtual {v7, v1}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollDecelerateRunnable;->start(I)V

    .line 1235
    .end local v0           #child:Landroid/view/View;
    .end local v1           #decelerationFlingSpeed:I
    .end local v4           #velocity:F
    :cond_1
    :goto_0
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne v2, v7, :cond_2

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq v3, v7, :cond_3

    .line 1236
    :cond_2
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v7, v8, v2, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->onScrollChanged(IIII)V

    .line 1240
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->postInvalidate()V

    .line 1242
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    return-void

    .line 1232
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_5
    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    .line 1233
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    goto :goto_0
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1292
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1346
    :goto_0
    return v7

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    .line 1295
    .local v3, height:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v5

    .line 1296
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1298
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1301
    .local v2, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 1302
    add-int/2addr v5, v2

    .line 1306
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1307
    sub-int/2addr v4, v2

    .line 1310
    :cond_2
    const/4 v6, 0x0

    .line 1312
    .local v6, scrollYDelta:I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_5

    .line 1317
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1319
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 1326
    :goto_1
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1327
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1328
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_3
    :goto_2
    move v7, v6

    .line 1346
    goto :goto_0

    .line 1322
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    .line 1330
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_3

    .line 1335
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1337
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1344
    :goto_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 1340
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_3
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    .line 1579
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 1581
    .local v0, extent:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1582
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1583
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1585
    .end local v1           #ratio:F
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 6

    .prologue
    .line 1590
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v2

    .line 1592
    .local v2, offset:I
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v5, :cond_0

    .line 1593
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 1594
    .local v3, savedExcessScroll:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v4

    .line 1595
    .local v4, shrinkedScrollExtent:I
    const/4 v5, 0x0

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 1596
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeVerticalScrollExtent()I

    move-result v1

    .line 1597
    .local v1, normalScrollExtent:I
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 1599
    sub-int v0, v1, v4

    .line 1601
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1603
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedExcessScroll:I
    .end local v4           #shrinkedScrollExtent:I
    :cond_0
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 1159
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1546
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-nez v3, :cond_1

    .line 1548
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 1549
    .local v0, height:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 1552
    .local v2, shift:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_0

    .line 1553
    mul-int/lit8 v2, v2, -0x1

    .line 1556
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1557
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1558
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1559
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1560
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1562
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1563
    .local v1, save1:I
    const/4 v3, 0x0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1567
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1569
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1574
    .end local v0           #height:F
    .end local v1           #save1:I
    .end local v2           #shift:I
    :goto_0
    return-void

    .line 1572
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 419
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 420
    const/4 v1, 0x1

    .line 422
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/widget/TFScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x21

    const/16 v4, 0x82

    .line 434
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 436
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 440
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 472
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 442
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 446
    goto :goto_0

    .line 449
    :cond_3
    const/4 v1, 0x0

    .line 450
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 472
    goto :goto_0

    .line 453
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 454
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 458
    goto :goto_1

    .line 460
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 461
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 463
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->fullScroll(I)Z

    move-result v1

    .line 465
    goto :goto_1

    .line 467
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1467
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1468
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int v10, v0, v1

    .line 1469
    .local v10, height:I
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1471
    .local v9, bottom:I
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v0, :cond_4

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int v8, v9, v10

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1478
    :goto_0
    if-lez p1, :cond_5

    move v11, v13

    .line 1480
    .local v11, movingDown:Z
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1482
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_1

    .line 1483
    move-object v12, p0

    .line 1486
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_2

    if-eqz v11, :cond_6

    const/16 v0, 0x82

    :goto_2
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1488
    iput-boolean v13, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1489
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    .line 1492
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 1493
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1495
    .end local v9           #bottom:I
    .end local v10           #height:I
    .end local v11           #movingDown:Z
    .end local v12           #newFocused:Landroid/view/View;
    :cond_3
    return-void

    .line 1474
    .restart local v9       #bottom:I
    .restart local v10       #height:I
    :cond_4
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    move v4, p1

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_5
    move v11, v3

    .line 1478
    goto :goto_1

    .line 1486
    .restart local v11       #movingDown:Z
    .restart local v12       #newFocused:Landroid/view/View;
    :cond_6
    const/16 v0, 0x21

    goto :goto_2
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 967
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    move v1, v6

    .line 968
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 970
    .local v2, height:I
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 971
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 973
    if-eqz v1, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 975
    .local v0, count:I
    if-lez v0, :cond_0

    .line 976
    sub-int v4, v0, v6

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 977
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 978
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 982
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v5

    .line 967
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 265
    const/4 v3, 0x0

    .line 275
    :goto_0
    return v3

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 269
    .local v1, length:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 270
    .local v0, bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    add-int v2, v3, v4

    .line 271
    .local v2, span:I
    if-ge v2, v1, :cond_2

    .line 272
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .end local v2           #span:I
    :cond_1
    move v4, v5

    .line 270
    goto :goto_1

    .line 275
    .restart local v2       #span:I
    :cond_2
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getExcessScrollDrawInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollDrawInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method protected getExcessScrollMode()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 283
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBottom:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 250
    const/4 v2, 0x0

    .line 259
    :goto_0
    return v2

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 254
    .local v0, length:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    :goto_1
    sub-int v1, v2, v3

    .line 255
    .local v1, span:I
    if-ge v1, v0, :cond_2

    .line 256
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    .line 254
    .end local v1           #span:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 259
    .restart local v1       #span:I
    :cond_2
    const/high16 v2, 0x3f80

    goto :goto_0
.end method

.method public isExcessScrollEnabled()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1170
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1173
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1175
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1176
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1181
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1183
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1186
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1189
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1190
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 489
    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 540
    :goto_0
    return v3

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v3, :cond_1

    .line 494
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    move v3, v4

    .line 495
    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 500
    .local v1, y:F
    packed-switch v0, :pswitch_data_0

    .line 540
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 511
    :pswitch_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 512
    .local v2, yDiff:I
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 513
    iput-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 519
    .end local v2           #yDiff:I
    :pswitch_1
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 526
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    .line 532
    :pswitch_2
    iput-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1416
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 1419
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1422
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1425
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollTo(II)V

    .line 1426
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 388
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 393
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 398
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getMeasuredHeight()I

    move-result v3

    .line 400
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 405
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 406
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 407
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 410
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1376
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1377
    const/16 p1, 0x82

    .line 1382
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1387
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1395
    :goto_2
    return v1

    .line 1378
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1379
    const/16 p1, 0x21

    goto :goto_0

    .line 1382
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1391
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1392
    goto :goto_2

    .line 1395
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1430
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1432
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1433
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/nemustech/tiffany/widget/TFScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1440
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1441
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1442
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1443
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v10

    .line 671
    :goto_0
    return v8

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->canScroll()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v8, :cond_1

    move v8, v10

    .line 553
    goto :goto_0

    .line 556
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_2

    .line 557
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 559
    :cond_2
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 561
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-nez v8, :cond_4

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v11, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 566
    :cond_3
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->start()V

    .line 570
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 579
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 580
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 582
    .local v7, y:F
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    move v8, v11

    .line 671
    goto :goto_0

    .line 584
    :pswitch_0
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollRecoverRunnable:Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFScrollView$ExcessScrollRecoverRunnable;->cancel()V

    .line 590
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    .line 591
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 595
    :cond_6
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    goto :goto_1

    .line 599
    :pswitch_1
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    sub-float/2addr v8, v7

    float-to-int v3, v8

    .line 600
    .local v3, deltaY:I
    iput v7, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastMotionY:F

    .line 602
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 606
    .local v5, prevExcessScroll:I
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    mul-int/2addr v8, v3

    if-lez v8, :cond_7

    .line 608
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v8, v9, :cond_c

    .line 609
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 610
    const/4 v3, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 618
    :cond_7
    :goto_2
    if-gez v3, :cond_f

    .line 619
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-lez v8, :cond_e

    .line 620
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v8, v3

    if-gez v8, :cond_d

    .line 621
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    add-int/2addr v8, v3

    neg-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 622
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    neg-int v8, v8

    invoke-virtual {p0, v10, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    .line 646
    :cond_8
    :goto_3
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mBlockExcessScroll:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    if-nez v8, :cond_a

    .line 647
    :cond_9
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 649
    :cond_a
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eqz v8, :cond_b

    .line 650
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollMode:I

    .line 652
    :cond_b
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    if-eq v8, v5, :cond_5

    .line 653
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars()Z

    goto :goto_1

    .line 613
    :cond_c
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    sub-int/2addr v3, v8

    .line 614
    iput v10, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    goto :goto_2

    .line 624
    :cond_d
    invoke-virtual {p0, v10, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_3

    .line 627
    :cond_e
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 628
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto :goto_3

    .line 630
    :cond_f
    if-lez v3, :cond_8

    .line 631
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int v2, v8, v9

    .line 632
    .local v2, bottomEdge:I
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int/2addr v8, v9

    sub-int v1, v8, v2

    .line 633
    .local v1, availableToScroll:I
    if-lez v1, :cond_11

    .line 634
    if-le v1, v3, :cond_10

    .line 635
    invoke-virtual {p0, v10, v3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_3

    .line 637
    :cond_10
    sub-int v8, v1, v3

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 638
    invoke-virtual {p0, v10, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_3

    .line 641
    :cond_11
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScroll:I

    .line 642
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    goto :goto_3

    .line 658
    .end local v1           #availableToScroll:I
    .end local v2           #bottomEdge:I
    .end local v3           #deltaY:I
    .end local v5           #prevExcessScroll:I
    :pswitch_2
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 659
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 660
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 662
    .local v4, initialVelocity:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mMinimumVelocity:I

    if-le v8, v9, :cond_12

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_12

    .line 663
    neg-int v8, v4

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFScrollView;->fling(I)V

    .line 666
    :cond_12
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 667
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 668
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 931
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    move v1, v7

    .line 932
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v2

    .line 934
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 935
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 936
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v0

    .line 937
    .local v0, count:I
    if-lez v0, :cond_0

    .line 938
    sub-int v4, v0, v7

    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 939
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 940
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 949
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 951
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v6

    .line 931
    goto :goto_0

    .line 944
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 945
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_0

    .line 946
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mTFScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1352
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1353
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1359
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1360
    return-void

    .line 1356
    :cond_1
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1402
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1405
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mIsLayoutDirty:Z

    .line 1411
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1412
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1504
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1505
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1506
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result p1

    .line 1507
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->clamp(III)I

    move-result p2

    .line 1508
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1509
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1512
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mExcessScrollEnabled:Z

    .line 203
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 364
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mFillViewport:Z

    .line 365
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->requestLayout()V

    .line 367
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mSmoothScrollingEnabled:Z

    .line 382
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1128
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1129
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1131
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFScrollView;->awakenScrollBars(I)Z

    .line 1132
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFScrollView;->invalidate()V

    .line 1139
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mLastScroll:J

    .line 1140
    return-void

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1135
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1137
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1149
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFScrollView;->smoothScrollBy(II)V

    .line 1150
    return-void
.end method
