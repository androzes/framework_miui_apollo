.class Lcom/nemustech/tiffany/world/TFRenderer;
.super Ljava/lang/Object;
.source "TFRenderer.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFView$Renderer;


# static fields
.field private static final FRAME_RATE_EVAL_PERIOD:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "TFRenderer"

.field private static final TICK_HOLD_LIMIT:J = 0x1eL

.field private static accumulatedDrawingCount:J

.field private static accumulatedTickPassed:J

.field private static mScratch:[F


# instance fields
.field final mArrayHolder:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mArrayModel:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFModel;",
            ">;"
        }
    .end annotation
.end field

.field final mAttachOrder:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nemustech/tiffany/world/TFObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Lcom/nemustech/tiffany/world/TFCamera;

.field private mCancelSelection:Z

.field private mCurrTick:J

.field private mDelayLoader:Lcom/nemustech/tiffany/world/TFDelayLoader;

.field private mDownTick:J

.field private mDownX:F

.field private mDownY:F

.field private mDragInterval:J

.field private mDrawCount:I

.field private mEndX:F

.field private mEndY:F

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHandler:Landroid/os/Handler;

.field mHeight:I

.field private mHitTestLine:[F

.field private mHoldStartX:F

.field private mHoldStartY:F

.field mLeft:I

.field private mMVP:[F

.field private mPrevDragTick:J

.field private mPrevTick:J

.field private mRecentSelectedFaceIndex:I

.field private mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

.field mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

.field private mStartX:F

.field private mStartY:F

.field private mTickPassed:F

.field mTop:I

.field private mUnViewportBuffer:[F

.field private mUpX:F

.field private mUpY:F

.field private mV:[F

.field private mValidDown:Z

.field mWidth:I

.field private mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 900
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    .line 943
    sput-wide v1, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedTickPassed:J

    .line 944
    sput-wide v1, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedDrawingCount:J

    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;Lcom/nemustech/tiffany/world/TFCamera;)V
    .locals 2
    .parameter "world"
    .parameter "camera"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownY:F

    .line 889
    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUpX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUpY:F

    .line 890
    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartY:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mEndX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mEndY:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mTickPassed:F

    .line 892
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHitTestLine:[F

    .line 893
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUnViewportBuffer:[F

    .line 934
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDelayLoader:Lcom/nemustech/tiffany/world/TFDelayLoader;

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDrawCount:I

    .line 21
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 22
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    .line 28
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedFaceIndex:I

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mMVP:[F

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mV:[F

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/TFRenderer;)Lcom/nemustech/tiffany/world/TFModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;)Lcom/nemustech/tiffany/world/TFModel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFRenderer;->prvDown(Lcom/nemustech/tiffany/world/TFModel;FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFRenderer;->prvUp(Lcom/nemustech/tiffany/world/TFModel;FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/TFRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mValidDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/TFRenderer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownX:F

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/world/TFRenderer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownY:F

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/world/TFRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mCancelSelection:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/world/TFRenderer;Lcom/nemustech/tiffany/world/TFModel;FFFFI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/nemustech/tiffany/world/TFRenderer;->prvDrag(Lcom/nemustech/tiffany/world/TFModel;FFFFI)V

    return-void
.end method

.method private computeMVP([FI)V
    .locals 7
    .parameter "modelView"
    .parameter "modelViewOffset"

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v6

    .line 781
    .local v6, camera:Lcom/nemustech/tiffany/world/TFCamera;
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mMVP:[F

    iget-object v2, v6, Lcom/nemustech/tiffany/world/TFCamera;->mMatrix:[F

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 782
    return-void
.end method

.method private getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V
    .locals 3
    .parameter "gl"
    .parameter "mode"
    .parameter "mat"

    .prologue
    .line 774
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v1, v0

    .line 775
    .local v1, gl2:Lcom/nemustech/tiffany/world/TFGL;
    invoke-virtual {v1, p2}, Lcom/nemustech/tiffany/world/TFGL;->glMatrixMode(I)V

    .line 776
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 777
    return-void
.end method

.method private getSquare([FIIFF)F
    .locals 6
    .parameter "vertex"
    .parameter "offset"
    .parameter "blobSize"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, sumPositive:F
    const/4 v2, 0x0

    .line 418
    .local v2, sumNegative:F
    move v1, p2

    .local v1, i:I
    :goto_0
    add-int v4, p2, p3

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_0

    .line 421
    aget v4, p1, v1

    add-int/lit8 v5, v1, 0x3

    aget v5, p1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 422
    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 418
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 427
    :cond_0
    aget v4, p1, v1

    mul-float/2addr v4, p5

    add-int/lit8 v5, p2, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 428
    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, p4

    aget v5, p1, p2

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 433
    sub-float v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4000

    div-float v0, v4, v5

    .line 434
    .local v0, S:F
    return v0
.end method

.method private project([FI[FI)V
    .locals 9
    .parameter "obj"
    .parameter "objOffset"
    .parameter "win"
    .parameter "winOffset"

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f00

    const/high16 v7, 0x3f80

    .line 789
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mV:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mMVP:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 791
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mV:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    div-float v6, v7, v0

    .line 793
    .local v6, rw:F
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mLeft:I

    int-to-float v0, v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mV:[F

    aget v1, v3, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    mul-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    aput v0, p3, p4

    .line 794
    add-int/lit8 v0, p4, 0x1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mV:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v3, v7

    mul-float/2addr v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    aput v1, p3, v0

    .line 795
    add-int/lit8 v0, p4, 0x2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mV:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, v7

    mul-float/2addr v1, v8

    aput v1, p3, v0

    .line 796
    return-void
.end method

.method private prvDown(Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 2
    .parameter "selectedModel"
    .parameter "x"
    .parameter "y"

    .prologue
    const-string v1, "TFRenderer"

    .line 591
    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getLockStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 596
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->isGoingToStop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mValidDown:Z

    .line 598
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedFaceIndex:I

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->setTouchedIndex(I)V

    .line 600
    const-string v0, "TFRenderer"

    const-string v0, "Touch Down"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFHolder;->handleDown(Lcom/nemustech/tiffany/world/TFModel;FF)V

    .line 627
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 628
    return-void

    .line 605
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->handleDown(FF)V

    goto :goto_0

    .line 609
    :cond_2
    const-string v0, "TFRenderer"

    const-string v0, "Down detected, but the selectedModel is locked!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prvDrag(Lcom/nemustech/tiffany/world/TFModel;FFFFI)V
    .locals 7
    .parameter "selectedModel"
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"
    .parameter "tickPassed"

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getLockStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 563
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFHolder;->handleDrag(Lcom/nemustech/tiffany/world/TFModel;FFFFI)V

    .line 586
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 587
    return-void

    .line 566
    :cond_1
    invoke-virtual/range {p1 .. p6}, Lcom/nemustech/tiffany/world/TFModel;->handleDrag(FFFFI)V

    goto :goto_0

    .line 570
    :cond_2
    const-string v0, "TFRenderer"

    const-string v1, "Drag on locked model."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prvUp(Lcom/nemustech/tiffany/world/TFModel;FF)V
    .locals 2
    .parameter "selectedModel"
    .parameter "x"
    .parameter "y"

    .prologue
    const-string v1, "TFRenderer"

    .line 632
    if-eqz p1, :cond_0

    .line 634
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->getLockStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 636
    const-string v0, "TFRenderer"

    const-string v0, "Touch Up"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->setTouchedIndex(I)V

    .line 639
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFHolder;->handleUp(Lcom/nemustech/tiffany/world/TFModel;FF)V

    .line 663
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 664
    return-void

    .line 642
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->handleUp(FF)V

    goto :goto_0

    .line 646
    :cond_2
    const-string v0, "TFRenderer"

    const-string v0, "Locked!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unProject(FFF[FI[FI[II[FI)Z
    .locals 10
    .parameter "winx"
    .parameter "winy"
    .parameter "winz"
    .parameter "model"
    .parameter "offsetM"
    .parameter "proj"
    .parameter "offsetP"
    .parameter "viewport"
    .parameter "offsetV"
    .parameter "xyz"
    .parameter "offset"

    .prologue
    .line 805
    const/16 v1, 0x28

    new-array v0, v1, [F

    .line 806
    .local v0, _tempGluUnProjectData:[F
    const/4 v8, 0x0

    .line 807
    .local v8, _temp_m:I
    const/16 v6, 0x10

    .line 808
    .local v6, _temp_A:I
    const/16 v7, 0x20

    .line 809
    .local v7, _temp_in:I
    const/16 v9, 0x24

    .line 813
    .local v9, _temp_out:I
    const/16 v1, 0x20

    aget v2, p8, p9

    int-to-float v2, v2

    sub-float v2, p1, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    add-int/lit8 v3, p9, 0x2

    aget v3, p8, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 815
    const/16 v1, 0x21

    add-int/lit8 v2, p9, 0x1

    aget v2, p8, v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    add-int/lit8 v3, p9, 0x3

    aget v3, p8, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 817
    const/16 v1, 0x22

    const/high16 v2, 0x4000

    mul-float/2addr v2, p3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 818
    const/16 v1, 0x23

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 821
    const/16 v1, 0x10

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 823
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v0, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 826
    const/16 v1, 0x24

    const/4 v3, 0x0

    const/16 v5, 0x20

    move-object v2, v0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 829
    const/16 v1, 0x27

    aget v1, v0, v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 830
    const/4 v1, 0x0

    .line 838
    :goto_0
    return v1

    .line 832
    :cond_0
    const/16 v1, 0x24

    aget v1, v0, v1

    const/16 v2, 0x27

    aget v2, v0, v2

    div-float/2addr v1, v2

    aput v1, p10, p11

    .line 834
    add-int/lit8 v1, p11, 0x1

    const/16 v2, 0x25

    aget v2, v0, v2

    const/16 v3, 0x27

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p10, v1

    .line 836
    add-int/lit8 v1, p11, 0x2

    const/16 v2, 0x26

    aget v2, v0, v2

    const/16 v3, 0x27

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p10, v1

    .line 838
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/nemustech/tiffany/world/TFHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/nemustech/tiffany/world/TFHolder;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 395
    return-void
.end method

.method add(Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 3
    .parameter "model"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 372
    const-string v0, "TFRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model count after adding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method public getConfigSpec()[I
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWorld;->isTranslucentMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, configSpec:[I
    move-object v1, v0

    .line 258
    .end local v0           #configSpec:[I
    .local v1, configSpec:[I
    :goto_0
    return-object v1

    .line 254
    .end local v1           #configSpec:[I
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .restart local v0       #configSpec:[I
    move-object v1, v0

    .line 258
    .end local v0           #configSpec:[I
    .restart local v1       #configSpec:[I
    goto :goto_0

    .line 242
    nop

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 254
    :array_1
    .array-data 0x4
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method getFaceVertices(Lcom/nemustech/tiffany/world/TFModel;I[F)V
    .locals 9
    .parameter "model"
    .parameter "faceIndex"
    .parameter "vertices"

    .prologue
    .line 497
    const/4 v0, 0x4

    .line 498
    .local v0, VERTEX_NUM_OF_POLYGON:I
    const/16 v2, 0x8

    .line 500
    .local v2, numVertices:I
    iget-object v5, p1, Lcom/nemustech/tiffany/world/TFModel;->mMatrix:[F

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/nemustech/tiffany/world/TFRenderer;->computeMVP([FI)V

    .line 502
    array-length v5, p3

    if-ne v5, v2, :cond_2

    .line 504
    new-array v4, v2, [F

    .line 507
    .local v4, rasterVertices:[F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    .line 509
    mul-int/lit8 v5, p2, 0xc

    mul-int/lit8 v6, v1, 0x3

    add-int v3, v5, v6

    .line 510
    .local v3, offset:I
    sget-object v5, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    aput v7, v5, v6

    .line 511
    sget-object v5, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    aput v7, v5, v6

    .line 512
    sget-object v5, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    aput v7, v5, v6

    .line 513
    sget-object v5, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v6, 0x3

    const/high16 v7, 0x3f80

    aput v7, v5, v6

    .line 515
    sget-object v5, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v6, 0x0

    sget-object v7, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v8, 0x4

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/nemustech/tiffany/world/TFRenderer;->project([FI[FI)V

    .line 517
    const/4 v5, 0x1

    if-le v1, v5, :cond_0

    .line 519
    const/4 v5, 0x4

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    aput v6, v4, v5

    .line 520
    const/4 v5, 0x4

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    aput v6, v4, v5

    .line 507
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    mul-int/lit8 v5, v1, 0x2

    sget-object v6, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    aput v6, v4, v5

    .line 525
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/nemustech/tiffany/world/TFRenderer;->mScratch:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    aput v6, v4, v5

    goto :goto_1

    .line 529
    .end local v3           #offset:I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, p3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    .end local v1           #j:I
    .end local v4           #rasterVertices:[F
    :cond_2
    return-void
.end method

.method getHitTestLine(FF[F)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "hitLine"

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nemustech/tiffany/world/TFRenderer;->getHitTestLine(FF[FI)V

    .line 844
    return-void
.end method

.method getHitTestLine(FF[FI)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "hitLine"
    .parameter "hitLineOffset"

    .prologue
    .line 846
    const/4 v8, 0x0

    .line 847
    .local v8, _result:I
    const/16 v7, 0x8

    .line 848
    .local v7, _invertV:I
    const/16 v6, 0x18

    .line 849
    .local v6, _dc:I
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUnViewportBuffer:[F

    .line 852
    .local v0, m:[F
    const/16 v1, 0x18

    const/16 v2, 0x1c

    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mLeft:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    aput v3, v0, v2

    aput v3, v0, v1

    .line 853
    const/16 v1, 0x19

    const/16 v2, 0x1d

    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mTop:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v0, v2

    aput v3, v0, v1

    .line 854
    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 855
    const/16 v1, 0x1e

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 856
    const/16 v1, 0x1b

    const/16 v2, 0x1f

    const/high16 v3, 0x3f80

    aput v3, v0, v2

    aput v3, v0, v1

    .line 858
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v1

    iget-object v9, v1, Lcom/nemustech/tiffany/world/TFCamera;->mMatrix:[F

    .line 859
    .local v9, cameraMatrix:[F
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v9, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x8

    const/16 v5, 0x18

    move-object v2, v0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 865
    const/4 v1, 0x4

    const/16 v3, 0x8

    const/16 v5, 0x1c

    move-object v2, v0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 867
    add-int/lit8 v1, p4, 0x0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 868
    add-int/lit8 v1, p4, 0x1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 869
    add-int/lit8 v1, p4, 0x2

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 870
    add-int/lit8 v1, p4, 0x3

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 871
    add-int/lit8 v1, p4, 0x4

    const/4 v2, 0x4

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 872
    add-int/lit8 v1, p4, 0x5

    const/4 v2, 0x5

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 873
    add-int/lit8 v1, p4, 0x6

    const/4 v2, 0x6

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 874
    add-int/lit8 v1, p4, 0x7

    const/4 v2, 0x7

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, p3, v1

    .line 886
    return-void
.end method

.method getSelectedFaceIndex(Lcom/nemustech/tiffany/world/TFModel;FF[F)I
    .locals 2
    .parameter "model"
    .parameter "x"
    .parameter "y"
    .parameter "near"

    .prologue
    .line 534
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHitTestLine:[F

    invoke-virtual {p1, v1}, Lcom/nemustech/tiffany/world/TFModel;->updateHitTestLine([F)V

    .line 535
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 536
    invoke-virtual {p1, p4}, Lcom/nemustech/tiffany/world/TFModel;->getHitFace([F)I

    move-result v0

    .line 538
    .local v0, ret:I
    return v0
.end method

.method getSelectedModel(FF)Lcom/nemustech/tiffany/world/TFModel;
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 440
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    .line 491
    :goto_0
    return-object v10

    .line 445
    :cond_0
    const/4 v10, 0x1

    new-array v6, v10, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v6, v10

    .line 448
    .local v6, near:[F
    const/4 v9, 0x0

    .line 449
    .local v9, selectedModel:Lcom/nemustech/tiffany/world/TFModel;
    const/4 v8, 0x0

    .line 450
    .local v8, selectedFaceIndex:I
    const v7, -0x39e3c000

    .line 452
    .local v7, nearest:F
    const-string v10, "TFRenderer"

    const-string v11, "++getSelectedModel"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHitTestLine:[F

    invoke-virtual {p0, p1, p2, v10}, Lcom/nemustech/tiffany/world/TFRenderer;->getHitTestLine(FF[F)V

    .line 455
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nemustech/tiffany/world/TFModel;

    .line 456
    .local v4, m:Lcom/nemustech/tiffany/world/TFModel;
    iget-boolean v10, v4, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v10, :cond_1

    iget-boolean v10, v4, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-eqz v10, :cond_1

    .line 458
    invoke-virtual {p0, v4, p1, p2, v6}, Lcom/nemustech/tiffany/world/TFRenderer;->getSelectedFaceIndex(Lcom/nemustech/tiffany/world/TFModel;FF[F)I

    move-result v0

    .line 459
    .local v0, faceIndex:I
    if-ltz v0, :cond_1

    .line 461
    const/4 v10, 0x0

    aget v10, v6, v10

    cmpl-float v10, v10, v7

    if-lez v10, :cond_1

    .line 462
    const/4 v10, 0x0

    aget v7, v6, v10

    .line 463
    move-object v9, v4

    .line 464
    move v8, v0

    goto :goto_1

    .line 467
    .end local v0           #faceIndex:I
    .end local v4           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_2
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFHolder;

    .line 468
    .local v1, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelCount()I

    move-result v5

    .line 469
    .local v5, modelCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_3

    .line 470
    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFHolder;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v4

    .line 471
    .restart local v4       #m:Lcom/nemustech/tiffany/world/TFModel;
    iget-boolean v10, v4, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v10, :cond_4

    iget-boolean v10, v4, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-nez v10, :cond_5

    .line 469
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 473
    :cond_5
    invoke-virtual {p0, v4, p1, p2, v6}, Lcom/nemustech/tiffany/world/TFRenderer;->getSelectedFaceIndex(Lcom/nemustech/tiffany/world/TFModel;FF[F)I

    move-result v0

    .line 474
    .restart local v0       #faceIndex:I
    if-ltz v0, :cond_4

    .line 476
    const/4 v10, 0x0

    aget v10, v6, v10

    cmpl-float v10, v10, v7

    if-lez v10, :cond_4

    .line 477
    const/4 v10, 0x0

    aget v7, v6, v10

    .line 478
    move-object v9, v4

    .line 479
    move v8, v0

    goto :goto_3

    .line 484
    .end local v0           #faceIndex:I
    .end local v1           #h:Lcom/nemustech/tiffany/world/TFHolder;
    .end local v2           #i:I
    .end local v4           #m:Lcom/nemustech/tiffany/world/TFModel;
    .end local v5           #modelCount:I
    :cond_6
    const/4 v10, -0x1

    iput v10, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedFaceIndex:I

    .line 485
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    .line 486
    if-eqz v9, :cond_7

    .line 487
    iput v8, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedFaceIndex:I

    .line 488
    iput-object v9, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    .line 490
    :cond_7
    const-string v10, "TFRenderer"

    const-string v11, "--getSelectedModel"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 491
    goto/16 :goto_0
.end method

.method public handleDown(FFJ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "currentTick"

    .prologue
    .line 668
    iput p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownX:F

    .line 669
    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownY:F

    .line 670
    iput p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHoldStartX:F

    .line 671
    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHoldStartY:F

    .line 673
    iput-wide p3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownTick:J

    .line 674
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mCancelSelection:Z

    .line 678
    iget v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownX:F

    .line 679
    .local v1, tx:F
    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownY:F

    .line 681
    .local v2, ty:F
    new-instance v0, Lcom/nemustech/tiffany/world/TFRenderer$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/world/TFRenderer$1;-><init>(Lcom/nemustech/tiffany/world/TFRenderer;FF)V

    .line 688
    .local v0, r:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3, v0}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method public handleDrag(FFFFJ)V
    .locals 8
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "currentTick"

    .prologue
    .line 722
    iput p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartX:F

    .line 723
    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartY:F

    .line 724
    iput p3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mEndX:F

    .line 725
    iput p4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mEndY:F

    .line 727
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mPrevDragTick:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 728
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDragInterval:J

    .line 732
    :goto_0
    iput-wide p5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mPrevDragTick:J

    .line 734
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mCancelSelection:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHoldStartX:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHoldStartY:F

    sub-float v0, p4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 738
    :cond_0
    iput-wide p5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownTick:J

    .line 739
    iput p3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHoldStartX:F

    .line 740
    iput p4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHoldStartY:F

    .line 742
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 745
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownX:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartX:F

    .line 746
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownY:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartY:F

    .line 748
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mCancelSelection:Z

    .line 751
    :cond_3
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mCancelSelection:Z

    if-eqz v0, :cond_4

    .line 753
    iget v4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartX:F

    .line 754
    .local v4, tStartX:F
    iget v5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mStartY:F

    .line 755
    .local v5, tStartY:F
    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mEndX:F

    .line 756
    .local v2, tEndX:F
    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mEndY:F

    .line 757
    .local v3, tEndY:F
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDragInterval:J

    long-to-int v6, v0

    .line 759
    .local v6, tTickPassed:I
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v0, Lcom/nemustech/tiffany/world/TFRenderer$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nemustech/tiffany/world/TFRenderer$3;-><init>(Lcom/nemustech/tiffany/world/TFRenderer;FFFFI)V

    invoke-virtual {v7, v0}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 769
    .end local v2           #tEndX:F
    .end local v3           #tEndY:F
    .end local v4           #tStartX:F
    .end local v5           #tStartY:F
    .end local v6           #tTickPassed:I
    :cond_4
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 770
    return-void

    .line 730
    :cond_5
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mPrevDragTick:J

    sub-long v0, p5, v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDragInterval:J

    goto :goto_0
.end method

.method public handleTap(FF)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedFaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 545
    const-string v0, "TFRenderer"

    const-string v1, "Touch select"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    iput p1, v0, Lcom/nemustech/tiffany/world/TFModel;->mTapAbsX:F

    .line 547
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    iput p2, v0, Lcom/nemustech/tiffany/world/TFModel;->mTapAbsY:F

    .line 548
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedModel:Lcom/nemustech/tiffany/world/TFModel;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mRecentSelectedFaceIndex:I

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFModel;->handleTap(I)V

    .line 550
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleUp(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 692
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownTick:J

    .line 693
    iput p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUpX:F

    .line 694
    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUpY:F

    .line 696
    iget v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUpX:F

    .line 697
    .local v1, tx:F
    iget v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mUpY:F

    .line 701
    .local v2, ty:F
    new-instance v0, Lcom/nemustech/tiffany/world/TFRenderer$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/nemustech/tiffany/world/TFRenderer$2;-><init>(Lcom/nemustech/tiffany/world/TFRenderer;FF)V

    .line 716
    .local v0, r:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3, v0}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 717
    return-void
.end method

.method initDrawCount()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDrawCount:I

    .line 365
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 25
    .parameter "gl"

    .prologue
    .line 44
    const/16 v4, 0x4100

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mChangeFogStatus:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/nemustech/tiffany/world/TFWorld;->mChangeFogStatus:Z

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mFogEnabled:Z

    if-eqz v4, :cond_6

    .line 55
    const/4 v4, 0x4

    new-array v11, v4, [F

    fill-array-data v11, :array_0

    .line 56
    .local v11, fogColor:[F
    const/16 v4, 0xb65

    const/16 v5, 0x2601

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 57
    const/16 v4, 0xb66

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move-object v2, v11

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 58
    const/16 v4, 0xc54

    const/16 v5, 0x1100

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 59
    const/16 v4, 0xb63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v5, v0

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mFogStart:F

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 60
    const/16 v4, 0xb64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v5, v0

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mFogEnd:F

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 61
    const/16 v4, 0xb60

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 69
    .end local v11           #fogColor:[F
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFWorld;->isBlendingMode()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 71
    const/16 v4, 0xbe2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 79
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFWorld;->isDepthTestMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 80
    const/16 v4, 0xb71

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 86
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mCurrTick:J

    .line 88
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mPrevTick:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 89
    const/16 v24, 0x0

    .line 96
    .local v24, tickPassed:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    move-object v4, v0

    const/4 v5, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, v24

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFCamera;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mCamera:Lcom/nemustech/tiffany/world/TFCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v4, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v5, v4, v6}, Lcom/nemustech/tiffany/world/TFCamera;->updateProjection(Lcom/nemustech/tiffany/world/TFGL;F)Z

    .line 105
    :cond_1
    const/16 v4, 0x1700

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 106
    const/16 v4, 0xde1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 107
    const/16 v4, 0xb10

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 108
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 110
    const/16 v23, 0x0

    .line 111
    .local v23, showAxis:Z
    if-eqz v23, :cond_2

    .line 112
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40a0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 113
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40a0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 114
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40a0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 115
    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 116
    const/high16 v5, -0x4080

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, -0x4080

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 117
    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 118
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, -0x4080

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/nemustech/tiffany/world/TFUtils;->drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    if-eqz v4, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownTick:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mCurrTick:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mDownTick:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1e

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v4, Lcom/nemustech/tiffany/world/TFWorld;->mTouchDown:Z

    .line 139
    const/16 v20, 0x0

    .line 140
    .local v20, modelIdx:I
    const/4 v15, 0x0

    .line 141
    .local v15, holderIdx:I
    const/16 v17, 0x0

    .local v17, idx:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_c

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/nemustech/tiffany/world/TFObject;

    .line 143
    .local v22, o:Lcom/nemustech/tiffany/world/TFObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    move/from16 v0, v20

    move v1, v4

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    if-ne v0, v1, :cond_b

    .line 144
    move-object/from16 v0, v22

    check-cast v0, Lcom/nemustech/tiffany/world/TFModel;

    move-object/from16 v18, v0

    .line 145
    .local v18, model:Lcom/nemustech/tiffany/world/TFModel;
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 146
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 147
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 148
    invoke-virtual/range {v18 .. v18}, Lcom/nemustech/tiffany/world/TFModel;->checkEffectFinish()V

    .line 149
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 150
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFPlaceHolder;->checkEffectFinish()V

    .line 151
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 152
    add-int/lit8 v20, v20, 0x1

    .line 141
    .end local v18           #model:Lcom/nemustech/tiffany/world/TFModel;
    :cond_5
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 65
    .end local v15           #holderIdx:I
    .end local v17           #idx:I
    .end local v20           #modelIdx:I
    .end local v22           #o:Lcom/nemustech/tiffany/world/TFObject;
    .end local v23           #showAxis:Z
    .end local v24           #tickPassed:I
    :cond_6
    const/16 v4, 0xb60

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_0

    .line 75
    :cond_7
    const/16 v4, 0xbe2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_1

    .line 82
    :cond_8
    const/16 v4, 0xb71

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_2

    .line 91
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mCurrTick:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mPrevTick:J

    move-wide v6, v0

    sub-long/2addr v4, v6

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 v24, v0

    .restart local v24       #tickPassed:I
    goto/16 :goto_3

    .line 127
    .restart local v23       #showAxis:Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 154
    .restart local v15       #holderIdx:I
    .restart local v17       #idx:I
    .restart local v20       #modelIdx:I
    .restart local v22       #o:Lcom/nemustech/tiffany/world/TFObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v15, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    if-ne v0, v1, :cond_5

    .line 155
    move-object/from16 v0, v22

    check-cast v0, Lcom/nemustech/tiffany/world/TFHolder;

    move-object v13, v0

    .line 156
    .local v13, holder:Lcom/nemustech/tiffany/world/TFHolder;
    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFHolder;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 157
    invoke-virtual {v13}, Lcom/nemustech/tiffany/world/TFHolder;->checkEffectFinish()V

    .line 158
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 185
    .end local v13           #holder:Lcom/nemustech/tiffany/world/TFHolder;
    .end local v22           #o:Lcom/nemustech/tiffany/world/TFObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFCamera;->checkEffectFinish()V

    .line 187
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mCurrTick:J

    move-wide v4, v0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mPrevTick:J

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mDrawCount:I

    move v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_d

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mDrawCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFRenderer;->mDrawCount:I

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mDrawCount:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mPostDrawListener:Ljava/lang/Runnable;

    if-eqz v4, :cond_d

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mPostDrawListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/nemustech/tiffany/world/TFWorld;->mPostDrawListener:Ljava/lang/Runnable;

    .line 201
    :cond_d
    sget-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedTickPassed:J

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    .line 203
    sget-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedTickPassed:J

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide v6, v0

    add-long/2addr v4, v6

    sput-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedTickPassed:J

    .line 204
    sget-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedDrawingCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedDrawingCount:J

    .line 235
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/nemustech/tiffany/world/TFWorld;->mRequestRender:Z

    .line 236
    return-void

    .line 209
    :cond_e
    const/16 v19, 0x0

    .line 212
    .local v19, modelCounts:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v21

    .line 213
    .local v21, modelInWorld:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v14

    .line 215
    .local v14, holderCounts:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nemustech/tiffany/world/TFHolder;

    .line 216
    .local v12, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v12}, Lcom/nemustech/tiffany/world/TFHolder;->getModelCount()I

    move-result v4

    add-int v19, v19, v4

    goto :goto_8

    .line 219
    .end local v12           #h:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_f
    const-string v4, "TFRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v6, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedDrawingCount:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sget-wide v8, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedTickPassed:J

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fps, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " model(s) in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " holder(s), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " model(s) in world"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedTickPassed:J

    .line 223
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/nemustech/tiffany/world/TFRenderer;->accumulatedDrawingCount:J

    goto/16 :goto_7

    .line 55
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 264
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v2, v0

    .line 266
    .local v2, gl2:Lcom/nemustech/tiffany/world/TFGL;
    iput v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mLeft:I

    .line 267
    iput v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mTop:I

    .line 268
    iput p2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    .line 269
    iput p3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    .line 271
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mViewSizeChangeListener:Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mViewSizeChangeListener:Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;

    invoke-interface {v3, p2, p3}, Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;->onViewSizeChanged(II)V

    .line 276
    :cond_0
    const-string v3, "TFRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TFView size changed, width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mLeft:I

    iget v4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mTop:I

    iget v5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nemustech/tiffany/world/TFGL;->glViewport(IIII)V

    .line 279
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v1

    .line 280
    .local v1, camera:Lcom/nemustech/tiffany/world/TFCamera;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFCamera;->updateProjection(Lcom/nemustech/tiffany/world/TFGL;F)Z

    .line 281
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x1

    const-string v7, "TFRenderer"

    .line 288
    const/16 v2, 0x1f03

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, strExtension:Ljava/lang/String;
    const-string v2, "TFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGL extension list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "GL_OES_query_matrix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_2

    .line 292
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2, v6}, Lcom/nemustech/tiffany/world/TFWorld;->setCapability(I)V

    .line 293
    const-string v2, "TFRenderer"

    const-string v2, "Query matrix enabled. Using hardware matrix calculation"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    const/16 v2, 0xbd0

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 311
    const/16 v2, 0xc50

    const/16 v3, 0x1102

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 314
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundR:F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundG:F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundB:F

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, v5, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundA:F

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 319
    const/16 v2, 0xb44

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 320
    const/16 v2, 0x1d01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 321
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 324
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 329
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    .line 332
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 333
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nemustech/tiffany/world/TFTextures;->createTextureInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/nemustech/tiffany/world/TFTextureInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 336
    :cond_0
    new-array v0, v6, [I

    .line 337
    .local v0, sandTextureName:[I
    invoke-interface {p1, v6, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 338
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    aget v3, v0, v9

    iput v3, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    .line 340
    const-string v2, "TFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Texture name of Default delayed loading image : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v2, "TFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default image buffer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    const/16 v3, 0x2601

    invoke-static {p1, v2, v3}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureInfo(Ljavax/microedition/khronos/opengles/GL10;Lcom/nemustech/tiffany/world/TFTextureInfo;I)V

    .line 345
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mBackground:Lcom/nemustech/tiffany/world/TFWorld$TFBackground;

    invoke-virtual {v2, p1, v6}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFDelayLoader;->getInstance(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFDelayLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDelayLoader:Lcom/nemustech/tiffany/world/TFDelayLoader;

    .line 348
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mDelayLoader:Lcom/nemustech/tiffany/world/TFDelayLoader;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/nemustech/tiffany/world/TFDelayLoader;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    .line 355
    return-void

    .line 297
    .end local v0           #sandTextureName:[I
    :cond_2
    const-string v2, "TFRenderer"

    const-string v2, "Hardware query matrix is not supported. Using Tiffany engine\'s matrix."

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFRenderer;->initDrawCount()V

    .line 361
    return-void
.end method

.method remove(Lcom/nemustech/tiffany/world/TFHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 400
    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFHolder;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFModel;->deleteAllImageResource()V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 404
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 406
    const-string v1, "TFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Holder count after deletion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayHolder:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method remove(Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 3
    .parameter "model"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mAttachOrder:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFModel;->deleteAllImageResource()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 386
    const-string v0, "TFRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model count after deletion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFRenderer;->mArrayModel:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method
