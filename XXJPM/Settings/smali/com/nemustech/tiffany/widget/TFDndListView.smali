.class public Lcom/nemustech/tiffany/widget/TFDndListView;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.source "TFDndListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFDndListView$1;,
        Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;,
        Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;,
        Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;,
        Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_AUTO_DRAG:Z = false

.field private static final DEBUG_DND_ACTION:Z = false

.field private static final DEBUG_TOUCH_EVENT:Z = false

.field private static final DND_EDGE_AUTO_DRAG_AREA_MAX_HEIGHT:I = 0x3c

.field private static final DND_EDGE_AUTO_DRAG_DELAY_CONTINUOUS:I = 0x32

.field private static final DND_EDGE_AUTO_DRAG_DELAY_INITIAL:I = 0x190

.field private static final DND_EDGE_AUTO_DRAG_SCROLL_DELTA:I = 0xa

.field private static final DND_EDGE_HITTEST_BOTTOM:I = 0x2

.field private static final DND_EDGE_HITTEST_NONE:I = 0x0

.field private static final DND_EDGE_HITTEST_TOP:I = 0x1

.field private static final DND_TOUCH_MODE_DOWN:I = 0x0

.field private static final DND_TOUCH_MODE_DRAG:I = 0x1

.field private static final DND_TOUCH_MODE_EDGE_AUTO_DRAG:I = 0x2

.field private static final DND_TOUCH_MODE_REST:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TFDndListView"


# instance fields
.field private mActuallyDrop:Z

.field private mBmpDragItemCache:Landroid/graphics/Bitmap;

.field private final mDensityScale:F

.field private mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

.field private mDndDragItemTouchOffsetX:I

.field private mDndDragItemTouchOffsetY:I

.field private mDndMode:Z

.field private mDndTouchMode:I

.field private mDndTouchX:I

.field private mDndTouchY:I

.field private mDragGrabHandleAnimationProgress:F

.field private mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

.field private mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragGrabHandlePosGravity:I

.field private mDragItemDestinationPosition:I

.field private mDragItemOriginalPosition:I

.field private mDragItemRectHeight:I

.field private mDropGranted:Z

.field private mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

.field private mPaintDndHandle:Landroid/graphics/Paint;

.field private mPaintItemCache:Landroid/graphics/Paint;

.field private mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserDragItem:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 193
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, -0x1

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 83
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 85
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    .line 97
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 98
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 104
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;Lcom/nemustech/tiffany/widget/TFDndListView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    .line 199
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    .line 203
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->makeDefaultGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    const/16 v0, 0x15

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    .line 207
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    .line 208
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFDndListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/nemustech/tiffany/widget/TFDndListView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFDndListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    return v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFDndListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFDndListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFDndListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/widget/TFDndListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFDndListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView;->findDropDestinationPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFDndListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/widget/TFDndListView;->adjustItemsYPosOffset(II)V

    return-void
.end method

.method static synthetic access$802(Lcom/nemustech/tiffany/widget/TFDndListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFDndListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkDropGranted()Z

    move-result v0

    return v0
.end method

.method private adjustItemsYPosOffset(II)V
    .locals 11
    .parameter "prevDestPosition"
    .parameter "newDestPosition"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 464
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDividerHeight:I

    add-int v1, v7, v8

    .line 465
    .local v1, HEIGHT:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 467
    .local v5, time:J
    if-le p2, p1, :cond_1

    .line 468
    move v3, p1

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 469
    const/4 v4, 0x0

    .line 470
    .local v4, t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 471
    .local v2, a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_0

    instance-of v7, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v7, :cond_0

    .line 472
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v4, v0

    .line 473
    neg-int v7, v1

    invoke-virtual {v4, v9, v9, v9, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 474
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgressWithoutDelay()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 480
    :goto_1
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 476
    :cond_0
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-direct {v4, v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 477
    .restart local v4       #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    neg-int v7, v1

    invoke-virtual {v4, v9, v9, v9, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 478
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_1

    .line 482
    .end local v2           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #i:I
    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_1
    if-ge p2, p1, :cond_3

    .line 483
    move v3, p2

    .restart local v3       #i:I
    :goto_2
    if-ge v3, p1, :cond_3

    .line 484
    const/4 v4, 0x0

    .line 485
    .restart local v4       #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 486
    .restart local v2       #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_2

    instance-of v7, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v7, :cond_2

    .line 487
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v4, v0

    .line 488
    invoke-virtual {v4, v9, v9, v9, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 489
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgressWithoutDelay()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    .line 495
    :goto_3
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 491
    :cond_2
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-direct {v4, v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;-><init>(Z)V

    .line 492
    .restart local v4       #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v4, v9, v9, v9, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->translate(IIII)V

    .line 493
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemAnimationDuration()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->start(JI)V

    goto :goto_3

    .line 498
    .end local v2           #a:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #i:I
    .end local v4           #t:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    :cond_3
    return-void
.end method

.method private buildDragItemCache(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "item"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, retBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getLastVisiblePosition()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 305
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 306
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 308
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 309
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 312
    .end local v0           #cache:Landroid/graphics/Bitmap;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private checkDropGranted()Z
    .locals 5

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDifferentDropPosition()Z

    move-result v0

    .line 503
    .local v0, actuallyMoved:Z
    if-eqz v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-interface {v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v1

    .local v1, dropGranted:Z
    move v2, v1

    .line 511
    .end local v1           #dropGranted:Z
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkStartDnd(III)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkDndGrabHandle(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    .line 281
    :goto_0
    return v1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    invoke-interface {v1, p3}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrag(I)Z

    move-result v0

    .local v0, granted:Z
    move v1, v0

    .line 281
    goto :goto_0
.end method

.method private drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 4
    .parameter "canvas"
    .parameter "childRect"
    .parameter "isDraggedItem"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 708
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getDragGrabHangleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 711
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 712
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 721
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 722
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 723
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    sget-object v1, Lcom/nemustech/tiffany/widget/TFDndListView;->PRESSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 724
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 726
    :cond_1
    return-void

    .line 715
    :cond_2
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimationProgress:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 723
    :cond_3
    sget-object v1, Lcom/nemustech/tiffany/widget/TFDndListView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private findDropDestinationPosition(I)I
    .locals 7
    .parameter "y"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildCount()I

    move-result v0

    .line 443
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 444
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 445
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 446
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, yPosAdjust:I
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mFirstPosition:I

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 450
    .local v2, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    if-eqz v5, :cond_0

    .line 451
    check-cast v2, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    .end local v2           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v4

    .line 454
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v4

    if-gt p1, v5, :cond_1

    .line 455
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mFirstPosition:I

    add-int/2addr v5, v1

    .line 460
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    .end local v4           #yPosAdjust:I
    :goto_1
    return v5

    .line 444
    .restart local v1       #i:I
    .restart local v3       #v:Landroid/view/View;
    .restart local v4       #yPosAdjust:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v3           #v:Landroid/view/View;
    .end local v4           #yPosAdjust:I
    :cond_2
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mFirstPosition:I

    add-int/2addr v5, v0

    goto :goto_1

    .line 460
    .end local v1           #i:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getDragGrabHangleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "childRect"
    .parameter "outGrabHandleRect"

    .prologue
    .line 698
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 700
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 702
    .local v0, drawableHeight:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 705
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :cond_0
    return-void
.end method

.method private getItemRectForPosition(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "item"

    .prologue
    .line 424
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getLastVisiblePosition()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, itemView:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 432
    .local v1, rc:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object v2, v1

    .line 438
    .end local v0           #itemView:Landroid/view/View;
    .end local v1           #rc:Landroid/graphics/Rect;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hittestAutoDragEdge(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeight()I

    move-result v1

    .line 876
    .local v1, listHeight:I
    div-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    const/high16 v3, 0x4270

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v0, v2

    .line 879
    .local v0, edgeAreaHeight:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 880
    const/4 v2, 0x1

    .line 884
    :goto_0
    return v2

    .line 881
    :cond_0
    sub-int v2, v1, v0

    if-le p1, v2, :cond_1

    if-ge p1, v1, :cond_1

    .line 882
    const/4 v2, 0x2

    goto :goto_0

    .line 884
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDifferentDropPosition()Z
    .locals 2

    .prologue
    .line 693
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkDndGrabHandle(III)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "itemPosition"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 286
    const/4 v1, 0x1

    .line 294
    :goto_0
    return v1

    .line 289
    :cond_0
    invoke-direct {p0, p3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemRectForPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 290
    .local v0, childRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getDragGrabHangleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 292
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 767
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 769
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintDndHandle:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 771
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintDndHandle:Landroid/graphics/Paint;

    .line 772
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintDndHandle:Landroid/graphics/Paint;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 777
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    if-nez v2, :cond_3

    .line 778
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    .line 780
    :cond_3
    const/4 v0, 0x0

    .line 781
    .local v0, draggedItemX:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetY:I

    sub-int v1, v2, v3

    .line 783
    .local v1, draggedItemY:I
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 784
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 795
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 796
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 797
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 798
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 800
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 823
    .end local v0           #draggedItemX:I
    .end local v1           #draggedItemY:I
    :cond_4
    return-void

    .line 789
    .restart local v0       #draggedItemX:I
    .restart local v1       #draggedItemY:I
    :cond_5
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mPaintItemCache:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/widget/TFDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 732
    .local v0, index:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 734
    .local v1, pos:I
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    if-ne v1, v2, :cond_0

    .line 736
    const/4 v2, 0x0

    .line 740
    .end local v0           #index:I
    .end local v1           #pos:I
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0
.end method

.method public getDndListener()Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    return-object v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, ret:Landroid/view/View;
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 168
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    const/high16 v4, -0x8000

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 827
    const/4 v8, 0x0

    .line 828
    .local v8, animate:Z
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eqz v2, :cond_2

    .line 829
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDataChanged:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 830
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    if-le v2, v3, :cond_2

    .line 831
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 832
    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 833
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 835
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 836
    iput v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 838
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 840
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 843
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    invoke-interface {v2}, Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;->OnDragAndDropStop()V

    .line 849
    :cond_1
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    .line 850
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    .line 852
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 853
    .local v9, cancel:Landroid/view/MotionEvent;
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFDndListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 861
    .end local v9           #cancel:Landroid/view/MotionEvent;
    :cond_2
    :goto_0
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    .line 862
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->layoutChildren()V

    .line 864
    if-eqz v8, :cond_3

    .line 865
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->setAnimationOnDataChangeEnabled(Z)V

    .line 866
    :cond_3
    return-void

    .line 855
    :cond_4
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isAnimationOnDataChangeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFDndListView;->setAnimationOnDataChangeEnabled(Z)V

    .line 857
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public makeDefaultGrabHandleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x4130

    const/high16 v5, 0x4110

    const/high16 v4, 0x4080

    const/high16 v3, 0x421c

    .line 1009
    const/16 v10, 0x27

    .line 1010
    .local v10, DEFAULT_GRAB_HANDLE_WIDTH:I
    const/16 v7, 0x27

    .line 1011
    .local v7, DEFAULT_GRAB_HANDLE_HEIGHT:I
    const/16 v8, 0x9

    .line 1012
    .local v8, DEFAULT_GRAB_HANDLE_PADDING_HORIZONTAL:I
    const/16 v9, 0xb

    .line 1013
    .local v9, DEFAULT_GRAB_HANDLE_PADDING_VERTICAL:I
    const/high16 v6, 0x4080

    .line 1015
    .local v6, DEFAULT_GRAB_HANDLE_CORNER_RADIUS:F
    new-instance v11, Landroid/graphics/drawable/PaintDrawable;

    const v2, -0x777778

    invoke-direct {v11, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1016
    .local v11, pdNormal:Landroid/graphics/drawable/PaintDrawable;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1017
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1018
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1020
    new-instance v12, Landroid/graphics/drawable/PaintDrawable;

    const v2, -0xff0001

    invoke-direct {v12, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1021
    .local v12, pdPressed:Landroid/graphics/drawable/PaintDrawable;
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 1022
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 1023
    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v4

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1025
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1026
    .local v1, sd:Landroid/graphics/drawable/StateListDrawable;
    sget-object v2, Lcom/nemustech/tiffany/widget/TFDndListView;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1027
    sget-object v2, Lcom/nemustech/tiffany/widget/TFDndListView;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v2, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1029
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v3, v13

    float-to-int v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDensityScale:F

    mul-float/2addr v5, v13

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1034
    .local v0, id:Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v0, v14, v14}, Landroid/graphics/drawable/InsetDrawable;->setVisible(ZZ)Z

    .line 1036
    return-object v0
.end method

.method protected onDndModeChanged(Z)V
    .locals 0
    .parameter "dndMode"

    .prologue
    .line 250
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 357
    .local v0, action:I
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v3

    if-le v3, v5, :cond_7

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->findMotionRow(I)I

    move-result v2

    .line 367
    .local v2, itemPosition:I
    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkStartDnd(III)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 375
    const/4 v3, 0x0

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 376
    iput v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 377
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 378
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getItemRectForPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 383
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 387
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 388
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->buildDragItemCache(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFDndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, childItem:Landroid/view/View;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 394
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetX:I

    .line 395
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetY:I

    .line 398
    .end local v1           #childItem:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 401
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFDndListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 403
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    if-eqz v3, :cond_5

    .line 404
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 405
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 409
    :cond_4
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    invoke-interface {v3}, Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;->OnDragAndDropStart()V

    :cond_5
    move v3, v5

    .line 420
    .end local v2           #itemPosition:I
    :goto_0
    return v3

    .line 414
    .restart local v2       #itemPosition:I
    :cond_6
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 415
    iput v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 416
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v3, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 420
    .end local v2           #itemPosition:I
    :cond_7
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onPostDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v10, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v6}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 748
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/widget/TFDndListView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 749
    .local v3, index:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFirstVisiblePosition()I

    move-result v6

    add-int v5, v3, v6

    .line 750
    .local v5, pos:I
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 751
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 752
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v6, v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    move-result-object v2

    .line 753
    .local v2, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    if-eqz v2, :cond_1

    .line 754
    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getType()I

    move-result v6

    if-nez v6, :cond_1

    .line 755
    move-object v0, v2

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;

    move-object v1, v0

    .line 756
    .local v1, ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getDestOffsetY()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v7, v7

    const/high16 v8, 0x3f80

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;->getProgress()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 757
    .local v4, offsetY:I
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v10, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 760
    .end local v1           #ani:Lcom/nemustech/tiffany/widget/TFAnimatedListView$TranslateItemAnimation;
    .end local v4           #offsetY:I
    :cond_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v6, v10}, Lcom/nemustech/tiffany/widget/TFDndListView;->drawChildDragGrabHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 763
    .end local v2           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v3           #index:I
    .end local v5           #pos:I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDndMode()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 518
    :cond_0
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 641
    :goto_0
    return v8

    .line 521
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 522
    .local v0, action:I
    if-nez v0, :cond_2

    .line 527
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    if-nez v8, :cond_2

    .line 531
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v3

    .line 532
    .local v3, hitTestResult:I
    if-lez v3, :cond_2

    .line 533
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 534
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    .end local v3           #hitTestResult:I
    :cond_2
    const/4 v8, 0x2

    if-ne v0, v8, :cond_8

    .line 541
    const/4 v8, 0x1

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 542
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 543
    .local v5, prevDestPosition:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndDragItemTouchOffsetY:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemRectHeight:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->findDropDestinationPosition(I)I

    move-result v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 552
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 554
    .local v6, prevDndTouchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 557
    const/4 v4, 0x0

    .line 559
    .local v4, needToInvalidate:Z
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    if-eq v5, v8, :cond_3

    .line 560
    const/4 v4, 0x1

    .line 562
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-direct {p0, v5, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->adjustItemsYPosOffset(II)V

    .line 563
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 564
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->checkDropGranted()Z

    move-result v8

    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDropGranted:Z

    .line 567
    :cond_3
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    invoke-direct {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v3

    .line 568
    .restart local v3       #hitTestResult:I
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFDndListView;->hittestAutoDragEdge(I)I

    move-result v7

    .line 575
    .local v7, prevHitTestResult:I
    if-eq v3, v7, :cond_4

    .line 576
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    if-lez v3, :cond_4

    .line 580
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    const-wide/16 v9, 0x190

    invoke-virtual {p0, v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    :cond_4
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mBmpDragItemCache:Landroid/graphics/Bitmap;

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_6

    .line 585
    :cond_5
    const/4 v4, 0x1

    .line 588
    :cond_6
    if-eqz v4, :cond_7

    .line 589
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 641
    .end local v3           #hitTestResult:I
    .end local v4           #needToInvalidate:Z
    .end local v5           #prevDestPosition:I
    .end local v6           #prevDndTouchY:I
    .end local v7           #prevHitTestResult:I
    :cond_7
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 593
    :cond_8
    const/4 v8, 0x1

    if-eq v0, v8, :cond_9

    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    .line 594
    :cond_9
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    .line 596
    :cond_a
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->isDifferentDropPosition()Z

    move-result v1

    .line 597
    .local v1, actuallyMoved:Z
    if-eqz v1, :cond_b

    .line 598
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-interface {v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v2

    .line 600
    .local v2, dropGranted:Z
    iput-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mActuallyDrop:Z

    .line 604
    if-eqz v2, :cond_b

    .line 609
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    invoke-interface {v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFDndController;->dropDone(II)V

    .line 617
    .end local v2           #dropGranted:Z
    :cond_b
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    .line 619
    .end local v1           #actuallyMoved:Z
    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    .line 620
    const/4 v8, -0x1

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    .line 621
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemOriginalPosition:I

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragItemDestinationPosition:I

    .line 623
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchX:I

    .line 624
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchY:I

    .line 626
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mEdgeAutoDragRunnable:Lcom/nemustech/tiffany/widget/TFDndListView$EdgeAutoDragRunnable;

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFDndListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 628
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    if-eqz v8, :cond_e

    .line 629
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_d

    .line 630
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 631
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 634
    :cond_d
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    invoke-interface {v8}, Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;->OnDragAndDropStop()V

    .line 637
    :cond_e
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    goto :goto_1
.end method

.method public setDndController(Lcom/nemustech/tiffany/widget/TFDndController;)V
    .locals 1
    .parameter "dndController"

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;-><init>(Lcom/nemustech/tiffany/widget/TFDndListView;Lcom/nemustech/tiffany/widget/TFDndController;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    goto :goto_0
.end method

.method public setDndListener(Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mTFDndListener:Lcom/nemustech/tiffany/widget/TFDndListView$TFDndListener;

    .line 146
    return-void
.end method

.method public setDndMode(Z)V
    .locals 3
    .parameter "dndMode"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    .line 227
    .local v0, prevDndMode:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setDndController() must be called before setDndMode()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    .line 232
    if-eqz p1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->show()V

    .line 239
    :goto_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eq v1, v0, :cond_1

    .line 240
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->onDndModeChanged(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->invalidate()V

    .line 243
    :cond_1
    return-void

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleAnimator:Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView$DragGrabHandleAnimator;->hide()V

    .line 236
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeAll()V

    goto :goto_0
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 350
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDragGrabHandlePosGravity:I

    .line 351
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mDndTouchMode:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView;->mUserDragItem:Landroid/graphics/Bitmap;

    .line 186
    :cond_0
    return-void
.end method
