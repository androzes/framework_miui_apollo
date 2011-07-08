.class public Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.source "TFFlickContextMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;
    }
.end annotation


# static fields
.field private static final CONTEXT_CLOSE_ANIMATION_DURATION:I = 0x1f4

.field private static final CONTEXT_EMERGING:I = 0x1

.field private static final CONTEXT_NONE_IDLE:I = 0x0

.field private static final CONTEXT_OPEN_ANIMATION_DURATION:I = 0x1f4

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x1f4

.field private static final CONTEXT_VISIBLE_IDLE:I = 0x2

.field private static final CONTEXT_WITHDRAWING:I = 0x3

.field private static final DEBUG:Z = false

.field public static final EFFECT_ROTATE_DOWN:I = 0x2

.field private static final EFFECT_ROTATE_LEFT:I = 0x0

.field public static final EFFECT_ROTATE_RIGHT:I = 0x1

.field public static final EFFECT_ROTATE_UP:I = 0x3

.field private static final EFFECT_SLIDE_LEFT:I = 0x5

.field public static final EFFECT_SLIDE_RIGHT:I = 0x4

.field private static final INVALID_INDEX:I = -0x1

.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TFFlickContextMenuListView"


# instance fields
.field private mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

.field private mContextMenuInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContextMenuPopedUp:Z

.field private mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

.field private mEmergingAnimationType:I

.field private mGDetector:Landroid/view/GestureDetector;

.field private mMinimumFlingVelocity:I

.field private mMotionDownRow:I

.field private mMotionDownY:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempTransformation:Landroid/view/animation/Transformation;

.field private mTouchSlop:I

.field private mTrackingHorizontalFlick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 420
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    .line 409
    const/4 v1, 0x1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mEmergingAnimationType:I

    .line 411
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 412
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTempRect:Landroid/graphics/Rect;

    .line 427
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 428
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTouchSlop:I

    .line 429
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMinimumFlingVelocity:I

    .line 431
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mGDetector:Landroid/view/GestureDetector;

    .line 445
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->fireAnimationListener(ZZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mGDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getCurrentContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)Landroid/view/animation/Transformation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTempTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMinimumFlingVelocity:I

    return v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->onHorizontalFlickDetected(Z)V

    return-void
.end method

.method private fireAnimationListener(ZZI)V
    .locals 6
    .parameter "bOpen"
    .parameter "bStart"
    .parameter "itemIndex"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    if-eqz v0, :cond_0

    .line 525
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    .line 526
    .local v4, l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;ZZLcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;I)V

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->post(Ljava/lang/Runnable;)Z

    .line 538
    .end local v4           #l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;
    :cond_0
    return-void
.end method

.method private getCurrentContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;
    .locals 2
    .parameter "cmi"

    .prologue
    .line 1002
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1004
    :cond_0
    const/4 v0, 0x0

    .line 1007
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    goto :goto_0
.end method

.method private getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)Landroid/view/View;
    .locals 4
    .parameter "cmi"

    .prologue
    const/4 v3, 0x0

    .line 1011
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v3

    .line 1021
    :goto_0
    return-object v1

    .line 1016
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1017
    .local v0, firstVisible:I
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    if-lt v1, v0, :cond_2

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1019
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 1021
    goto :goto_0
.end method

.method static getReverseAnimationEffectType(I)I
    .locals 1
    .parameter "effectType"

    .prologue
    const/4 v0, 0x0

    .line 448
    packed-switch p0, :pswitch_data_0

    .line 455
    :goto_0
    :pswitch_0
    return v0

    .line 449
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 451
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 452
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 453
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 454
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;ZZ)V
    .locals 5
    .parameter "cmi"
    .parameter "animate"
    .parameter "fasterAnimation"

    .prologue
    const/16 v2, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 931
    if-nez p2, :cond_2

    .line 933
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->removeFloatingView(Landroid/view/View;)V

    .line 937
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 939
    :cond_1
    iput v3, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 941
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 967
    :goto_0
    return-void

    .line 945
    :cond_2
    const/4 v0, 0x3

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 947
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 948
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 949
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->removeFloatingView(Landroid/view/View;)V

    .line 953
    :cond_3
    invoke-static {p1, v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;I)I

    .line 954
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mEmergingAnimationType:I

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getReverseAnimationEffectType(I)I

    move-result v0

    invoke-static {p1, v0, v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$1100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;IZ)V

    .line 955
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$1200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;II)V

    .line 959
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    if-eqz p3, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->start(I)V

    .line 962
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget-object v2, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 963
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 965
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    invoke-direct {p0, v3, v4, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->fireAnimationListener(ZZI)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 959
    goto :goto_1
.end method

.method private makeContextMenuViewWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "rawContextMenuView"

    .prologue
    const/4 v3, -0x1

    .line 843
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;Landroid/content/Context;)V

    .line 845
    .local v1, wrapper:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 849
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    return-object v1
.end method

.method private onHorizontalFlickDetected(Z)V
    .locals 13
    .parameter "flickLeftToRight"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x2

    const/4 v12, 0x0

    .line 857
    if-nez p1, :cond_1

    .line 861
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 862
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v8, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    if-ne v8, v9, :cond_0

    iget v8, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v8, v10, :cond_0

    .line 864
    const/4 v8, 0x1

    invoke-direct {p0, v0, v8, v12}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;ZZ)V

    goto :goto_0

    .line 871
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuPopedUp:Z

    if-eqz v8, :cond_3

    .line 927
    :cond_2
    :goto_1
    return-void

    .line 877
    :cond_3
    const/4 v1, 0x0

    .line 878
    .local v1, existingCmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 879
    .restart local v0       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v8, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    if-ne v8, v9, :cond_4

    .line 880
    iget v8, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-eq v8, v10, :cond_2

    .line 886
    move-object v1, v0

    goto :goto_2

    .line 890
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_5
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    invoke-interface {v8, v9, v10}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;->makeContextMenuView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 893
    .local v5, rawContextMenuView:Landroid/view/View;
    :goto_3
    if-eqz v5, :cond_2

    .line 894
    invoke-direct {p0, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->makeContextMenuViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 896
    .local v7, wrappedContextMenuView:Landroid/view/View;
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 897
    .local v4, itemView:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 899
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 900
    .local v6, width:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 902
    .local v2, height:I
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 905
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 912
    if-eqz v1, :cond_6

    .line 914
    invoke-direct {p0, v1, v12, v12}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;ZZ)V

    .line 918
    :cond_6
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    invoke-direct {v0, p0, v8, v12, v7}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;IILandroid/view/View;)V

    .line 924
    .restart local v0       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->showContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V

    goto :goto_1

    .line 890
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    .end local v2           #height:I
    .end local v4           #itemView:Landroid/view/View;
    .end local v5           #rawContextMenuView:Landroid/view/View;
    .end local v6           #width:I
    .end local v7           #wrappedContextMenuView:Landroid/view/View;
    :cond_7
    const/4 v8, 0x0

    move-object v5, v8

    goto :goto_3
.end method

.method private showContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V
    .locals 4
    .parameter "cmi"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 972
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iput v3, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 976
    invoke-static {p1, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;I)I

    .line 977
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mEmergingAnimationType:I

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$1100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;IZ)V

    .line 978
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->access$1200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;II)V

    .line 982
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;->start(I)V

    .line 984
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget-object v2, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 985
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 987
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    invoke-direct {p0, v3, v3, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->fireAnimationListener(ZZI)V

    .line 988
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 998
    const/4 v0, 0x1

    return v0
.end method

.method public closeAllContextMenuIfOpen()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 647
    const/4 v2, 0x0

    .line 648
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 649
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v3, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v3, v5, :cond_0

    .line 651
    :cond_1
    invoke-direct {p0, v0, v5, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;ZZ)V

    .line 652
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_2
    return v2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1037
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildCount()I

    move-result v2

    .line 1039
    .local v2, count:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 1040
    .local v1, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget-object v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_0

    .line 1041
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1045
    .end local v1           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_1
    if-lez v2, :cond_7

    .line 1046
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->isSmoothScrollbarEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1047
    mul-int/lit8 v3, v2, 0x64

    .line 1049
    .local v3, extent:I
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1050
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1051
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1052
    .local v4, height:I
    if-lez v4, :cond_2

    .line 1053
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v4

    add-int/2addr v3, v10

    .line 1056
    :cond_2
    sub-int v10, v2, v12

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1057
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1058
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1059
    if-lez v4, :cond_3

    .line 1060
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v4

    sub-int/2addr v3, v10

    .line 1063
    :cond_3
    move v7, v3

    .line 1066
    .local v7, retVal:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mExcessScroll:I

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 1068
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mExcessScroll:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 1069
    .local v6, ratio:F
    const v10, 0x3d4ccccd

    cmpg-float v10, v6, v10

    if-gez v10, :cond_4

    .line 1070
    const v6, 0x3d4ccccd

    .line 1073
    :cond_4
    int-to-float v10, v7

    mul-float/2addr v10, v6

    float-to-int v7, v10

    .end local v6           #ratio:F
    :cond_5
    move v10, v7

    .line 1081
    .end local v0           #bottom:I
    .end local v3           #extent:I
    .end local v4           #height:I
    .end local v7           #retVal:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_1
    return v10

    :cond_6
    move v10, v12

    .line 1078
    goto :goto_1

    :cond_7
    move v10, v11

    .line 1081
    goto :goto_1
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->closeAllContextMenuIfOpen()Z

    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuPopedUp:Z

    .line 1091
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 1092
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 679
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->isContextMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 708
    :goto_0
    return v0

    .line 688
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 690
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->closeAllContextMenuIfOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 691
    goto :goto_0

    .line 697
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

    .line 703
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->closeAllContextMenuIfOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 704
    goto :goto_0

    .line 708
    :cond_4
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dump()V
    .locals 4

    .prologue
    const-string v3, "TFFlickContextMenuListView"

    .line 460
    const-string v2, "TFFlickContextMenuListView"

    const-string v2, "==== dump begin ===="

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 462
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->dump()V

    goto :goto_0

    .line 464
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_0
    const-string v2, "TFFlickContextMenuListView"

    const-string v2, "==== dump end ===="

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method public getContextMenuAnimationListener()Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    return-object v0
.end method

.method public getContextMenuEmergingEffect()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mEmergingAnimationType:I

    return v0
.end method

.method public getContextMenuViewFactory()Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

    return-object v0
.end method

.method invalidateCurrentItemRect()V
    .locals 0

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->invalidate()V

    .line 992
    return-void
.end method

.method public isContextMenuOpen()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 666
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 667
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v2, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v2, v4, :cond_0

    :cond_1
    move v2, v4

    .line 672
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 714
    const/4 v3, 0x0

    .line 716
    .local v3, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 717
    .local v0, action:I
    if-nez v0, :cond_0

    .line 718
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuPopedUp:Z

    .line 721
    :cond_0
    if-nez v0, :cond_3

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTouchMode:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    .line 723
    iput-boolean v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownY:I

    .line 725
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownY:I

    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->findMotionRow(I)I

    move-result v7

    iput v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    .line 727
    const/4 v5, 0x0

    .line 728
    .local v5, touchDownOnContextMenu:Z
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 729
    .local v1, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v7, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownRow:I

    if-ne v7, v8, :cond_1

    .line 730
    const/4 v5, 0x1

    goto :goto_0

    .line 734
    .end local v1           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_2
    if-nez v5, :cond_8

    .line 735
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->closeAllContextMenuIfOpen()Z

    .line 746
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #touchDownOnContextMenu:Z
    :cond_3
    :goto_1
    iget-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    if-eqz v7, :cond_4

    .line 747
    iget-object v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mGDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 750
    :cond_4
    if-eq v0, v9, :cond_5

    const/4 v7, 0x3

    if-ne v0, v7, :cond_6

    .line 751
    :cond_5
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    .line 754
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_7

    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v6, v7

    .line 756
    .local v6, verticalDistanceFromMotionDownY:I
    iget v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTouchSlop:I

    if-le v6, v7, :cond_7

    .line 757
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    .line 759
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->closeAllContextMenuIfOpen()Z

    .line 763
    .end local v6           #verticalDistanceFromMotionDownY:I
    :cond_7
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 765
    .local v4, superRetVal:Z
    if-nez v3, :cond_9

    move v7, v4

    .line 768
    :goto_2
    return v7

    .line 742
    .end local v4           #superRetVal:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #touchDownOnContextMenu:Z
    :cond_8
    invoke-virtual {p0, v9}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #touchDownOnContextMenu:Z
    .restart local v4       #superRetVal:Z
    :cond_9
    move v7, v9

    .line 768
    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 776
    const/4 v1, 0x0

    .line 778
    .local v1, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 779
    .local v0, action:I
    if-nez v0, :cond_0

    .line 780
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuPopedUp:Z

    .line 783
    :cond_0
    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    if-eqz v4, :cond_1

    .line 784
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mGDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 787
    :cond_1
    if-eq v0, v7, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 788
    :cond_2
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    .line 791
    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-boolean v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    if-eqz v4, :cond_4

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mMotionDownY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 793
    .local v3, verticalDistanceFromMotionDownY:I
    iget v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTouchSlop:I

    if-le v3, v4, :cond_4

    .line 794
    iput-boolean v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mTrackingHorizontalFlick:Z

    .line 796
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->closeAllContextMenuIfOpen()Z

    .line 800
    .end local v3           #verticalDistanceFromMotionDownY:I
    :cond_4
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 802
    .local v2, superRetVal:Z
    if-nez v1, :cond_5

    move v4, v2

    .line 805
    :goto_0
    return v4

    :cond_5
    move v4, v7

    goto :goto_0
.end method

.method public openContextMenuIfPossible(I)Z
    .locals 14
    .parameter "position"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getWidth()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getHeight()I

    move-result v10

    if-nez v10, :cond_1

    .line 552
    :cond_0
    const/4 v10, 0x0

    .line 637
    :goto_0
    return v10

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getFirstVisiblePosition()I

    move-result v5

    .line 556
    .local v5, posVisible:I
    if-ge p1, v5, :cond_2

    .line 560
    const/4 v10, 0x0

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildCount()I

    move-result v7

    .line 565
    .local v7, visibleListItemCount:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 566
    .local v1, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 567
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 571
    .end local v1           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_4
    sub-int v10, p1, v5

    if-lt v10, v7, :cond_5

    .line 575
    const/4 v10, 0x0

    goto :goto_0

    .line 578
    :cond_5
    const/4 v1, 0x0

    .line 579
    .restart local v1       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .line 580
    .local v0, c:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    iget v10, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    if-ne v10, p1, :cond_6

    .line 581
    move-object v1, v0

    goto :goto_2

    .line 585
    .end local v0           #c:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :cond_7
    if-eqz v1, :cond_9

    .line 587
    iget v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    iget v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 590
    :cond_8
    const/4 v10, 0x0

    goto :goto_0

    .line 596
    :cond_9
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;->makeContextMenuView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 599
    .local v6, rawContextMenuView:Landroid/view/View;
    :goto_3
    if-eqz v6, :cond_d

    .line 600
    invoke-direct {p0, v6}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->makeContextMenuViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    .line 602
    .local v9, wrappedContextMenuView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 603
    .local v4, itemView:Landroid/view/View;
    if-nez v4, :cond_b

    const/4 v10, 0x0

    goto :goto_0

    .line 596
    .end local v4           #itemView:Landroid/view/View;
    .end local v6           #rawContextMenuView:Landroid/view/View;
    .end local v9           #wrappedContextMenuView:Landroid/view/View;
    :cond_a
    const/4 v10, 0x0

    move-object v6, v10

    goto :goto_3

    .line 605
    .restart local v4       #itemView:Landroid/view/View;
    .restart local v6       #rawContextMenuView:Landroid/view/View;
    .restart local v9       #wrappedContextMenuView:Landroid/view/View;
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 606
    .local v8, width:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 608
    .local v2, height:I
    const/high16 v10, 0x4000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v11, 0x4000

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 611
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 617
    if-nez v1, :cond_c

    .line 618
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;

    .end local v1           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    const/4 v10, 0x0

    invoke-direct {v1, p0, p1, v10, v9}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;IILandroid/view/View;)V

    .line 628
    .restart local v1       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;
    :goto_4
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->showContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;)V

    .line 637
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 623
    :cond_c
    iput p1, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 624
    const/4 v10, 0x0

    iput v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 625
    iput-object v9, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    goto :goto_4

    .line 633
    .end local v2           #height:I
    .end local v4           #itemView:Landroid/view/View;
    .end local v8           #width:I
    .end local v9           #wrappedContextMenuView:Landroid/view/View;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->isContextMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    const/4 v0, 0x1

    .line 1031
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setContextMenuAnimationListener(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuAnimationListener;

    .line 512
    return-void
.end method

.method public setContextMenuEmergingEffect(I)V
    .locals 0
    .parameter "emergingEffect"

    .prologue
    .line 474
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mEmergingAnimationType:I

    .line 475
    return-void
.end method

.method public setContextMenuViewFactory(Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuListView$ContextMenuViewFactory;

    .line 494
    return-void
.end method
