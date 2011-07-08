.class public Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;
.super Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.source "TFFlickContextMenuExListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;,
        Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
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

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final EFFECT_ROTATE_HORIZONTAL:I = 0x1

.field public static final EFFECT_SLIDE_HORIZONTAL:I = 0x0

.field private static final INVALID_INDEX:I = -0x1

.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TFFlickContextMenuExListView"


# instance fields
.field private mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

.field private mContextMenuInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContextMenuPopedUp:Z

.field private mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

.field private mEmergingAnimationType:I

.field private mGDetector:Landroid/view/GestureDetector;

.field private mMinimumFlingVelocity:I

.field private mMotionDownRow:I

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTempTransformation:Landroid/view/animation/Transformation;

.field private mTouchSlop:I

.field private mTrackingHorizontalFlick:Z

.field private mTrackingHorizontalFlickLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 498
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 501
    invoke-static {}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInstance()Lcom/nemustech/tiffany/widget/TFResourceBroker;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFResourceBroker;->getInt(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 502
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    .line 489
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mEmergingAnimationType:I

    .line 491
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 492
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect:Landroid/graphics/Rect;

    .line 493
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    .line 508
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 509
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchSlop:I

    .line 510
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMinimumFlingVelocity:I

    .line 512
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$1;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$1;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mGDetector:Landroid/view/GestureDetector;

    .line 526
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;ZZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->fireAnimationListener(ZZII)V

    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->onHorizontalFlickDetected(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mGDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getCurrentContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/view/animation/Transformation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMinimumFlingVelocity:I

    return v0
.end method

.method private fireAnimationListener(ZZII)V
    .locals 7
    .parameter "bOpen"
    .parameter "bStart"
    .parameter "itemIndex"
    .parameter "direction"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v4, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    .line 601
    .local v4, l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$2;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;ZZLcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;II)V

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->post(Ljava/lang/Runnable;)Z

    .line 613
    .end local v4           #l:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;
    :cond_0
    return-void
.end method

.method private getCurrentContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;
    .locals 2
    .parameter "cmi"

    .prologue
    .line 1192
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1194
    :cond_0
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    goto :goto_0
.end method

.method private getCurrentListItemView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)Landroid/view/View;
    .locals 4
    .parameter "cmi"

    .prologue
    const/4 v3, 0x0

    .line 1201
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v3

    .line 1211
    :goto_0
    return-object v1

    .line 1206
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1207
    .local v0, firstVisible:I
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    if-lt v1, v0, :cond_2

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1209
    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 1211
    goto :goto_0
.end method

.method static getReverseDirection(I)I
    .locals 1
    .parameter "directionType"

    .prologue
    const/4 v0, 0x1

    .line 529
    packed-switch p0, :pswitch_data_0

    .line 532
    :goto_0
    :pswitch_0
    return v0

    .line 531
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;ZZ)V
    .locals 5
    .parameter "cmi"
    .parameter "animate"
    .parameter "fasterAnimation"

    .prologue
    const/16 v2, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1119
    if-nez p2, :cond_2

    .line 1121
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->removeFloatingView(Landroid/view/View;)V

    .line 1125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 1127
    :cond_1
    iput v3, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 1129
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1155
    :goto_0
    return-void

    .line 1133
    :cond_2
    const/4 v0, 0x3

    iput v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 1135
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1136
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1137
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->removeFloatingView(Landroid/view/View;)V

    .line 1141
    :cond_3
    invoke-static {p1, v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;I)I

    .line 1142
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mEmergingAnimationType:I

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getReverseDirection(I)I

    move-result v1

    invoke-static {p1, v0, v1, v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$1200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;IIZ)V

    .line 1143
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$1300(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;II)V

    .line 1147
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

    if-eqz p3, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->start(I)V

    .line 1150
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget-object v2, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1151
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 1153
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->fireAnimationListener(ZZII)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1147
    goto :goto_1
.end method

.method private makeContextMenuViewWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "rawContextMenuView"

    .prologue
    const/4 v3, -0x1

    .line 1004
    new-instance v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;Landroid/content/Context;)V

    .line 1006
    .local v1, wrapper:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1010
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p1, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    return-object v1
.end method

.method private onHorizontalFlickDetected(Z)V
    .locals 15
    .parameter "flickLeftToRight"

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 1020
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1024
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getReverseDirection(I)I

    move-result v1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    .line 1025
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;ZZ)V

    .line 1115
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_1
    :goto_1
    return-void

    .line 1024
    .restart local v0       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1031
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_3
    iget-boolean v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuPopedUp:Z

    if-nez v1, :cond_1

    .line 1037
    const/4 v8, 0x0

    .line 1038
    .local v8, existingCmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 1039
    .restart local v0       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    if-ne v1, v2, :cond_4

    .line 1040
    iget v1, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1046
    move-object v8, v0

    goto :goto_2

    .line 1050
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_5
    const/4 v13, 0x0

    .line 1052
    .local v13, rawContextMenuView:Landroid/view/View;
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    if-eqz p1, :cond_9

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;->makeContextMenuView(Landroid/content/Context;II)Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;

    move-result-object v1

    move-object v11, v1

    .line 1056
    .local v11, info:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
    :goto_4
    if-eqz v11, :cond_6

    .line 1057
    iget-object v13, v11, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->contextMenuView:Landroid/view/View;

    .line 1060
    :cond_6
    if-eqz v13, :cond_1

    .line 1061
    invoke-direct {p0, v13}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->makeContextMenuViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1063
    .local v4, wrappedContextMenuView:Landroid/view/View;
    iget v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1065
    .local v12, itemView:Landroid/view/View;
    if-eqz v12, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1070
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1071
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1072
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1074
    iget v1, v11, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    if-eqz v1, :cond_7

    .line 1075
    iget v1, v11, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1077
    .local v7, childForLocationHint:Landroid/view/View;
    if-eqz v7, :cond_7

    .line 1078
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1079
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1080
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1081
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1082
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v7, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1086
    .end local v7           #childForLocationHint:Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 1087
    .local v14, width:I
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1089
    .local v9, height:I
    const/high16 v1, 0x4000

    invoke-static {v14, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1092
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 1099
    if-eqz v8, :cond_8

    .line 1101
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;ZZ)V

    .line 1105
    :cond_8
    new-instance v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    move v5, v1

    :goto_5
    iget v6, v11, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;IILandroid/view/View;II)V

    .line 1113
    .restart local v0       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->showContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)V

    goto/16 :goto_1

    .line 1052
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    .end local v4           #wrappedContextMenuView:Landroid/view/View;
    .end local v9           #height:I
    .end local v11           #info:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
    .end local v12           #itemView:Landroid/view/View;
    .end local v14           #width:I
    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_a
    const/4 v1, 0x0

    move-object v11, v1

    goto/16 :goto_4

    .line 1105
    .restart local v4       #wrappedContextMenuView:Landroid/view/View;
    .restart local v9       #height:I
    .restart local v11       #info:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
    .restart local v12       #itemView:Landroid/view/View;
    .restart local v14       #width:I
    :cond_b
    const/4 v1, 0x1

    move v5, v1

    goto :goto_5
.end method

.method private showContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)V
    .locals 4
    .parameter "cmi"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1160
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    iput v3, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 1164
    invoke-static {p1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$202(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;I)I

    .line 1165
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mEmergingAnimationType:I

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    invoke-static {p1, v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$1200(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;IIZ)V

    .line 1168
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->access$1300(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;II)V

    .line 1172
    iget-object v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;->start(I)V

    .line 1174
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget-object v2, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemAnimation:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo$ContextMenuItemAnimation;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 1175
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mItemAnimator:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->start()V

    .line 1177
    iget v0, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v1, p1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mEmergingDirection:I

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->fireAnimationListener(ZZII)V

    .line 1178
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method public closeAllContextMenuIfOpen()Z
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuInOpen(Z)Z

    move-result v0

    return v0
.end method

.method public closeAllContextMenuInOpen(Z)Z
    .locals 6
    .parameter "animated"

    .prologue
    const/4 v5, 0x1

    .line 764
    const/4 v2, 0x0

    .line 765
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 766
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v3, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v3, v5, :cond_0

    .line 768
    :cond_1
    invoke-direct {p0, v0, p1, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->hideContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;ZZ)V

    .line 769
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_2
    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    .line 773
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->invalidate()V

    .line 775
    :cond_3
    return v2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1227
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildCount()I

    move-result v2

    .line 1229
    .local v2, count:I
    iget-object v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 1230
    .local v1, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget-object v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_0

    .line 1231
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1235
    .end local v1           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_1
    if-lez v2, :cond_7

    .line 1236
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->isSmoothScrollbarEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1237
    mul-int/lit8 v3, v2, 0x64

    .line 1239
    .local v3, extent:I
    invoke-virtual {p0, v11}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1240
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1241
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1242
    .local v4, height:I
    if-lez v4, :cond_2

    .line 1243
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v4

    add-int/2addr v3, v10

    .line 1246
    :cond_2
    sub-int v10, v2, v12

    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1247
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1248
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1249
    if-lez v4, :cond_3

    .line 1250
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v4

    sub-int/2addr v3, v10

    .line 1253
    :cond_3
    move v7, v3

    .line 1256
    .local v7, retVal:I
    iget v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mExcessScroll:I

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 1258
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mExcessScroll:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 1259
    .local v6, ratio:F
    const v10, 0x3d4ccccd

    cmpg-float v10, v6, v10

    if-gez v10, :cond_4

    .line 1260
    const v6, 0x3d4ccccd

    .line 1263
    :cond_4
    int-to-float v10, v7

    mul-float/2addr v10, v6

    float-to-int v7, v10

    .end local v6           #ratio:F
    :cond_5
    move v10, v7

    .line 1271
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

    .line 1268
    goto :goto_1

    :cond_7
    move v10, v11

    .line 1271
    goto :goto_1
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 1279
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuInOpen(Z)Z

    .line 1280
    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuPopedUp:Z

    .line 1281
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 1282
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 799
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 801
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->isContextMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 828
    :goto_0
    return v0

    .line 808
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 810
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuIfOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 811
    goto :goto_0

    .line 817
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

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuIfOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 824
    goto :goto_0

    .line 828
    :cond_4
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dump()V
    .locals 4

    .prologue
    const-string v3, "TFFlickContextMenuExListView"

    .line 537
    const-string v2, "TFFlickContextMenuExListView"

    const-string v2, "==== dump begin ===="

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 539
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->dump()V

    goto :goto_0

    .line 541
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_0
    const-string v2, "TFFlickContextMenuExListView"

    const-string v2, "==== dump end ===="

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public getContextMenuAnimationListener()Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    return-object v0
.end method

.method public getContextMenuEmergingEffect()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mEmergingAnimationType:I

    return v0
.end method

.method public getContextMenuViewFactory()Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

    return-object v0
.end method

.method invalidateCurrentItemRect()V
    .locals 0

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->invalidate()V

    .line 1182
    return-void
.end method

.method public isContextMenuOpen()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 786
    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 787
    .local v0, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v2, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    if-ne v2, v4, :cond_0

    :cond_1
    move v2, v4

    .line 792
    .end local v0           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 834
    const/4 v4, 0x0

    .line 836
    .local v4, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 837
    .local v0, action:I
    if-nez v0, :cond_0

    .line 838
    iput-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuPopedUp:Z

    .line 841
    :cond_0
    if-nez v0, :cond_3

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchMode:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_3

    .line 843
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    .line 844
    iput-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    .line 845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownY:I

    .line 846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownX:I

    .line 847
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownY:I

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->findMotionRow(I)I

    move-result v8

    iput v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    .line 849
    const/4 v6, 0x0

    .line 850
    .local v6, touchDownOnContextMenu:Z
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 851
    .local v1, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v8, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    if-ne v8, v9, :cond_1

    .line 852
    const/4 v6, 0x1

    goto :goto_0

    .line 856
    .end local v1           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_2
    if-nez v6, :cond_9

    .line 857
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuIfOpen()Z

    .line 868
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #touchDownOnContextMenu:Z
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    if-eqz v8, :cond_5

    .line 869
    :cond_4
    iget-object v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mGDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 872
    :cond_5
    if-eq v0, v10, :cond_6

    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    .line 873
    :cond_6
    iput-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    .line 874
    iput-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    .line 877
    :cond_7
    const/4 v8, 0x2

    if-ne v0, v8, :cond_8

    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v2, v8

    .line 879
    .local v2, horizontalDistanceFromMotionDownX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v7, v8

    .line 882
    .local v7, verticalDistanceFromMotionDownY:I
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v8, :cond_8

    .line 883
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchSlop:I

    if-le v7, v8, :cond_a

    .line 884
    iput-boolean v11, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    .line 886
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuIfOpen()Z

    .line 896
    .end local v2           #horizontalDistanceFromMotionDownX:I
    .end local v7           #verticalDistanceFromMotionDownY:I
    :cond_8
    :goto_2
    iget-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v8, :cond_b

    move v8, v10

    .line 905
    :goto_3
    return v8

    .line 864
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #touchDownOnContextMenu:Z
    :cond_9
    invoke-virtual {p0, v10}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 888
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #touchDownOnContextMenu:Z
    .restart local v2       #horizontalDistanceFromMotionDownX:I
    .restart local v7       #verticalDistanceFromMotionDownY:I
    :cond_a
    iget v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchSlop:I

    if-le v2, v8, :cond_8

    .line 889
    iput-boolean v10, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    .line 890
    const-string v8, "TFFlickContextMenuExListView"

    const-string v9, "onInterceptTouchEvent.ACTION_MOVE, mTrackingHorizontalFlickLocked = true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 900
    .end local v2           #horizontalDistanceFromMotionDownX:I
    .end local v7           #verticalDistanceFromMotionDownY:I
    :cond_b
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 902
    .local v5, superRetVal:Z
    if-nez v4, :cond_c

    move v8, v5

    .line 903
    goto :goto_3

    :cond_c
    move v8, v10

    .line 905
    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 913
    const/4 v2, 0x0

    .line 915
    .local v2, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 916
    .local v0, action:I
    if-nez v0, :cond_0

    .line 917
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuPopedUp:Z

    .line 920
    :cond_0
    if-nez v0, :cond_1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchMode:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchMode:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 922
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    .line 923
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownY:I

    .line 925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownX:I

    .line 926
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownY:I

    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->findMotionRow(I)I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownRow:I

    .line 929
    :cond_1
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    if-eqz v5, :cond_3

    .line 930
    :cond_2
    iget-object v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mGDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 933
    :cond_3
    if-eq v0, v8, :cond_4

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    .line 934
    :cond_4
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    .line 935
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    .line 938
    :cond_5
    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    if-eqz v5, :cond_6

    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 940
    .local v1, horizontalDistanceFromMotionDownX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mMotionDownY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 943
    .local v4, verticalDistanceFromMotionDownY:I
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    if-nez v5, :cond_6

    .line 944
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchSlop:I

    if-le v4, v5, :cond_7

    .line 945
    iput-boolean v7, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlick:Z

    .line 947
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->closeAllContextMenuIfOpen()Z

    .line 957
    .end local v1           #horizontalDistanceFromMotionDownX:I
    .end local v4           #verticalDistanceFromMotionDownY:I
    :cond_6
    :goto_0
    iget-boolean v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    if-eqz v5, :cond_8

    move v5, v8

    .line 966
    :goto_1
    return v5

    .line 949
    .restart local v1       #horizontalDistanceFromMotionDownX:I
    .restart local v4       #verticalDistanceFromMotionDownY:I
    :cond_7
    iget v5, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTouchSlop:I

    if-le v1, v5, :cond_6

    .line 950
    iput-boolean v8, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTrackingHorizontalFlickLocked:Z

    goto :goto_0

    .line 961
    .end local v1           #horizontalDistanceFromMotionDownX:I
    .end local v4           #verticalDistanceFromMotionDownY:I
    :cond_8
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 963
    .local v3, superRetVal:Z
    if-nez v2, :cond_9

    move v5, v3

    .line 964
    goto :goto_1

    :cond_9
    move v5, v8

    .line 966
    goto :goto_1
.end method

.method public openContextMenuIfPossible(II)Z
    .locals 21
    .parameter "position"
    .parameter "flickDirection"

    .prologue
    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getHeight()I

    move-result v5

    if-nez v5, :cond_1

    .line 628
    :cond_0
    const/4 v5, 0x0

    .line 741
    :goto_0
    return v5

    .line 631
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getFirstVisiblePosition()I

    move-result v17

    .line 632
    .local v17, posVisible:I
    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 636
    const/4 v5, 0x0

    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildCount()I

    move-result v19

    .line 641
    .local v19, visibleListItemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 642
    .local v4, cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v5, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 643
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 647
    .end local v4           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_4
    sub-int v5, p1, v17

    move v0, v5

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 651
    const/4 v5, 0x0

    goto :goto_0

    .line 654
    :cond_5
    const/4 v4, 0x0

    .line 655
    .restart local v4       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuInfos:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .line 656
    .local v11, c:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    iget v5, v11, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    move v0, v5

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 657
    move-object v4, v11

    goto :goto_2

    .line 661
    .end local v11           #c:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :cond_7
    if-eqz v4, :cond_9

    .line 663
    iget v5, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    iget v5, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 666
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 672
    :cond_9
    const/16 v18, 0x0

    .line 674
    .local v18, rawContextMenuView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

    move-object v5, v0

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;->makeContextMenuView(Landroid/content/Context;II)Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;

    move-result-object v5

    move-object v15, v5

    .line 677
    .local v15, info:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
    :goto_3
    if-eqz v18, :cond_f

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->makeContextMenuViewWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 680
    .local v8, wrappedContextMenuView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 682
    .local v16, itemView:Landroid/view/View;
    if-nez v16, :cond_b

    .line 683
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 674
    .end local v8           #wrappedContextMenuView:Landroid/view/View;
    .end local v15           #info:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
    .end local v16           #itemView:Landroid/view/View;
    :cond_a
    const/4 v5, 0x0

    move-object v15, v5

    goto :goto_3

    .line 686
    .restart local v8       #wrappedContextMenuView:Landroid/view/View;
    .restart local v15       #info:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;
    .restart local v16       #itemView:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 691
    iget v5, v15, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    if-eqz v5, :cond_c

    .line 692
    iget v5, v15, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 694
    .local v12, childForLocationHint:Landroid/view/View;
    if-eqz v12, :cond_d

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 706
    .end local v12           #childForLocationHint:Landroid/view/View;
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 707
    .local v20, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 709
    .local v13, height:I
    const/high16 v5, 0x4000

    move/from16 v0, v20

    move v1, v5

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, 0x4000

    invoke-static {v13, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v8, v5, v6}, Landroid/view/View;->measure(II)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mTempRect2:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v5, v6, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 718
    if-nez v4, :cond_e

    .line 719
    new-instance v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;

    .end local v4           #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    const/4 v7, 0x0

    iget v10, v15, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;-><init>(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;IILandroid/view/View;II)V

    .line 732
    .restart local v4       #cmi:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;
    :goto_5
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->showContextMenuView(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;)V

    .line 741
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 702
    .end local v13           #height:I
    .end local v20           #width:I
    .restart local v12       #childForLocationHint:Landroid/view/View;
    :cond_d
    const/4 v5, 0x0

    iput v5, v15, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    goto :goto_4

    .line 726
    .end local v12           #childForLocationHint:Landroid/view/View;
    .restart local v13       #height:I
    .restart local v20       #width:I
    :cond_e
    move/from16 v0, p1

    move-object v1, v4

    iput v0, v1, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuItemIndex:I

    .line 727
    const/4 v5, 0x0

    iput v5, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuStatus:I

    .line 728
    iput-object v8, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mContextMenuView:Landroid/view/View;

    .line 729
    iget v5, v15, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactoryInfo;->childIdForLocationHint:I

    iput v5, v4, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuInfo;->mChildIdForLocationHint:I

    goto :goto_5

    .line 737
    .end local v8           #wrappedContextMenuView:Landroid/view/View;
    .end local v13           #height:I
    .end local v16           #itemView:Landroid/view/View;
    .end local v20           #width:I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->isContextMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    const/4 v0, 0x1

    .line 1221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setContextMenuAnimationListener(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuAnimationListener:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuAnimationListener;

    .line 587
    return-void
.end method

.method public setContextMenuEmergingEffect(I)V
    .locals 0
    .parameter "emergingEffect"

    .prologue
    .line 550
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mEmergingAnimationType:I

    .line 551
    return-void
.end method

.method public setContextMenuViewFactory(Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView;->mContextMenuViewFactory:Lcom/nemustech/tiffany/widget/TFFlickContextMenuExListView$ContextMenuViewFactory;

    .line 569
    return-void
.end method
