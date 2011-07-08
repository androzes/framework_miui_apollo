.class public Lcom/nemustech/tiffany/world/TFPageFlipper;
.super Ljava/lang/Object;
.source "TFPageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;,
        Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TFPageFlipper"


# instance fields
.field private mActive:Z

.field private mAnimationEventListener:Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;

.field private mBackBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBlending:Z

.field private mContext:Landroid/content/Context;

.field private mDecorLayout:Landroid/widget/FrameLayout;

.field private mDepthTest:Z

.field private mDragMode:Z

.field private mEconomic:Z

.field private mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

.field private mEffectInterpolator:Landroid/view/animation/Interpolator;

.field private mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

.field private mEffecting:Z

.field private mHandler:Landroid/os/Handler;

.field private mImageProvider:Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;

.field private mOrientation:I

.field private mPageHeight:F

.field private mPageIndex:I

.field private mPagePanelList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFPagePanel;",
            ">;"
        }
    .end annotation
.end field

.field private mPageRightToLeft:Z

.field private mPageWidth:F

.field private mParam1:I

.field private mParam2:I

.field private mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

.field private mTotalPages:I

.field private mUnitPanelHeight:F

.field private mUnitPanelWidth:F

.field private mViewList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowMgr:Landroid/view/WindowManager;

.field private mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageRightToLeft:Z

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    .line 701
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    .line 702
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    .line 703
    iput v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mOrientation:I

    .line 21
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    .line 25
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWindowMgr:Landroid/view/WindowManager;

    .line 26
    new-instance v0, Lcom/nemustech/tiffany/world/TFWindow;

    invoke-direct {v0, p1}, Lcom/nemustech/tiffany/world/TFWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    .line 27
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWindow;->addFlags(I)V

    .line 29
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWindow;->addFlags(I)V

    .line 30
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-static {}, Lcom/nemustech/tiffany/world/TFUtils;->loadLibrary()V

    .line 35
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 37
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDragMode:Z

    .line 38
    iput v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageIndex:I

    .line 39
    iput v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageWidth:F

    .line 40
    iput v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageHeight:F

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/world/TFPageFlipper;Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFPageFlipper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageWidth:F

    return v0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDecorLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWindowMgr:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/world/TFPageFlipper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nemustech/tiffany/world/TFPagePanel;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->getMaxDegree(Lcom/nemustech/tiffany/world/TFPagePanel;F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mImageProvider:Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->shiftList(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nemustech/tiffany/world/TFPageFlipper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageIndex:I

    return v0
.end method

.method static synthetic access$1802(Lcom/nemustech/tiffany/world/TFPageFlipper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/nemustech/tiffany/world/TFPageFlipper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mTotalPages:I

    return v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/world/TFPageFlipper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mUnitPanelWidth:F

    return v0
.end method

.method static synthetic access$2000(Lcom/nemustech/tiffany/world/TFPageFlipper;IIZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->getNextIndex(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/TFPageFlipper;)Lcom/nemustech/tiffany/world/TFView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nemustech/tiffany/world/TFPageFlipper;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mBackBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/world/TFPageFlipper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/world/TFPageFlipper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageRightToLeft:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/world/TFPageFlipper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->prepareReadyPage(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/world/TFPageFlipper;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private adjustModelIndex()V
    .locals 5

    .prologue
    .line 570
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 571
    .local v3, size:I
    const/4 v2, 0x0

    .line 572
    .local v2, panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, j:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 573
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    check-cast v2, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 574
    .restart local v2       #panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v4, v2, v1}, Lcom/nemustech/tiffany/world/TFWorld;->setModelIndex(Lcom/nemustech/tiffany/world/TFModel;I)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method private static getMaxDegree(Lcom/nemustech/tiffany/world/TFPagePanel;F)I
    .locals 12
    .parameter "p"
    .parameter "timeline"

    .prologue
    const/high16 v9, 0x3f80

    .line 622
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getWidth()F

    move-result v6

    .line 623
    .local v6, w:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getHeight()F

    move-result v2

    .line 625
    .local v2, h:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getPageOverInterpolator()Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;

    .line 626
    .local v3, inter:Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;
    const v7, 0x40490fdb

    iget v8, v3, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v9, v7

    .line 627
    .local v1, factor:F
    mul-float v4, p1, v1

    .line 628
    .local v4, t:F
    mul-float v7, v4, v2

    float-to-double v7, v7

    sub-float/2addr v9, v4

    mul-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 629
    .local v5, theta:F
    const/16 v7, 0x5a

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v0, v7, v8

    .line 631
    .local v0, degree:I
    return v0
.end method

.method private getNextIndex(IIZ)I
    .locals 2
    .parameter "curIndex"
    .parameter "totNo"
    .parameter "isRightToLeft"

    .prologue
    const/4 v1, 0x1

    .line 552
    move v0, p1

    .line 554
    .local v0, resultIndex:I
    if-ne p3, v1, :cond_1

    .line 555
    add-int/lit8 v0, v0, 0x1

    .line 556
    if-lt v0, p2, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 561
    if-gez v0, :cond_0

    .line 562
    sub-int v0, p2, v1

    goto :goto_0
.end method

.method private getNextPage(Z)Lcom/nemustech/tiffany/world/TFPagePanel;
    .locals 4
    .parameter "isRightToLeft"

    .prologue
    const/4 v3, 0x1

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, resultPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 528
    .local v1, size:I
    if-ne p1, v3, :cond_0

    .line 529
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resultPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 534
    .restart local v0       #resultPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    :goto_0
    return-object v0

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resultPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .restart local v0       #resultPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    goto :goto_0
.end method

.method private getNextView(Z)Landroid/view/View;
    .locals 4
    .parameter "isRightToLeft"

    .prologue
    const/4 v3, 0x1

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, resultView:Landroid/view/View;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 542
    .local v1, size:I
    if-ne p1, v3, :cond_0

    .line 543
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resultView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 548
    .restart local v0       #resultView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resultView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #resultView:Landroid/view/View;
    goto :goto_0
.end method

.method private makeImagePanel(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bmp"

    .prologue
    const/high16 v4, 0x3f80

    .line 432
    const v0, 0x3cf5c28f

    .line 434
    .local v0, FRONT_SHADOW_RATIO:F
    iput v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mUnitPanelWidth:F

    .line 435
    iget v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageHeight:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageWidth:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mUnitPanelHeight:F

    .line 437
    new-instance v1, Lcom/nemustech/tiffany/world/TFPagePanel;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mUnitPanelWidth:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mUnitPanelHeight:F

    invoke-direct {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FF)V

    .line 438
    .local v1, panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    const v2, 0x3cf5c28f

    invoke-virtual {v1, v2, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setBorderShaodw(FF)V

    .line 439
    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setBackMaskOpacity(F)V

    .line 440
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->reverseImage(II)V

    .line 441
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 442
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method private prepareReadyPage(Z)V
    .locals 6
    .parameter "isRightToLeft"

    .prologue
    .line 514
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mImageProvider:Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;

    if-eqz v3, :cond_0

    .line 515
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageRightToLeft:Z

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->getNextPage(Z)Lcom/nemustech/tiffany/world/TFPagePanel;

    move-result-object v2

    .line 516
    .local v2, readyPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageIndex:I

    iget v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mTotalPages:I

    iget-boolean v5, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageRightToLeft:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFPageFlipper;->getNextIndex(IIZ)I

    move-result v0

    .line 517
    .local v0, nextPageIndex:I
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageRightToLeft:Z

    invoke-direct {p0, v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->getNextView(Z)Landroid/view/View;

    move-result-object v1

    .line 518
    .local v1, nextView:Landroid/view/View;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mImageProvider:Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;

    invoke-interface {v3, v2, v1, v0}, Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;->setImage(Lcom/nemustech/tiffany/world/TFModel;Landroid/view/View;I)V

    .line 520
    .end local v0           #nextPageIndex:I
    .end local v1           #nextView:Landroid/view/View;
    .end local v2           #readyPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    :cond_0
    return-void
.end method

.method private revertPagePanel(Lcom/nemustech/tiffany/world/TFPagePanel;)V
    .locals 2
    .parameter "panel"

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 582
    .restart local p1
    invoke-virtual {p1, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 583
    invoke-virtual {p1, v1, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->look(FF)V

    .line 584
    invoke-virtual {p1, v1, v1, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->locate(FFF)V

    .line 588
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 589
    return-void
.end method

.method private setAnimationWindow()V
    .locals 3

    .prologue
    .line 635
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 637
    .local v0, wl:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 638
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 639
    const-string v1, "TFPageFlipper"

    const-string v2, "Couldn\'t determine root view. Use in activity transition"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    return-void
.end method

.method private shiftList(Z)V
    .locals 0
    .parameter "isRightToLeft"

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->shiftViewList(Z)V

    .line 593
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->shiftPagePanelList(Z)V

    .line 594
    return-void
.end method

.method private shiftPagePanelList(Z)V
    .locals 2
    .parameter "isRightToLeft"

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, movingPanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #movingPanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 611
    .restart local v0       #movingPanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 617
    :goto_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->adjustModelIndex()V

    .line 618
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->revertPagePanel(Lcom/nemustech/tiffany/world/TFPagePanel;)V

    .line 619
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #movingPanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 614
    .restart local v0       #movingPanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private shiftViewList(Z)V
    .locals 2
    .parameter "isRightToLeft"

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, movingView:Landroid/view/View;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #movingView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 600
    .restart local v0       #movingView:Landroid/view/View;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #movingView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 603
    .restart local v0       #movingView:Landroid/view/View;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V
    .locals 5
    .parameter "bReversed"
    .parameter "degree"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 447
    .local v0, curPagePanel:Lcom/nemustech/tiffany/world/TFPagePanel;
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->lock()V

    .line 449
    invoke-virtual {v0, p2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 451
    new-instance v1, Lcom/nemustech/tiffany/world/TFPageFlipper$7;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$7;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setOnUpdateVertexListener(Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;)V

    .line 482
    if-eqz p1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 483
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDragMode:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    move v2, v4

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 489
    new-instance v1, Lcom/nemustech/tiffany/world/TFPageFlipper$8;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$8;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 510
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 511
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 483
    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "index"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->addView(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    .line 63
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter "v"
    .parameter "bmp"
    .parameter "index"

    .prologue
    .line 75
    if-nez p2, :cond_2

    .line 76
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, cacheBmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 84
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper;->makeImagePanel(Landroid/graphics/Bitmap;)V

    .line 97
    .end local v0           #cacheBmp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_2
    if-nez p3, :cond_3

    .line 90
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mBackBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    :cond_3
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFPageFlipper;->makeImagePanel(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 261
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 262
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 263
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 264
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 265
    .local v2, panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->deleteAllImageResource()V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v2           #panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 269
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 273
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 274
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    .line 275
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 277
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_2
    return-void
.end method

.method public enterPageFlipper()V
    .locals 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->show()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v1, Lcom/nemustech/tiffany/world/TFPageFlipper$3;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$3;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 295
    :cond_0
    return-void
.end method

.method public exitPageFlipper()V
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v1, Lcom/nemustech/tiffany/world/TFPageFlipper$4;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$4;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 327
    :cond_0
    return-void
.end method

.method public finishDrag(IZZ)V
    .locals 4
    .parameter "duration"
    .parameter "canceled"
    .parameter "isRightToLeft"

    .prologue
    .line 354
    move v1, p1

    .line 355
    .local v1, f_duration:I
    move v0, p2

    .line 356
    .local v0, f_canceled:Z
    iput-boolean p3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageRightToLeft:Z

    .line 357
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    .line 359
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/TFPageFlipper$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper$5;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;ZI)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mViewList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getWorld()Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    return v0
.end method

.method public isEffecting()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->pause()V

    .line 236
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->resume()V

    .line 245
    :cond_0
    return-void
.end method

.method public setAnimationEventListener(Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;)V
    .locals 0
    .parameter "animationEventListener"

    .prologue
    .line 677
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFPageFlipper$AnimationEventListener;

    .line 678
    return-void
.end method

.method public setDragAmount(FI)V
    .locals 4
    .parameter "t"
    .parameter "degree"

    .prologue
    .line 389
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDragMode:Z

    if-eqz v2, :cond_0

    .line 390
    move v1, p1

    .line 391
    .local v1, final_t:F
    move v0, p2

    .line 393
    .local v0, final_degree:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/TFPageFlipper$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/nemustech/tiffany/world/TFPageFlipper$6;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;IF)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 403
    .end local v0           #final_degree:I
    .end local v1           #final_t:F
    :cond_0
    return-void
.end method

.method public setEffectParam(IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "param1"
    .parameter "param2"
    .parameter "interpolator"

    .prologue
    .line 109
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mParam1:I

    .line 110
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mParam2:I

    .line 111
    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    .line 112
    return-void
.end method

.method public setEffectingDone()V
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    .line 428
    const-string v0, "TFPageFlipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### updatePage() mEffecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public setImageProvider(Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;)V
    .locals 0
    .parameter "iProvider"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mImageProvider:Lcom/nemustech/tiffany/world/TFPageFlipper$ImageProvider;

    .line 413
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 119
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mOrientation:I

    .line 120
    return-void
.end method

.method public setPageSize(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 50
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageWidth:F

    .line 51
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPageHeight:F

    .line 52
    return-void
.end method

.method public setTotalPages(I)V
    .locals 0
    .parameter "totPages"

    .prologue
    .line 128
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mTotalPages:I

    .line 129
    return-void
.end method

.method public show()Z
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x1

    .line 137
    new-instance v3, Lcom/nemustech/tiffany/world/TFView;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/nemustech/tiffany/world/TFView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    .line 138
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mBackBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v3, Lcom/nemustech/tiffany/world/TFWorld;

    const/high16 v4, 0x40e0

    invoke-direct {v3, v6, v6, v4}, Lcom/nemustech/tiffany/world/TFWorld;-><init>(FFF)V

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 142
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->lock()V

    .line 145
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 146
    .local v1, no:I
    sub-int v0, v1, v5

    .local v0, j:I
    :goto_0
    if-ltz v0, :cond_0

    .line 147
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mPagePanelList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 148
    .local v2, panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 149
    const/high16 v3, 0x3e80

    const v4, 0x3f666666

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setPageShadow(FF)V

    .line 146
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    .end local v2           #panel:Lcom/nemustech/tiffany/world/TFPagePanel;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v4, Lcom/nemustech/tiffany/world/TFPageFlipper$1;

    invoke-direct {v4, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$1;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWorld;->setViewSizeChangeListener(Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;)V

    .line 165
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v4, Lcom/nemustech/tiffany/world/TFPageFlipper$2;

    invoke-direct {v4, p0}, Lcom/nemustech/tiffany/world/TFPageFlipper$2;-><init>(Lcom/nemustech/tiffany/world/TFPageFlipper;)V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWorld;->setPostDrawListener(Ljava/lang/Runnable;)V

    .line 179
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDepthTest:Z

    .line 180
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEconomic:Z

    .line 181
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mBlending:Z

    .line 183
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFPageFlipper;->setAnimationWindow()V

    .line 186
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3, v5}, Lcom/nemustech/tiffany/world/TFWorld;->banQueryingMatrix(Z)Z

    .line 187
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->removeReflectingFloor()V

    .line 189
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mDepthTest:Z

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWorld;->setDepthTestMode(Z)V

    .line 190
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEconomic:Z

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWorld;->setEconomicMode(Z)V

    .line 191
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mBlending:Z

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWorld;->setBlendingMode(Z)V

    .line 194
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWorld;->show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;

    .line 195
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mActive:Z

    .line 197
    return v5
.end method

.method public showEffect(Z)Z
    .locals 4
    .parameter "bReversed"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    if-nez v1, :cond_0

    .line 210
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mParam1:I

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mParam2:I

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPageFlipper;->showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V

    .line 211
    const/4 v0, 0x1

    .line 214
    :cond_0
    const-string v1, "TFPageFlipper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### showEffect() mEffecting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mEffecting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPageFlipper;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->stop()V

    .line 254
    :cond_0
    return-void
.end method
