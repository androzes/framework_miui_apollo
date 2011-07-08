.class public Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;,
        Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTEXT_CLOSE_ANIMATION_DURATION:I = 0x7d0

.field private static final CONTEXT_OPEN_ANIMATION_DURATION:I = 0x7d0

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x1f4

.field private static final DEBUG:Z = false

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final LISTENER_ACTION_CANCELED:I = 0x1

.field private static final LISTENER_ACTION_COMMITTED:I = 0x2

.field private static final LISTENER_ACTION_STARTED:I = 0x0

.field private static final PROGRESS_COUNT:I = 0x64

.field private static final SCROLL_ACTION_THRESHOLD:F = 0.5f

.field private static final STATUS_AUTO_EMERGING:I = 0x3

.field private static final STATUS_AUTO_WITHDRAWING:I = 0x5

.field private static final STATUS_NONE_IDLE:I = 0x0

.field private static final STATUS_SCROLL_TRACKING:I = 0x2

.field private static final STATUS_VISIBLE_IDLE:I = 0x4

.field private static final STATUS_WAITING_SCROLL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TFSweepActionListView"


# instance fields
.field private mActionDownOnClickableDescendant:Z

.field private mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

.field private mMinimumFlingVelocity:I

.field private mMotionDownRow:I

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

.field private mSweepActionViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTempTransformation:Landroid/view/animation/Transformation;

.field private mTouchSlop:I

.field private mTrackingHorizontalFlick:Z

.field private mTrackingHorizontalFlickLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 519
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 522
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 523
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    .line 512
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 513
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    .line 514
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    .line 529
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->setDrawSelectorOnTop(Z)V

    .line 531
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 532
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    .line 533
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    .line 535
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    invoke-direct {v1, p1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;-><init>(Landroid/content/Context;Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector$OnHorizontalGestureListener;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    .line 554
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->fireSweepActionListener(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFSweepActionListView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onHorizontalFlickDetected(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onHorizontalScrollTouchUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/widget/TFSweepActionListView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onHorizontalScroll(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCurrentSweepActionView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/view/animation/Transformation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFSweepActionListView;)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method private findExactMotionRow(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 1106
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->findMotionRow(I)I

    move-result v2

    .line 1108
    .local v2, retPosition:I
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, v2, v3

    .line 1110
    .local v1, childIndex:I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1111
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1112
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1114
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 1121
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childIndex:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .locals 4
    .parameter "listItemPosition"

    .prologue
    .line 1169
    const/4 v2, 0x0

    .line 1170
    .local v2, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1171
    .local v1, s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v3, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    if-ne v3, p1, :cond_0

    .line 1172
    move-object v2, v1

    goto :goto_0

    .line 1175
    .end local v1           #s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_1
    return-object v2
.end method

.method private fireSweepActionListener(III)V
    .locals 2
    .parameter "listenerAction"
    .parameter "iItemIndex"
    .parameter "direction"

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    if-eqz v1, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    .line 1663
    .local v0, l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    if-nez p1, :cond_1

    .line 1664
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;I)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    .line 1683
    .end local v0           #l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    :cond_0
    :goto_0
    return-void

    .line 1669
    .restart local v0       #l:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1670
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$3;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;I)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1675
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1676
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$4;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$4;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;II)V

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 4
    .parameter "savi"

    .prologue
    const/4 v3, 0x0

    .line 1553
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v3

    .line 1563
    :goto_0
    return-object v1

    .line 1558
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1559
    .local v0, firstVisible:I
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    if-lt v1, v0, :cond_2

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1561
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 1563
    goto :goto_0
.end method

.method private getCurrentSweepActionView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)Landroid/view/View;
    .locals 2
    .parameter "savi"

    .prologue
    .line 1544
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1546
    :cond_0
    const/4 v0, 0x0

    .line 1549
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    goto :goto_0
.end method

.method private hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V
    .locals 6
    .parameter "savi"
    .parameter "animate"
    .parameter "fasterAnimation"

    .prologue
    .line 1461
    if-nez p2, :cond_2

    .line 1463
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1464
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1465
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->removeFloatingView(Landroid/view/View;)V

    .line 1467
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 1469
    :cond_1
    const/4 v3, 0x0

    iput v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1471
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget-object v4, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1473
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1503
    :goto_0
    return-void

    .line 1477
    :cond_2
    const/4 v0, 0x1

    .line 1479
    .local v0, checkStatus:Z
    iget v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1480
    const/4 v0, 0x0

    .line 1483
    :cond_3
    const/4 v3, 0x5

    iput v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1485
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1486
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1487
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->removeFloatingView(Landroid/view/View;)V

    .line 1491
    :cond_4
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v1

    .line 1492
    .local v1, curProgress:I
    const/16 v2, 0x64

    .line 1494
    .local v2, destProgress:I
    iget-object v3, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    if-eqz p3, :cond_6

    const/16 v4, 0x1f4

    :goto_1
    invoke-virtual {v3, v1, v2, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    .line 1498
    if-eqz v0, :cond_5

    .line 1499
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v4, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v5, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v3, v4, v5}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1501
    :cond_5
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    goto :goto_0

    .line 1494
    :cond_6
    const/16 v4, 0x7d0

    goto :goto_1
.end method

.method private makeSaviOnTouchDown()V
    .locals 21

    .prologue
    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    move v7, v0

    .line 1231
    .local v7, position:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v5

    .line 1232
    .local v5, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v5, :cond_2

    .line 1236
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    goto :goto_0

    .line 1240
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    invoke-interface {v6, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;

    move-result-object v18

    .line 1244
    .local v18, sabi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v6, v0

    if-nez v6, :cond_3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v6, v0

    if-eqz v6, :cond_0

    .line 1249
    :cond_3
    new-instance v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .end local v5           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v11, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v12, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v13, v0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;IILandroid/view/View;IZZI)V

    .line 1258
    .restart local v5       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    new-instance v17, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;ILcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    .line 1259
    .local v17, rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->makeSweepActionViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v20

    .line 1263
    .local v20, wrappedActionBarView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v7, v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1265
    .local v16, itemView:Landroid/view/View;
    if-eqz v16, :cond_0

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v7

    .end local v7           #position:I
    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1274
    move-object/from16 v0, v18

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    if-eqz v6, :cond_4

    .line 1275
    move-object/from16 v0, v18

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1277
    .local v14, childForLocationHint:Landroid/view/View;
    if-eqz v14, :cond_4

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1286
    .end local v14           #childForLocationHint:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v19

    .line 1287
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1289
    .local v15, height:I
    const/high16 v6, 0x4000

    move/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1299
    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    const/16 v6, 0x64

    invoke-static {v5, v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$202(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    goto/16 :goto_0
.end method

.method private makeSweepActionViewWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "rawContextMenuView"

    .prologue
    const/4 v3, -0x1

    .line 1157
    new-instance v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;)V

    .line 1159
    .local v1, wrapper:Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1163
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$ContextMenuViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    return-object v1
.end method

.method private onHorizontalFlickDetected(F)V
    .locals 11
    .parameter "velocityX"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x64

    const/4 v8, 0x0

    .line 1390
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    mul-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 1391
    cmpg-float v6, p1, v8

    if-gez v6, :cond_2

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, -0x1

    int-to-float p1, v6

    .line 1397
    :cond_0
    :goto_0
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1398
    .local v3, position:I
    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1399
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-nez v4, :cond_3

    .line 1439
    :cond_1
    :goto_1
    return-void

    .line 1392
    .end local v3           #position:I
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_2
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMinimumFlingVelocity:I

    mul-int/lit8 v6, v6, 0x4

    int-to-float p1, v6

    goto :goto_0

    .line 1403
    .restart local v3       #position:I
    .restart local v4       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_3
    invoke-virtual {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->dump()V

    .line 1405
    iget v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1409
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    .line 1411
    .local v0, curProgress:I
    cmpl-float v6, p1, v8

    if-lez v6, :cond_5

    .line 1412
    iget-boolean v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-eqz v6, :cond_4

    move v5, v10

    .line 1418
    .local v5, targetProgress:I
    :goto_2
    if-ne v0, v5, :cond_7

    .line 1420
    invoke-direct {p0, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->onScrollFlingBumpedToLimit(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    goto :goto_1

    .end local v5           #targetProgress:I
    :cond_4
    move v5, v9

    .line 1412
    goto :goto_2

    .line 1414
    :cond_5
    iget-boolean v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    if-eqz v6, :cond_6

    const/16 v6, 0xc8

    move v5, v6

    .restart local v5       #targetProgress:I
    :goto_3
    goto :goto_2

    .end local v5           #targetProgress:I
    :cond_6
    move v5, v9

    goto :goto_3

    .line 1425
    .restart local v5       #targetProgress:I
    :cond_7
    const/4 v6, 0x3

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1426
    if-ne v5, v9, :cond_8

    .line 1427
    const/4 v6, 0x5

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1430
    :cond_8
    cmpl-float v6, p1, v8

    if-lez v6, :cond_9

    move v6, v10

    :goto_4
    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    .line 1431
    sub-int v6, v0, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x64

    .line 1432
    .local v1, distance:I
    mul-int/lit16 v6, v1, 0x3e8

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 1436
    .local v2, duration:I
    iget-object v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v6, v0, v5, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    .line 1438
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v6}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->run()V

    goto :goto_1

    .line 1430
    .end local v1           #distance:I
    .end local v2           #duration:I
    :cond_9
    const/4 v6, 0x1

    goto :goto_4
.end method

.method private onHorizontalScroll(F)V
    .locals 7
    .parameter "distanceX"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1314
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1315
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v1

    .line 1316
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-nez v1, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eq v2, v5, :cond_0

    .line 1326
    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-nez v2, :cond_2

    .line 1327
    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    .line 1328
    const/4 p1, 0x0

    .line 1331
    :cond_2
    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    if-nez v2, :cond_3

    .line 1332
    cmpg-float v2, p1, v4

    if-gez v2, :cond_3

    .line 1333
    const/4 p1, 0x0

    .line 1337
    :cond_3
    const/4 v2, 0x2

    iput v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1338
    cmpl-float v2, p1, v4

    if-lez v2, :cond_4

    move v2, v6

    :goto_1
    iput v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    .line 1339
    neg-float v2, p1

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$202(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 1341
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    if-nez v2, :cond_0

    .line 1342
    iput-boolean v5, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionStartReported:Z

    .line 1343
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    const v3, 0x7fffffff

    invoke-direct {p0, v6, v2, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->fireSweepActionListener(III)V

    goto :goto_0

    :cond_4
    move v2, v5

    .line 1338
    goto :goto_1
.end method

.method private onHorizontalScrollTouchUp()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x64

    .line 1353
    iget v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1354
    .local v3, position:I
    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1355
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-nez v4, :cond_0

    .line 1385
    :goto_0
    return-void

    .line 1358
    :cond_0
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v6, :cond_1

    .line 1360
    invoke-direct {p0, v4, v7, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    goto :goto_0

    .line 1364
    :cond_1
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    .line 1365
    .local v0, curProgress:I
    sub-int v6, v0, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v2, v6, v7

    .line 1369
    .local v2, normalizedProgress:F
    const/high16 v6, 0x3f00

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 1371
    const/16 v5, 0x64

    .line 1372
    .local v5, targetProgress:I
    const/4 v6, 0x5

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1373
    sub-int v6, v8, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x7d0

    div-int/lit8 v1, v6, 0x64

    .line 1384
    .local v1, duration:I
    :goto_1
    iget-object v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v6, v0, v5, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    goto :goto_0

    .line 1376
    .end local v1           #duration:I
    .end local v5           #targetProgress:I
    :cond_2
    if-le v0, v8, :cond_3

    .line 1377
    const/16 v5, 0xc8

    .line 1381
    .restart local v5       #targetProgress:I
    :goto_2
    const/4 v6, 0x3

    iput v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1382
    sub-int v6, v8, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x7d0

    div-int/lit8 v1, v6, 0x64

    .restart local v1       #duration:I
    goto :goto_1

    .line 1379
    .end local v1           #duration:I
    .end local v5           #targetProgress:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #targetProgress:I
    goto :goto_2
.end method

.method private onScrollFlingBumpedToLimit(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V
    .locals 3
    .parameter "savi"

    .prologue
    const/16 v2, 0xc8

    .line 1445
    sget-boolean v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1449
    :cond_0
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1450
    :cond_1
    const/4 v0, 0x3

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1455
    :goto_0
    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$300(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    .line 1457
    return-void

    .line 1452
    :cond_2
    const/4 v0, 0x5

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    goto :goto_0
.end method

.method private showActionBarView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V
    .locals 4
    .parameter "savi"

    .prologue
    .line 1508
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    :cond_0
    const/4 v0, 0x3

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1516
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$202(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 1519
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$1400(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V

    .line 1523
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-static {p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v1

    iget v2, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mEmergingDirection:I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;->start(III)V

    .line 1528
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v2, p1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1529
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 1530
    return-void

    .line 1523
    :cond_1
    const/16 v2, 0xc8

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1540
    const/4 v0, 0x1

    return v0
.end method

.method public closeAllActionBar(Z)Z
    .locals 8
    .parameter "animated"

    .prologue
    const/4 v7, 0x1

    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, retVal:Z
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .local v0, arr$:[Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 788
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-ne v5, v7, :cond_1

    .line 790
    :cond_0
    invoke-direct {p0, v4, p1, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    .line 791
    or-int/lit8 v3, v3, 0x1

    .line 786
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_2
    if-nez p1, :cond_3

    if-eqz v3, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->invalidate()V

    .line 797
    :cond_3
    return v3
.end method

.method protected computeVerticalScrollExtent()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1613
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v1

    .line 1615
    .local v1, count:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1616
    .local v7, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget-object v10, v7, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, v7, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_0

    .line 1617
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1621
    .end local v7           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_1
    if-lez v1, :cond_7

    .line 1622
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isSmoothScrollbarEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1623
    mul-int/lit8 v2, v1, 0x64

    .line 1625
    .local v2, extent:I
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1626
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1627
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1628
    .local v3, height:I
    if-lez v3, :cond_2

    .line 1629
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 1632
    :cond_2
    sub-int v10, v1, v12

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1633
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1634
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1635
    if-lez v3, :cond_3

    .line 1636
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 1639
    :cond_3
    move v6, v2

    .line 1642
    .local v6, retVal:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mExcessScroll:I

    if-eqz v10, :cond_5

    .line 1644
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mExcessScroll:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 1645
    .local v5, ratio:F
    const v10, 0x3d4ccccd

    cmpg-float v10, v5, v10

    if-gez v10, :cond_4

    .line 1646
    const v5, 0x3d4ccccd

    .line 1649
    :cond_4
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .end local v5           #ratio:F
    :cond_5
    move v10, v6

    .line 1657
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v6           #retVal:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_1
    return v10

    :cond_6
    move v10, v12

    .line 1654
    goto :goto_1

    :cond_7
    move v10, v11

    .line 1657
    goto :goto_1
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v0, :cond_0

    .line 1699
    :goto_0
    return-void

    .line 1694
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1697
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->createContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 839
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 868
    :goto_0
    return v0

    .line 848
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 850
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 851
    goto :goto_0

    .line 857
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    .line 863
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 864
    goto :goto_0

    .line 868
    :cond_4
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dump()V
    .locals 5

    .prologue
    const-string v4, "TFSweepActionListView"

    .line 1702
    const-string v2, "TFSweepActionListView"

    const-string v2, "==== dump begin ===="

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter getCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChildCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFloatingViewCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFloatingViewCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string v2, "TFSweepActionListView"

    const-string v2, "mItemAnimator : "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->dump(Ljava/lang/String;)V

    .line 1708
    const-string v2, "TFSweepActionListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAVI :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1710
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->dump()V

    goto :goto_0

    .line 1712
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_0
    const-string v2, "TFSweepActionListView"

    const-string v2, "==== dump end ===="

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    return-void
.end method

.method public getSweepActionBarCallback()Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method public getSweepActionListener()Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1783
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1788
    .local v8, e:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1790
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 1796
    .end local v8           #e:Landroid/view/MotionEvent;
    :cond_0
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->handleDataChanged()V

    .line 1797
    return-void
.end method

.method invalidateCurrentItemRect()V
    .locals 0

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->invalidate()V

    .line 1534
    return-void
.end method

.method public isActionBarClosing()Z
    .locals 4

    .prologue
    .line 827
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 828
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 829
    const/4 v2, 0x1

    .line 832
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isActionBarOpen()Z
    .locals 4

    .prologue
    .line 809
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 810
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 812
    :cond_1
    const/4 v2, 0x1

    .line 815
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 874
    const/4 v5, 0x0

    .line 876
    .local v5, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 878
    .local v0, action:I
    if-nez v0, :cond_0

    .line 880
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mActionDownOnClickableDescendant:Z

    .line 883
    :cond_0
    if-nez v0, :cond_3

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_3

    .line 885
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 886
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    .line 889
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    invoke-direct {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findExactMotionRow(I)I

    move-result v10

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 891
    const/4 v8, 0x0

    .line 892
    .local v8, touchDownOnContextMenu:Z
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 893
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 894
    .local v2, cmi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v10, v2, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    if-ne v10, v11, :cond_1

    .line 895
    const/4 v8, 0x1

    goto :goto_0

    .line 900
    .end local v2           #cmi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    if-nez v8, :cond_a

    .line 901
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 910
    :goto_1
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 911
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->makeSaviOnTouchDown()V

    .line 915
    .end local v8           #touchDownOnContextMenu:Z
    :cond_3
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v10, :cond_5

    .line 916
    :cond_4
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    invoke-virtual {v10, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 919
    :cond_5
    const/4 v10, 0x1

    if-eq v0, v10, :cond_6

    const/4 v10, 0x3

    if-ne v0, v10, :cond_8

    .line 920
    :cond_6
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    .line 922
    const/4 v5, 0x0

    .line 925
    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 926
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 928
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_8

    .line 930
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    invoke-direct {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v6

    .line 931
    .local v6, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v6, :cond_8

    .line 932
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v6, v10, v11}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    .line 937
    .end local v6           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_8
    const/4 v10, 0x2

    if-ne v0, v10, :cond_9

    .line 938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 939
    .local v3, horizontalDistanceFromMotionDownX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v9, v10

    .line 942
    .local v9, verticalDistanceFromMotionDownY:I
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v10, :cond_9

    .line 943
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v9, v10, :cond_b

    .line 944
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 946
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 986
    .end local v3           #horizontalDistanceFromMotionDownX:I
    .end local v9           #verticalDistanceFromMotionDownY:I
    :cond_9
    :goto_2
    iget-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v10, :cond_e

    .line 987
    const/4 v10, 0x1

    .line 995
    :goto_3
    return v10

    .line 907
    .restart local v8       #touchDownOnContextMenu:Z
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 948
    .end local v8           #touchDownOnContextMenu:Z
    .restart local v3       #horizontalDistanceFromMotionDownX:I
    .restart local v9       #verticalDistanceFromMotionDownY:I
    :cond_b
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v3, v10, :cond_9

    .line 949
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 952
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    .line 953
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 954
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_9

    .line 956
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 957
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->setPressed(Z)V

    .line 960
    :cond_c
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 961
    const-string v10, "TFSweepActionListView"

    const-string v11, "onTouchEvent.ACTION_MOVE. mTouchMode = TOUCH_MODE_SCROLL"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v10, 0x3

    iput v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    .line 965
    :cond_d
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-direct {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v6

    .line 966
    .restart local v6       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v6, :cond_9

    iget v10, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 967
    const/4 v10, 0x2

    iput v10, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 969
    const/16 v10, 0x64

    invoke-static {v6, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$202(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 972
    iget-object v10, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v11, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v6, v10, v11}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$1400(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V

    .line 976
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v11, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v12, v6, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v10, v11, v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 977
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    goto :goto_2

    .line 990
    .end local v1           #child:Landroid/view/View;
    .end local v3           #horizontalDistanceFromMotionDownX:I
    .end local v6           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v9           #verticalDistanceFromMotionDownY:I
    :cond_e
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 992
    .local v7, superRetVal:Z
    if-nez v5, :cond_f

    move v10, v7

    .line 993
    goto :goto_3

    .line 995
    :cond_f
    const/4 v10, 0x1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1003
    const/4 v3, 0x0

    .line 1005
    .local v3, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1007
    .local v0, action:I
    if-nez v0, :cond_0

    .line 1008
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mActionDownOnClickableDescendant:Z

    .line 1011
    :cond_0
    if-nez v0, :cond_1

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 1013
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 1014
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    .line 1017
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findExactMotionRow(I)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    .line 1020
    :cond_1
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v7, :cond_4

    .line 1021
    :cond_2
    if-ne v0, v10, :cond_3

    .line 1024
    :cond_3
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mGDetector:Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;

    invoke-virtual {v7, p1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$HorizontalGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1027
    :cond_4
    if-eq v0, v10, :cond_5

    if-ne v0, v12, :cond_6

    .line 1029
    :cond_5
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 1030
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 1033
    :cond_6
    if-ne v0, v11, :cond_7

    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    if-eqz v7, :cond_7

    .line 1034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 1035
    .local v2, horizontalDistanceFromMotionDownX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v6, v7

    .line 1038
    .local v6, verticalDistanceFromMotionDownY:I
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v7, :cond_7

    .line 1039
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1041
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v6, v7, :cond_8

    .line 1042
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlick:Z

    .line 1044
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->closeAllActionBar(Z)Z

    .line 1092
    .end local v2           #horizontalDistanceFromMotionDownX:I
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v6           #verticalDistanceFromMotionDownY:I
    :cond_7
    :goto_0
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v7, :cond_b

    move v7, v10

    .line 1101
    :goto_1
    return v7

    .line 1045
    .restart local v2       #horizontalDistanceFromMotionDownX:I
    .restart local v4       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .restart local v6       #verticalDistanceFromMotionDownY:I
    :cond_8
    if-eqz v4, :cond_7

    .line 1046
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 1047
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    .line 1050
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 1051
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionDownRow:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1055
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    .line 1056
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1057
    invoke-virtual {v1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 1059
    :cond_9
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    if-ne v7, v10, :cond_a

    .line 1060
    const-string v7, "TFSweepActionListView"

    const-string v8, "onTouchEvent.ACTION_MOVE. mTouchMode = TOUCH_MODE_SCROLL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iput v12, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTouchMode:I

    .line 1070
    :cond_a
    if-eqz v4, :cond_7

    iget v7, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-ne v7, v10, :cond_7

    .line 1073
    iput v11, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 1075
    const/16 v7, 0x64

    invoke-static {v4, v7}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$202(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;I)I

    .line 1078
    iget-object v7, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$1400(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;II)V

    .line 1082
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v8, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    iget-object v9, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mSweepActionItemAnimation:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo$SweepActionItemAnimation;

    invoke-virtual {v7, v8, v9}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1083
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v7}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    goto :goto_0

    .line 1096
    .end local v1           #child:Landroid/view/View;
    .end local v2           #horizontalDistanceFromMotionDownX:I
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v6           #verticalDistanceFromMotionDownY:I
    :cond_b
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1098
    .local v5, superRetVal:Z
    if-nez v3, :cond_c

    move v7, v5

    .line 1099
    goto :goto_1

    :cond_c
    move v7, v10

    .line 1101
    goto :goto_1
.end method

.method public openActionBar(II)Z
    .locals 25
    .parameter "position"
    .parameter "flickDirection"

    .prologue
    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getWidth()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getHeight()I

    move-result v6

    if-nez v6, :cond_1

    .line 644
    :cond_0
    const/4 v6, 0x0

    .line 773
    :goto_0
    return v6

    .line 647
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v18

    .line 648
    .local v18, posVisible:I
    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 652
    const/4 v6, 0x0

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v22

    .line 657
    .local v22, visibleListItemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 658
    .local v5, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 659
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 663
    .end local v5           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_4
    sub-int v6, p1, v18

    move v0, v6

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 667
    const/4 v6, 0x0

    goto :goto_0

    .line 670
    :cond_5
    const/4 v5, 0x0

    .line 671
    .restart local v5       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 672
    .local v20, s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    move v6, v0

    move v0, v6

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 673
    move-object/from16 v5, v20

    goto :goto_2

    .line 677
    .end local v20           #s:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_7
    if-eqz v5, :cond_9

    .line 679
    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8

    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    iget v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 682
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 688
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    if-nez v6, :cond_a

    .line 690
    const/4 v6, 0x0

    goto :goto_0

    .line 692
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;

    move-result-object v21

    .line 693
    .local v21, sabi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    if-nez v21, :cond_b

    .line 695
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 697
    :cond_b
    if-nez p2, :cond_c

    .line 698
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v6, v0

    if-nez v6, :cond_d

    .line 700
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 703
    :cond_c
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v6, v0

    if-nez v6, :cond_d

    .line 705
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 709
    :cond_d
    if-nez v5, :cond_e

    .line 710
    new-instance v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .end local v5           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v11, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v12, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v13, v0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v5 .. v13}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;IILandroid/view/View;IZZI)V

    .line 728
    .restart local v5       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :goto_3
    new-instance v19, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;-><init>(Lcom/nemustech/tiffany/widget/TFSweepActionListView;Landroid/content/Context;ILcom/nemustech/tiffany/widget/TFSweepActionListView;)V

    .line 729
    .local v19, rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    move-object v0, v5

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;->mSweepActionViewInfo:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->makeSweepActionViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v24

    .line 733
    .local v24, wrappedActionBarView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 735
    .local v17, itemView:Landroid/view/View;
    if-nez v17, :cond_f

    .line 736
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 719
    .end local v17           #itemView:Landroid/view/View;
    .end local v19           #rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    .end local v24           #wrappedActionBarView:Landroid/view/View;
    :cond_e
    move/from16 v0, p1

    move-object v1, v5

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    .line 720
    const/4 v6, 0x0

    iput v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    .line 721
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 722
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    move v6, v0

    iput-boolean v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    .line 723
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    move v6, v0

    iput-boolean v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowRightToLeftSweep:Z

    .line 724
    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    iput v6, v5, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mChildIdForLocationHint:I

    goto :goto_3

    .line 739
    .restart local v17       #itemView:Landroid/view/View;
    .restart local v19       #rawSweepActionView:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarView;
    .restart local v24       #wrappedActionBarView:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 744
    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    if-eqz v6, :cond_10

    .line 745
    move-object/from16 v0, v21

    iget v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    move v6, v0

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 747
    .local v14, childForLocationHint:Landroid/view/View;
    if-eqz v14, :cond_10

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 756
    .end local v14           #childForLocationHint:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v23

    .line 757
    .local v23, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 759
    .local v15, height:I
    const/high16 v6, 0x4000

    move/from16 v0, v23

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 769
    move-object/from16 v0, v24

    move-object v1, v5

    iput-object v0, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mActionBarView:Landroid/view/View;

    .line 771
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->showActionBarView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)V

    .line 773
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 5
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 1570
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 1592
    :goto_0
    return v2

    .line 1576
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isActionBarClosing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1577
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    .line 1578
    .local v1, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1579
    iget v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mItemIndex:I

    if-ne v2, p2, :cond_1

    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mAllowLeftToRightSweep:Z

    if-eqz v2, :cond_1

    :cond_2
    move v2, v4

    .line 1580
    goto :goto_0

    .line 1588
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_3
    iget-boolean v2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mActionDownOnClickableDescendant:Z

    if-eqz v2, :cond_4

    move v2, v4

    .line 1589
    goto :goto_0

    .line 1592
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0
.end method

.method protected performLongPress(Landroid/view/View;IJ)Z
    .locals 3
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v2, 0x0

    .line 1599
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 1600
    .local v1, superRet:Z
    if-eqz v1, :cond_0

    .line 1601
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v0

    .line 1602
    .local v0, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v0, :cond_0

    .line 1603
    invoke-direct {p0, v0, v2, v2}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;ZZ)V

    .line 1607
    .end local v0           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_0
    return v1
.end method

.method public setSweepActionBarCallback(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    .line 563
    return-void
.end method

.method public setSweepActionListener(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionListener:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionListener;

    .line 581
    return-void
.end method

.method shouldShowSelector()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1180
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    if-nez v6, :cond_0

    .line 1181
    invoke-super {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->shouldShowSelector()Z

    move-result v6

    .line 1218
    :goto_0
    return v6

    .line 1184
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v9

    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->touchModeDrawsInPressedState()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1187
    const/4 v1, 0x0

    .line 1188
    .local v1, childAtMotionPositionIsPressed:Z
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mFirstPosition:I

    sub-int v0, v6, v7

    .line 1189
    .local v0, childAtMotionPositionIndex:I
    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 1190
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    move v6, v8

    goto :goto_0

    .line 1191
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 1197
    move v2, v1

    .line 1200
    .local v2, drawSelector:Z
    iget v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->findSweepActionViewInfo(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;

    move-result-object v4

    .line 1201
    .local v4, savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    if-eqz v4, :cond_4

    iget v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    if-eq v6, v9, :cond_4

    .line 1202
    invoke-static {v4}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->access$200(Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;)I

    move-result v6

    const/16 v7, 0x64

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v3, v6, v7

    .line 1203
    .local v3, progress:F
    const/4 v5, 0x2

    .line 1204
    .local v5, sweepState:I
    iget v6, v4, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;->mStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 1205
    iget-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v6, :cond_6

    .line 1206
    const/4 v5, 0x1

    .line 1211
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mSweepActionBarCallback:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView;->mMotionPosition:I

    invoke-interface {v6, v7, v3, v5}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v2

    .end local v3           #progress:F
    .end local v5           #sweepState:I
    :cond_4
    move v6, v2

    .line 1215
    goto :goto_0

    .end local v2           #drawSelector:Z
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    :cond_5
    move v6, v8

    .line 1193
    goto :goto_0

    .line 1208
    .restart local v2       #drawSelector:Z
    .restart local v3       #progress:F
    .restart local v4       #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .restart local v5       #sweepState:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .end local v0           #childAtMotionPositionIndex:I
    .end local v1           #childAtMotionPositionIsPressed:Z
    .end local v2           #drawSelector:Z
    .end local v3           #progress:F
    .end local v4           #savi:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionViewInfo;
    .end local v5           #sweepState:I
    :cond_7
    move v6, v8

    .line 1218
    goto :goto_0
.end method
