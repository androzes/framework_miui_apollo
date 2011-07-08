.class public Lcom/nemustech/tiffany/world/TFEffect;
.super Ljava/lang/Object;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;,
        Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;,
        Lcom/nemustech/tiffany/world/TFEffect$TwistParam;,
        Lcom/nemustech/tiffany/world/TFEffect$Genie;,
        Lcom/nemustech/tiffany/world/TFEffect$Sink;,
        Lcom/nemustech/tiffany/world/TFEffect$PageOver;,
        Lcom/nemustech/tiffany/world/TFEffect$Transition;,
        Lcom/nemustech/tiffany/world/TFEffect$Model;,
        Lcom/nemustech/tiffany/world/TFEffect$Status;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TFEffect"


# instance fields
.field private cameraZ:F

.field private mActive:Z

.field private mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

.field private mBD:Landroid/graphics/drawable/Drawable;

.field private mBackBitmap:[Landroid/graphics/Bitmap;

.field private mBitmap:[Landroid/graphics/Bitmap;

.field private mBlending:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mChild2DView:[Landroid/widget/ImageView;

.field private mChildView:[Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCoverImage:Landroid/graphics/Bitmap;

.field private mDecorLayout:Landroid/widget/FrameLayout;

.field private mDepthTest:Z

.field mDialogBitmapListener:Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;

.field private mDragMode:Z

.field private mEconomic:Z

.field private mEffect2DAnimationEnd:Ljava/lang/Runnable;

.field private mEffectFinishCnt:I

.field private mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

.field public mEffectInterpolator:Landroid/view/animation/Interpolator;

.field private mEffectKind:I

.field private mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

.field private mEffectWindowCleaningCnt:I

.field private mEndIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mOneWayAnimation:Z

.field private mPFBD:Landroid/graphics/drawable/Drawable;

.field private mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

.field private mParam1:I

.field private mParam2:I

.field mProcessModel:Lcom/nemustech/tiffany/world/TFObject;

.field private mRecycleSafe:[Z

.field private mReflectingFloorExist:Z

.field private mReverse:Z

.field private mStartIndex:I

.field private mStartTick:J

.field private mStatusBarHeight:I

.field private mStopping:Z

.field private mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

.field private mSurfaceViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mTouchableMode:Z

.field private mTranslucent:Z

.field protected mTwistParam:Lcom/nemustech/tiffany/world/TFEffect$TwistParam;

.field private mUIViewParent:Landroid/view/ViewGroup;

.field private mUnitPanelHeight:F

.field private mUnitPanelWidth:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mViewYOffset:I

.field private mWindowMgr:Landroid/view/WindowManager;

.field private mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v10, "TFEffect"

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$19;

    invoke-direct {v5, p0}, Lcom/nemustech/tiffany/world/TFEffect$19;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffect2DAnimationEnd:Ljava/lang/Runnable;

    .line 2732
    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$36;

    invoke-direct {v5, p0}, Lcom/nemustech/tiffany/world/TFEffect$36;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mSurfaceViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 2802
    iput-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    .line 2859
    iput-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCanvas:Landroid/graphics/Canvas;

    .line 2862
    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStopping:Z

    .line 2866
    iput-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTouchableMode:Z

    .line 2873
    iput-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTwistParam:Lcom/nemustech/tiffany/world/TFEffect$TwistParam;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 99
    .local v3, startTick:J
    const-string v5, "TFEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TFEffect creation start on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWindowMgr:Landroid/view/WindowManager;

    .line 102
    new-instance v5, Lcom/nemustech/tiffany/world/TFWindow;

    invoke-direct {v5, p1}, Lcom/nemustech/tiffany/world/TFWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    .line 103
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/nemustech/tiffany/world/TFWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v5}, Lcom/nemustech/tiffany/world/TFWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 105
    new-array v5, v7, [Landroid/view/View;

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    .line 106
    new-array v5, v7, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    .line 107
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v8

    .line 108
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v9

    .line 109
    new-array v5, v7, [Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    .line 110
    new-array v5, v7, [Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    .line 111
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStatusBarHeight:I

    .line 112
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mContext:Landroid/content/Context;

    .line 113
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mHandler:Landroid/os/Handler;

    .line 115
    new-array v5, v7, [Z

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    .line 117
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFEffect;->init()V

    .line 119
    invoke-static {}, Lcom/nemustech/tiffany/world/TFUtils;->loadLibrary()V

    .line 120
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 122
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFJniUtils;->verifyContext(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v3

    .line 125
    .local v1, duration:J
    const-string v5, "TFEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TFEffect created taking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !!!!!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/TFEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectKind:I

    return v0
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/TFEffect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mReverse:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/nemustech/tiffany/world/TFEffect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mActive:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/nemustech/tiffany/world/TFEffect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStopping:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nemustech/tiffany/world/TFEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/nemustech/tiffany/world/TFEffect;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    return v0
.end method

.method static synthetic access$1600(Lcom/nemustech/tiffany/world/TFEffect;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartTick:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/nemustech/tiffany/world/TFEffect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mOneWayAnimation:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/nemustech/tiffany/world/TFEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    return v0
.end method

.method static synthetic access$1808(Lcom/nemustech/tiffany/world/TFEffect;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    return v0
.end method

.method static synthetic access$1900(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffect;->prvOnFinishEffect(Lcom/nemustech/tiffany/world/TFModel;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffect;->prvOnFinishEffect([Lcom/nemustech/tiffany/world/TFModel;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/nemustech/tiffany/world/TFEffect;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffect2DAnimationEnd:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/nemustech/tiffany/world/TFPagePanel;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/nemustech/tiffany/world/TFEffect;->getMaxDegree(Lcom/nemustech/tiffany/world/TFPagePanel;F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFPagePanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/TFEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/world/TFEffect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/world/TFEffect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTranslucent:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/world/TFEffect;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWindowMgr:Landroid/view/WindowManager;

    return-object v0
.end method

.method private calcDegree(FFFF)F
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 2667
    sub-float v3, p3, p1

    .line 2668
    .local v3, dx:F
    sub-float v6, p4, p2

    neg-float v4, v6

    .line 2669
    .local v4, dy:F
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 2670
    .local v1, distance:F
    div-float v2, v3, v1

    .line 2671
    .local v2, dot_x:F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 2672
    .local v5, x_degree:F
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_0

    const/high16 v6, 0x43b4

    sub-float/2addr v6, v5

    move v0, v6

    .line 2673
    .local v0, degree:F
    :goto_0
    return v0

    .end local v0           #degree:F
    :cond_0
    move v0, v5

    .line 2672
    goto :goto_0
.end method

.method private calcTimeline(FFF)F
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "degree"

    .prologue
    .line 2611
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2612
    const/16 v19, 0x0

    .line 2664
    :goto_0
    return v19

    .line 2614
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v6, v19, v20

    .line 2615
    .local v6, halfW:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v5, v19, v20

    .line 2617
    .local v5, halfH:F
    const/16 v19, 0xa

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object v9, v0

    const/16 v19, 0x0

    move v0, v6

    neg-float v0, v0

    move/from16 v20, v0

    aput v20, v9, v19

    const/16 v19, 0x1

    move v0, v5

    neg-float v0, v0

    move/from16 v20, v0

    aput v20, v9, v19

    const/16 v19, 0x2

    move v0, v6

    neg-float v0, v0

    move/from16 v20, v0

    aput v20, v9, v19

    const/16 v19, 0x3

    aput v5, v9, v19

    const/16 v19, 0x4

    aput v6, v9, v19

    const/16 v19, 0x5

    move v0, v5

    neg-float v0, v0

    move/from16 v20, v0

    aput v20, v9, v19

    const/16 v19, 0x6

    aput v6, v9, v19

    const/16 v19, 0x7

    aput v5, v9, v19

    const/16 v19, 0x8

    sub-float v20, p1, v6

    aput v20, v9, v19

    const/16 v19, 0x9

    sub-float v20, p2, v5

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    aput v20, v9, v19

    .line 2624
    .local v9, p:[F
    const v18, 0x7f7fffff

    .line 2625
    .local v18, xMin:F
    const/16 v17, 0x1

    .line 2626
    .local v17, xMax:F
    move/from16 v0, p3

    neg-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v14, v0

    .line 2627
    .local v14, rad:F
    move v0, v14

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v2, v0

    .line 2628
    .local v2, cos:F
    move v0, v14

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v15, v0

    .line 2629
    .local v15, sin:F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 2630
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x0

    aget v11, v9, v19

    .line 2631
    .local v11, px:F
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x1

    aget v12, v9, v19

    .line 2632
    .local v12, py:F
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x0

    mul-float v20, v11, v2

    mul-float v21, v12, v15

    sub-float v20, v20, v21

    aput v20, v9, v19

    .line 2633
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-float v20, v11, v15

    mul-float v21, v12, v2

    add-float v20, v20, v21

    aput v20, v9, v19

    .line 2634
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x0

    aget v19, v9, v19

    cmpg-float v19, v19, v18

    if-gez v19, :cond_1

    .line 2635
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x0

    aget v18, v9, v19

    .line 2636
    :cond_1
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x0

    aget v19, v9, v19

    cmpl-float v19, v19, v17

    if-lez v19, :cond_2

    .line 2637
    mul-int/lit8 v19, v7, 0x2

    add-int/lit8 v19, v19, 0x0

    aget v17, v9, v19

    .line 2629
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2640
    .end local v11           #px:F
    .end local v12           #py:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nemustech/tiffany/world/TFPagePanel;->getPageOverInterpolator()Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;

    .line 2642
    .local v8, inter:Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;
    iget v13, v8, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    .line 2643
    .local v13, r:F
    const v10, 0x40490fdb

    .line 2644
    .local v10, pi:F
    const/high16 v19, 0x3f80

    mul-float v20, v13, v10

    add-float v4, v19, v20

    .line 2645
    .local v4, factor:F
    const/16 v19, 0x8

    aget v19, v9, v19

    sub-float v19, v17, v19

    sub-float v20, v17, v18

    div-float v3, v19, v20

    .line 2647
    .local v3, dl:F
    mul-float v19, v13, v10

    cmpg-float v19, v3, v19

    if-gez v19, :cond_4

    .line 2655
    mul-float v19, v3, v10

    mul-float v19, v19, v13

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v19, v4

    .local v16, t:F
    :goto_2
    move/from16 v19, v16

    .line 2664
    goto/16 :goto_0

    .line 2662
    .end local v16           #t:F
    :cond_4
    mul-float v19, v13, v10

    add-float v19, v19, v3

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    div-float v16, v19, v4

    .restart local v16       #t:F
    goto :goto_2
.end method

.method private static getMaxDegree(Lcom/nemustech/tiffany/world/TFPagePanel;F)I
    .locals 12
    .parameter "p"
    .parameter "timeline"

    .prologue
    const/high16 v9, 0x3f80

    .line 1889
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getWidth()F

    move-result v6

    .line 1890
    .local v6, w:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getHeight()F

    move-result v2

    .line 1892
    .local v2, h:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getPageOverInterpolator()Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;

    .line 1893
    .local v3, inter:Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;
    const v7, 0x40490fdb

    iget v8, v3, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v9, v7

    .line 1894
    .local v1, factor:F
    mul-float v4, p1, v1

    .line 1895
    .local v4, t:F
    mul-float v7, v4, v2

    float-to-double v7, v7

    sub-float/2addr v9, v4

    mul-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 1896
    .local v5, theta:F
    const/16 v7, 0x5a

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    double-to-int v8, v8

    sub-int v0, v7, v8

    .line 1898
    .local v0, degree:I
    return v0
.end method

.method private is2DEffect(I)Z
    .locals 1
    .parameter "effect"

    .prologue
    .line 383
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    const/16 v0, 0x13

    if-gt p1, v0, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prvOnFinishEffect(Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 2
    .parameter "modelToDetach"

    .prologue
    .line 308
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/nemustech/tiffany/world/TFModel;

    .line 309
    .local v0, modelsToDetach:[Lcom/nemustech/tiffany/world/TFModel;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 310
    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFEffect;->prvOnFinishEffect([Lcom/nemustech/tiffany/world/TFModel;)V

    .line 311
    return-void
.end method

.method private prvOnFinishEffect([Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 3
    .parameter "modelsToDetach"

    .prologue
    .line 243
    const-string v1, "TFEffect"

    const-string v2, "Transition effect ends."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->pause()V

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$1;

    invoke-direct {v2, p0, p1}, Lcom/nemustech/tiffany/world/TFEffect$1;-><init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFModel;)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    if-eqz v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$2;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/world/TFEffect$2;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$3;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/world/TFEffect$3;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method private setAnimationWindow()V
    .locals 7

    .prologue
    const/16 v4, 0x10

    const-string v6, "TFEffect"

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, heightExtra:I
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWindowMgr:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 727
    .local v1, heightScreen:I
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTouchableMode:Z

    if-eqz v3, :cond_0

    .line 728
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWindow;->clearFlags(I)V

    .line 732
    :goto_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 734
    .local v2, wl:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUIViewParent:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 735
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 737
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 738
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v3, v1, v3

    div-int/lit8 v0, v3, 0x2

    .line 740
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWindowMgr:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStatusBarHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewYOffset:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 741
    neg-int v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 757
    :goto_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    const-string v3, "TFEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rootview top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUIViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_2
    return-void

    .line 730
    .end local v2           #wl:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindow:Lcom/nemustech/tiffany/world/TFWindow;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFWindow;->addFlags(I)V

    goto :goto_0

    .line 747
    .restart local v2       #wl:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUIViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 752
    :cond_2
    const-string v3, "TFEffect"

    const-string v3, "No cover image."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 754
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUIViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 762
    :cond_3
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 763
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 764
    const-string v3, "TFEffect"

    const-string v3, "Couldn\'t determine root view. Use in activity transition"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWindowMgr:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private showEffectAskew()V
    .locals 27

    .prologue
    .line 1036
    const v26, 0x3dcccccd

    .line 1037
    .local v26, speedRotation:F
    const v24, 0x3b83126f

    .line 1038
    .local v24, speedMove:F
    const v25, 0x3bc49ba6

    .line 1040
    .local v25, speedMove2:F
    new-instance v11, Lcom/nemustech/tiffany/world/TFWallHolder;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v11, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;-><init>(II)V

    .line 1041
    .local v11, centerWall:Lcom/nemustech/tiffany/world/TFWallHolder;
    new-instance v8, Lcom/nemustech/tiffany/world/TFWallHolder;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v8, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;-><init>(II)V

    .line 1042
    .local v8, sideWall:Lcom/nemustech/tiffany/world/TFWallHolder;
    new-instance v10, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v6, v0

    invoke-direct {v10, v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 1043
    .local v10, panelFront:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v7, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v6, v0

    invoke-direct {v7, v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 1044
    .local v7, panelBackL:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v9, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v6, v0

    invoke-direct {v9, v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 1045
    .local v9, panelBackR:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v12, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v6, v0

    invoke-direct {v12, v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 1047
    .local v12, panelBackMain:Lcom/nemustech/tiffany/world/TFPanel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v5, v0

    invoke-virtual {v11, v5}, Lcom/nemustech/tiffany/world/TFWallHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v5, v0

    invoke-virtual {v8, v5}, Lcom/nemustech/tiffany/world/TFWallHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 1050
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v10, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 1052
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v6, v0

    invoke-virtual {v11, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->setItemSize(FF)V

    .line 1053
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->setSpaces(FF)V

    .line 1054
    invoke-virtual {v11}, Lcom/nemustech/tiffany/world/TFWallHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->setLeaningMode(Z)V

    .line 1055
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Lcom/nemustech/tiffany/world/TFWallHolder;->setItemCount(I)V

    .line 1057
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8, v7, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 1058
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v9, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v6, v0

    invoke-virtual {v8, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->setItemSize(FF)V

    .line 1061
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8, v5, v6}, Lcom/nemustech/tiffany/world/TFWallHolder;->setSpaces(FF)V

    .line 1062
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFWallHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->setLeaningMode(Z)V

    .line 1063
    const/4 v5, 0x2

    invoke-virtual {v8, v5}, Lcom/nemustech/tiffany/world/TFWallHolder;->setItemCount(I)V

    .line 1065
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/nemustech/tiffany/world/TFPanel;->setVisibility(Z)V

    .line 1066
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/nemustech/tiffany/world/TFPanel;->setVisibility(Z)V

    .line 1068
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 1069
    .local v23, rectBitmap:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v22, v5, 0x2

    .line 1070
    .local v22, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 1072
    .local v21, bmpHeight:I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v13, v0

    aget-object v6, v6, v13

    const/4 v13, 0x0

    invoke-virtual {v10, v5, v6, v13}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1074
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1075
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move v13, v0

    aget-object v6, v6, v13

    move-object v0, v7

    move v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1077
    const/4 v5, 0x0

    mul-int/lit8 v6, v22, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v22

    move v2, v5

    move v3, v6

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1078
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move v13, v0

    aget-object v6, v6, v13

    move-object v0, v9

    move v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1080
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move v13, v0

    aget-object v6, v6, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v6, v13}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1082
    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$12;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/nemustech/tiffany/world/TFEffect$12;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFWallHolder;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFWallHolder;Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual {v11, v5}, Lcom/nemustech/tiffany/world/TFWallHolder;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1131
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v11, v5, v6, v7}, Lcom/nemustech/tiffany/world/TFWallHolder;->locate(FFF)V

    .line 1132
    .end local v7           #panelBackL:Lcom/nemustech/tiffany/world/TFPanel;
    const v14, -0x439a9fbe

    const/4 v15, 0x0

    const v16, -0x40733333

    const/16 v17, 0x0

    const v18, 0x3b83126f

    const v19, 0x3ecccccd

    const/16 v20, 0x0

    move-object v13, v11

    invoke-virtual/range {v13 .. v20}, Lcom/nemustech/tiffany/world/TFWallHolder;->move(FFFFFFF)V

    .line 1133
    const/high16 v5, 0x4218

    const v6, 0x43a78000

    const v7, 0x3dcccccd

    const/4 v9, 0x2

    invoke-virtual {v11, v5, v6, v7, v9}, Lcom/nemustech/tiffany/world/TFWallHolder;->rotate(FFFI)V

    .line 1135
    .end local v9           #panelBackR:Lcom/nemustech/tiffany/world/TFPanel;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x43dc28f6

    invoke-virtual {v8, v5, v6, v7}, Lcom/nemustech/tiffany/world/TFWallHolder;->locate(FFF)V

    .line 1136
    const v14, -0x439a9fbe

    const/4 v15, 0x0

    const v16, -0x40733333

    const/16 v17, 0x0

    const v18, 0x3b83126f

    const v19, 0x3ecccccd

    const/16 v20, 0x0

    move-object v13, v8

    invoke-virtual/range {v13 .. v20}, Lcom/nemustech/tiffany/world/TFWallHolder;->move(FFFFFFF)V

    .line 1137
    const/high16 v5, 0x4218

    const v6, 0x43a78000

    const v7, 0x3dcccccd

    const/4 v9, 0x2

    invoke-virtual {v8, v5, v6, v7, v9}, Lcom/nemustech/tiffany/world/TFWallHolder;->rotate(FFFI)V

    .line 1138
    return-void
.end method

.method private showEffectCenterZoom(Z)V
    .locals 4
    .parameter "bReversed"

    .prologue
    const/4 v3, 0x1

    .line 1664
    new-instance v1, Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/TFAnimationSet;-><init>()V

    .line 1666
    .local v1, set:Lcom/nemustech/tiffany/world/TFAnimationSet;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1668
    .local v0, in:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1670
    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$24;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/world/TFEffect$24;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1685
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1686
    return-void
.end method

.method private showEffectDiagonalFling(Z)V
    .locals 6
    .parameter "bReversed"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1565
    new-instance v2, Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {v2}, Lcom/nemustech/tiffany/world/TFAnimationSet;-><init>()V

    .line 1567
    .local v2, set:Lcom/nemustech/tiffany/world/TFAnimationSet;
    invoke-virtual {v2, v4, v4}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1568
    .local v0, in:Landroid/view/animation/Animation;
    invoke-virtual {v2, v4, v5}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1570
    .local v1, out:Landroid/view/animation/Animation;
    new-instance v3, Lcom/nemustech/tiffany/world/TFEffect$20;

    invoke-direct {v3, p0}, Lcom/nemustech/tiffany/world/TFEffect$20;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1585
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1586
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1587
    return-void
.end method

.method private showEffectDiagonalScale(Z)V
    .locals 6
    .parameter "bReversed"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1590
    new-instance v2, Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {v2}, Lcom/nemustech/tiffany/world/TFAnimationSet;-><init>()V

    .line 1592
    .local v2, set:Lcom/nemustech/tiffany/world/TFAnimationSet;
    invoke-virtual {v2, v3, v5}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1593
    .local v0, in:Landroid/view/animation/Animation;
    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1595
    .local v1, out:Landroid/view/animation/Animation;
    new-instance v3, Lcom/nemustech/tiffany/world/TFEffect$21;

    invoke-direct {v3, p0}, Lcom/nemustech/tiffany/world/TFEffect$21;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1610
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1611
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v3, v3, v5

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1612
    return-void
.end method

.method private showEffectEntranceDoor()V
    .locals 22

    .prologue
    .line 952
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/world/TFEffect;->mBlending:Z

    .line 954
    const v19, 0x3df5c28f

    .line 955
    .local v19, speedRotation:F
    const v18, 0x3b1d4951

    .line 957
    .local v18, speedMove:F
    new-instance v20, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;

    const/4 v6, 0x0

    const/high16 v7, 0x42b4

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;-><init>(FF)V

    .line 958
    .local v20, verticalAxisL:Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;
    new-instance v21, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;

    const/4 v6, 0x0

    const/high16 v7, 0x4387

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;-><init>(FF)V

    .line 959
    .local v21, verticalAxisR:Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setFadingEffect(Z)V

    .line 960
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setFadingEffect(Z)V

    .line 962
    new-instance v5, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    invoke-direct {v5, v6, v7}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 963
    .local v5, panelBack:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v15, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    invoke-direct {v15, v6, v7}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 964
    .local v15, panelFrontL:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v16, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    move-object/from16 v0, v16

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 966
    .local v16, panelFrontR:Lcom/nemustech/tiffany/world/TFPanel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 970
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 971
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    neg-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->locate(FFF)V

    .line 974
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->look(FF)V

    .line 975
    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setItemCount(I)V

    .line 977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    neg-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->locate(FFF)V

    .line 978
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->look(FF)V

    .line 979
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setItemCount(I)V

    .line 981
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 982
    .local v17, rectBitmap:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v14, v6, 0x2

    .line 983
    .local v14, bmpWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 985
    .local v13, bmpHeight:I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move v8, v0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 987
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v6

    move v2, v7

    move v3, v14

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 988
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v8, v0

    aget-object v7, v7, v8

    move-object v0, v15

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 990
    const/4 v6, 0x0

    mul-int/lit8 v7, v14, 0x2

    move-object/from16 v0, v17

    move v1, v14

    move v2, v6

    move v3, v7

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 991
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v8, v0

    aget-object v7, v7, v8

    move-object/from16 v0, v16

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 993
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v6, v0

    new-instance v7, Lcom/nemustech/tiffany/world/TFEffect$11;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFEffect$11;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual {v6, v7}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1009
    const/4 v6, 0x0

    const-wide/16 v7, 0x7d0

    invoke-virtual {v15, v6, v7, v8}, Lcom/nemustech/tiffany/world/TFPanel;->fade(FJ)V

    .line 1010
    const/4 v6, 0x0

    const-wide/16 v7, 0x7d0

    move-object/from16 v0, v16

    move v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->fade(FJ)V

    .line 1013
    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, -0x3fee147b

    invoke-virtual {v5, v6, v7, v8}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1014
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x39fba882

    const v10, 0x3b6bedfa

    const v11, 0x3ecccccd

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/nemustech/tiffany/world/TFPanel;->move(FFFFFFF)V

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    neg-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    neg-float v7, v7

    const/high16 v8, 0x3f00

    const v9, 0x3a1d4951

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->move(FFFF)V

    .line 1018
    const/high16 v6, 0x42b4

    const/4 v7, 0x0

    const v8, 0x3df5c28f

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->rotate(FFF)V

    .line 1019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v7, v0

    neg-float v7, v7

    const/high16 v8, 0x3f00

    const v9, 0x3a1d4951

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->move(FFFF)V

    .line 1020
    const/high16 v6, -0x3d4c

    const/4 v7, 0x0

    const v8, 0x3df5c28f

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->rotate(FFF)V

    .line 1021
    return-void
.end method

.method private showEffectFlip(Z)V
    .locals 12
    .parameter "bReversed"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const v9, 0x3e99999a

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 778
    move v0, p1

    .line 779
    .local v0, bFinalReverse:Z
    new-instance v1, Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v1, v4, v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 780
    .local v1, panel:Lcom/nemustech/tiffany/world/TFPanel;
    const v3, 0x3e99999a

    .line 781
    .local v3, speedRotation:F
    const v2, 0x3ba71de8

    .line 783
    .local v2, speedMove:F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v8, v4, v11}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 784
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v10, v4, v11}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 786
    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 787
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$6;

    invoke-direct {v5, p0, v1, v0}, Lcom/nemustech/tiffany/world/TFEffect$6;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Z)V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 803
    const/high16 v4, -0x4040

    const v5, 0x3ba71de8

    invoke-virtual {v1, v7, v7, v4, v5}, Lcom/nemustech/tiffany/world/TFPanel;->move(FFFF)V

    .line 805
    if-eqz v0, :cond_0

    .line 806
    const/high16 v4, -0x3d4c

    invoke-virtual {v1, v4, v7, v9, v10}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    .line 809
    :goto_0
    return-void

    .line 808
    :cond_0
    const/high16 v4, 0x42b4

    invoke-virtual {v1, v4, v7, v9, v8}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    goto :goto_0
.end method

.method private showEffectGenie_FlexiblePanel(Z)V
    .locals 8
    .parameter "bReversed"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1850
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFEffect;->setTranslucentMode(Z)V

    .line 1851
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mOneWayAnimation:Z

    .line 1853
    if-nez p1, :cond_0

    .line 1854
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 1855
    .local v3, startIndex:I
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 1861
    .local v1, endIndex:I
    :goto_0
    new-instance v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v0, v4, v5, v6}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1862
    .local v0, currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1863
    invoke-virtual {v0, v7, v7, v7}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->locate(FFF)V

    .line 1865
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$27;

    invoke-direct {v5, p0, v0}, Lcom/nemustech/tiffany/world/TFEffect$27;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFFlexiblePanel;)V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1884
    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$Genie;

    invoke-direct {v2, p1}, Lcom/nemustech/tiffany/world/TFEffect$Genie;-><init>(Z)V

    .line 1885
    .local v2, genie:Lcom/nemustech/tiffany/world/TFEffect$Genie;
    invoke-virtual {v0, v2}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->setPointBlender(Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;)V

    .line 1886
    return-void

    .line 1857
    .end local v0           #currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;
    .end local v1           #endIndex:I
    .end local v2           #genie:Lcom/nemustech/tiffany/world/TFEffect$Genie;
    .end local v3           #startIndex:I
    :cond_0
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 1858
    .restart local v3       #startIndex:I
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .restart local v1       #endIndex:I
    goto :goto_0
.end method

.method private showEffectHorizontalCube(Z)V
    .locals 10
    .parameter "bReversed"

    .prologue
    const/4 v9, 0x1

    const v8, 0x3e99999a

    const/high16 v7, -0x3d4c

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1259
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/world/TFEffect;->setReflectingFloor(Z)V

    .line 1260
    const v1, 0x3e99999a

    .line 1262
    .local v1, speedRotation:F
    new-instance v0, Lcom/nemustech/tiffany/world/TFCube;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v0, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFCube;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1263
    .local v0, cube:Lcom/nemustech/tiffany/world/TFCube;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v6

    invoke-virtual {v0, v6, v2}, Lcom/nemustech/tiffany/world/TFCube;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1264
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v9

    invoke-virtual {v0, v2, v3}, Lcom/nemustech/tiffany/world/TFCube;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1266
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/TFEffect$15;

    invoke-direct {v3, p0, v0}, Lcom/nemustech/tiffany/world/TFEffect$15;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFCube;)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1272
    const/high16 v2, -0x4100

    invoke-virtual {v0, v5, v5, v2}, Lcom/nemustech/tiffany/world/TFCube;->locate(FFF)V

    .line 1274
    if-eqz p1, :cond_0

    .line 1276
    invoke-virtual {v0, v7, v5}, Lcom/nemustech/tiffany/world/TFCube;->look(FF)V

    .line 1277
    invoke-virtual {v0, v5, v5, v8, v6}, Lcom/nemustech/tiffany/world/TFCube;->rotate(FFFI)V

    .line 1283
    :goto_0
    return-void

    .line 1281
    :cond_0
    invoke-virtual {v0, v7, v5, v8, v9}, Lcom/nemustech/tiffany/world/TFCube;->rotate(FFFI)V

    goto :goto_0
.end method

.method private showEffectHorizontalRow(Z)V
    .locals 27
    .parameter "bReversed"

    .prologue
    .line 1199
    const v17, 0x3f19999a

    .line 1200
    .local v17, speedRotation:F
    const v16, 0x3b1d4952

    .line 1202
    .local v16, speedMove:F
    const/4 v6, 0x1

    .line 1203
    .local v6, MOSAIC_HORZ_NUM:I
    const/4 v7, 0x4

    .line 1204
    .local v7, MOSAIC_VERT_NUM:I
    const/4 v9, 0x4

    .line 1205
    .local v9, TOTAL_COUNT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    div-int/lit8 v8, v22, 0x1

    .line 1206
    .local v8, MOSAIC_WIDTH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    div-int/lit8 v5, v22, 0x4

    .line 1208
    .local v5, MOSAIC_HEIGHT:I
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v11, v0

    .line 1209
    .local v11, locX:[F
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v12, v0

    .line 1210
    .local v12, locY:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move/from16 v22, v0

    const/high16 v23, 0x4080

    div-float v13, v22, v23

    .line 1212
    .local v13, normalizeHeight:F
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Lcom/nemustech/tiffany/world/TFPanel;

    move-object v14, v0

    .line 1213
    .local v14, panel:[Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1214
    .local v15, rectMosaic:Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 1216
    .local v10, index:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v22, v0

    new-instance v23, Lcom/nemustech/tiffany/world/TFEffect$14;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFEffect$14;-><init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual/range {v22 .. v23}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1229
    const/16 v21, 0x0

    .local v21, y:I
    :goto_0
    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1230
    const/16 v20, 0x0

    .local v20, x:I
    :goto_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 1231
    mul-int/lit8 v22, v21, 0x1

    add-int v10, v22, v20

    .line 1234
    new-instance v22, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    aput-object v22, v14, v10

    .line 1237
    mul-int v22, v20, v8

    mul-int v23, v21, v5

    mul-int v24, v20, v8

    add-int v24, v24, v8

    mul-int v25, v21, v5

    add-int v25, v25, v5

    move-object v0, v15

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1240
    aget-object v22, v14, v10

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1241
    aget-object v22, v14, v10

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1242
    aget-object v22, v14, v10

    const/16 v23, 0x1

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Lcom/nemustech/tiffany/world/TFPanel;->reverseImage(II)V

    .line 1244
    const/16 v22, 0x0

    aput v22, v11, v10

    .line 1245
    const/high16 v22, 0x4000

    mul-float v22, v22, v13

    move v0, v10

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v24, v13, v24

    add-float v23, v23, v24

    sub-float v22, v22, v23

    aput v22, v12, v10

    .line 1248
    aget-object v22, v14, v10

    aget v23, v11, v10

    aget v24, v12, v10

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1251
    move v0, v10

    mul-int/lit16 v0, v0, 0xc8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 1252
    .local v18, waitTime:J
    aget-object v22, v14, v10

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPanel;->setWait(J)V

    .line 1253
    aget-object v22, v14, v10

    const/16 v23, 0x0

    const/high16 v24, 0x4334

    const v25, 0x3f19999a

    if-eqz p1, :cond_0

    const/16 v26, 0x1

    :goto_2
    invoke-virtual/range {v22 .. v26}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    .line 1230
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1253
    :cond_0
    const/16 v26, 0x0

    goto :goto_2

    .line 1229
    .end local v18           #waitTime:J
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 1256
    .end local v20           #x:I
    :cond_2
    return-void
.end method

.method private showEffectLineZoom(Z)V
    .locals 4
    .parameter "bReversed"

    .prologue
    const/4 v3, 0x1

    .line 1689
    new-instance v1, Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/TFAnimationSet;-><init>()V

    .line 1691
    .local v1, set:Lcom/nemustech/tiffany/world/TFAnimationSet;
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1693
    .local v0, in:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1695
    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$25;

    invoke-direct {v2, p0, v1}, Lcom/nemustech/tiffany/world/TFEffect$25;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFAnimationSet;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1725
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1726
    return-void
.end method

.method private showEffectMosaic(Z)V
    .locals 27
    .parameter "bReversed"

    .prologue
    .line 812
    const v17, 0x3f333333

    .line 814
    .local v17, speedRotation:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_0

    const/16 v22, 0x3

    move/from16 v6, v22

    .line 815
    .local v6, MOSAIC_HORZ_NUM:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_1

    const/16 v22, 0x4

    move/from16 v7, v22

    .line 817
    .local v7, MOSAIC_VERT_NUM:I
    :goto_1
    mul-int v9, v6, v7

    .line 818
    .local v9, TOTAL_COUNT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    div-int v8, v22, v6

    .line 819
    .local v8, MOSAIC_WIDTH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    div-int v5, v22, v7

    .line 821
    .local v5, MOSAIC_HEIGHT:I
    new-array v11, v9, [F

    .line 822
    .local v11, locX:[F
    new-array v12, v9, [F

    .line 824
    .local v12, locY:[F
    new-array v13, v9, [Lcom/nemustech/tiffany/world/TFPanel;

    .line 825
    .local v13, panel:[Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 826
    .local v16, rectMosaic:Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 828
    .local v10, index:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v22, v0

    new-instance v23, Lcom/nemustech/tiffany/world/TFEffect$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFEffect$7;-><init>(Lcom/nemustech/tiffany/world/TFEffect;I[Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual/range {v22 .. v23}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move/from16 v22, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 840
    .local v15, panelWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move/from16 v22, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 842
    .local v14, panelHeight:F
    const/16 v21, 0x0

    .local v21, y:I
    :goto_2
    move/from16 v0, v21

    move v1, v7

    if-ge v0, v1, :cond_4

    .line 843
    const/16 v20, 0x0

    .local v20, x:I
    :goto_3
    move/from16 v0, v20

    move v1, v6

    if-ge v0, v1, :cond_3

    .line 844
    mul-int v22, v21, v6

    add-int v10, v22, v20

    .line 847
    new-instance v22, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move v2, v15

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    aput-object v22, v13, v10

    .line 850
    mul-int v22, v20, v8

    mul-int v23, v21, v5

    mul-int v24, v20, v8

    add-int v24, v24, v8

    mul-int v25, v21, v5

    add-int v25, v25, v5

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 853
    aget-object v22, v13, v10

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 854
    aget-object v22, v13, v10

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v15, v23

    add-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v22, v22, v23

    aput v22, v11, v10

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v23, v14, v23

    sub-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v14

    sub-float v22, v22, v23

    aput v22, v12, v10

    .line 860
    aget-object v22, v13, v10

    aget v23, v11, v10

    aget v24, v12, v10

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 863
    const-wide/high16 v22, 0x4089

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v18, v0

    .line 864
    .local v18, waitTime:J
    aget-object v22, v13, v10

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPanel;->setWait(J)V

    .line 865
    aget-object v22, v13, v10

    const/high16 v23, 0x4334

    const/16 v24, 0x0

    const v25, 0x3f333333

    if-eqz p1, :cond_2

    const/16 v26, 0x1

    :goto_4
    invoke-virtual/range {v22 .. v26}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    .line 843
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 814
    .end local v5           #MOSAIC_HEIGHT:I
    .end local v6           #MOSAIC_HORZ_NUM:I
    .end local v7           #MOSAIC_VERT_NUM:I
    .end local v8           #MOSAIC_WIDTH:I
    .end local v9           #TOTAL_COUNT:I
    .end local v10           #index:I
    .end local v11           #locX:[F
    .end local v12           #locY:[F
    .end local v13           #panel:[Lcom/nemustech/tiffany/world/TFPanel;
    .end local v14           #panelHeight:F
    .end local v15           #panelWidth:F
    .end local v16           #rectMosaic:Landroid/graphics/Rect;
    .end local v18           #waitTime:J
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_0
    const/16 v22, 0x4

    move/from16 v6, v22

    goto/16 :goto_0

    .line 815
    .restart local v6       #MOSAIC_HORZ_NUM:I
    :cond_1
    const/16 v22, 0x3

    move/from16 v7, v22

    goto/16 :goto_1

    .line 865
    .restart local v5       #MOSAIC_HEIGHT:I
    .restart local v7       #MOSAIC_VERT_NUM:I
    .restart local v8       #MOSAIC_WIDTH:I
    .restart local v9       #TOTAL_COUNT:I
    .restart local v10       #index:I
    .restart local v11       #locX:[F
    .restart local v12       #locY:[F
    .restart local v13       #panel:[Lcom/nemustech/tiffany/world/TFPanel;
    .restart local v14       #panelHeight:F
    .restart local v15       #panelWidth:F
    .restart local v16       #rectMosaic:Landroid/graphics/Rect;
    .restart local v18       #waitTime:J
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_2
    const/16 v26, 0x0

    goto :goto_4

    .line 842
    .end local v18           #waitTime:J
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 868
    .end local v20           #x:I
    :cond_4
    return-void
.end method

.method private showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V
    .locals 8
    .parameter "bReversed"
    .parameter "degree"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1975
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDepthTest:Z

    .line 1976
    iput-boolean v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEconomic:Z

    .line 1977
    iput-boolean v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBlending:Z

    .line 1979
    const v0, 0x3cf5c28f

    .line 1981
    .local v0, FRONT_SHADOW_RATIO:F
    new-instance v2, Lcom/nemustech/tiffany/world/TFPagePanel;

    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FF)V

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 1982
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const v3, 0x3cf5c28f

    invoke-virtual {v2, v3, v7}, Lcom/nemustech/tiffany/world/TFPagePanel;->setBorderShaodw(FF)V

    .line 1983
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setBackMaskOpacity(F)V

    .line 1984
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v5

    invoke-virtual {v2, v5, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1985
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v3, 0x2

    invoke-virtual {v2, v6, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->reverseImage(II)V

    .line 1988
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v5

    if-eqz v2, :cond_0

    .line 1990
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v5

    invoke-virtual {v2, v6, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1994
    :cond_0
    new-instance v1, Lcom/nemustech/tiffany/world/TFPanel;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 1995
    .local v1, nextPage:Lcom/nemustech/tiffany/world/TFPanel;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v6

    invoke-virtual {v1, v5, v2}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1997
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFPanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 1998
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 1999
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/high16 v3, 0x3e80

    const v4, 0x3f666666

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setPageShadow(FF)V

    .line 2001
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v2, p2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 2002
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    if-eqz p1, :cond_2

    move v3, v7

    :goto_0
    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 2003
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v3

    iget-boolean v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    move v4, v6

    :goto_1
    int-to-float v4, v4

    invoke-virtual {v2, v3, v4, p3, p4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 2008
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v2, :cond_1

    .line 2010
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    new-instance v3, Lcom/nemustech/tiffany/world/TFEffect$30;

    invoke-direct {v3, p0}, Lcom/nemustech/tiffany/world/TFEffect$30;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setOnUpdateVertexListener(Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;)V

    .line 2042
    :cond_1
    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$31;

    invoke-direct {v2, p0, v1}, Lcom/nemustech/tiffany/world/TFEffect$31;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;)V

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 2051
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v2, :cond_6

    .line 2052
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 2055
    :goto_2
    return-void

    .line 2002
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move v4, v5

    .line 2003
    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_1

    .line 2054
    :cond_6
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    goto :goto_2
.end method

.method private showEffectPageCurlTrans(ZIILandroid/view/animation/Interpolator;)V
    .locals 5
    .parameter "bReversed"
    .parameter "degree"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1903
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDepthTest:Z

    .line 1904
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEconomic:Z

    .line 1905
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFEffect;->setTranslucentMode(Z)V

    .line 1906
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mOneWayAnimation:Z

    .line 1908
    new-instance v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FF)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 1909
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v3, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1910
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->reverseImage(II)V

    .line 1913
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v4, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 1919
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/high16 v1, 0x3e80

    const v2, 0x3f666666

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setPageShadow(FF)V

    .line 1921
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v0, p2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 1922
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f80

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 1923
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    move v2, v4

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 1928
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v0, :cond_1

    .line 1930
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    new-instance v1, Lcom/nemustech/tiffany/world/TFEffect$28;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/TFEffect$28;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setOnUpdateVertexListener(Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;)V

    .line 1962
    :cond_1
    new-instance v0, Lcom/nemustech/tiffany/world/TFEffect$29;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFEffect$29;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 1968
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v0, :cond_6

    .line 1969
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1972
    :goto_2
    return-void

    .line 1922
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1923
    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_1

    .line 1971
    :cond_6
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    goto :goto_2
.end method

.method private showEffectPageOver_PagePanel(ZII)V
    .locals 12
    .parameter "bReversed"
    .parameter "degree"
    .parameter "duration"

    .prologue
    .line 1480
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/nemustech/tiffany/world/TFEffect;->setTranslucentMode(Z)V

    .line 1481
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mOneWayAnimation:Z

    .line 1483
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 1484
    .local v3, startIndex:I
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 1485
    .local v1, endIndex:I
    const/4 v2, 0x0

    .line 1486
    .local v2, reverse:I
    const/4 v5, 0x0

    .line 1487
    .local v5, timeLineStart:F
    const/high16 v4, 0x3f80

    .line 1488
    .local v4, timeLineEnd:F
    if-eqz p1, :cond_0

    .line 1489
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 1490
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 1491
    const/high16 v5, 0x3f80

    .line 1492
    const/4 v4, 0x0

    .line 1496
    :cond_0
    const/4 v6, 0x0

    .line 1497
    .local v6, x:F
    const/4 v7, 0x0

    .line 1498
    .local v7, y:F
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aget-object v8, v8, v3

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1

    .line 1500
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 1502
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 1504
    const-string v8, "TFEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " viewLeft:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string v8, "TFEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ScreenHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " viewTop:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const-string v8, "TFEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "top:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mViewWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1
    new-instance v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v0, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1510
    .local v0, currentPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lcom/nemustech/tiffany/world/TFPagePanel;->locate(FFF)V

    .line 1511
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v3

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1512
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v3

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aget-object v9, v9, v3

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1513
    :cond_2
    invoke-virtual {v0, p2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 1514
    invoke-virtual {v0, v5}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 1515
    if-eqz v2, :cond_3

    .line 1516
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->reverseImage(II)V

    .line 1518
    :cond_3
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v9, Lcom/nemustech/tiffany/world/TFEffect$18;

    invoke-direct {v9, p0, v0}, Lcom/nemustech/tiffany/world/TFEffect$18;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPagePanel;)V

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1536
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5, v4, p3, v8}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    .line 1537
    return-void
.end method

.method private showEffectPageOver_Sticker(ZII)V
    .locals 17
    .parameter "bReversed"
    .parameter "degree"
    .parameter "duration"

    .prologue
    .line 1781
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->setTranslucentMode(Z)V

    .line 1782
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFEffect;->setReflectingFloor(Z)V

    .line 1784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v8, v0

    .line 1785
    .local v8, startIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move v5, v0

    .line 1786
    .local v5, endIndex:I
    const/4 v7, 0x0

    .line 1787
    .local v7, reverse:I
    const/4 v10, 0x0

    .line 1788
    .local v10, timeLineStart:F
    const/high16 v9, 0x3f80

    .line 1789
    .local v9, timeLineEnd:F
    if-eqz p1, :cond_0

    .line 1790
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move v8, v0

    .line 1791
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move v5, v0

    .line 1792
    const/high16 v10, 0x3f80

    .line 1793
    const/4 v9, 0x0

    .line 1797
    :cond_0
    const/4 v11, 0x0

    .line 1798
    .local v11, x:F
    const/4 v12, 0x0

    .line 1799
    .local v12, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v13, v0

    aget-object v13, v13, v8

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    move-object v13, v0

    if-eqz v13, :cond_1

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v13, v0

    aget-object v13, v13, v8

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    move v14, v0

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    move v14, v0

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 1803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewYOffset:I

    move v13, v0

    if-lez v13, :cond_4

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v14, v0

    aget-object v14, v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewYOffset:I

    move v15, v0

    int-to-float v15, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    move v15, v0

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    move v14, v0

    int-to-float v14, v14

    div-float v12, v13, v14

    .line 1810
    :goto_0
    const-string v13, "TFEffect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ScreenWidth:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " viewLeft:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v15, v0

    aget-object v15, v15, v8

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const-string v13, "TFEffect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ScreenHeight:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " viewTop:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v15, v0

    aget-object v15, v15, v8

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v13, "TFEffect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "top:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v15, v0

    aget-object v15, v15, v8

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " x:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " y:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mViewWidth:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_1
    new-instance v4, Lcom/nemustech/tiffany/world/TFPagePanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v15, v0

    invoke-direct {v4, v13, v14, v15}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1816
    .local v4, currentPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Lcom/nemustech/tiffany/world/TFPagePanel;->locate(FFF)V

    .line 1817
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object v14, v0

    aget-object v14, v14, v8

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v14, v15}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    move-object v13, v0

    aget-object v13, v13, v8

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    move-object v14, v0

    aget-object v14, v14, v8

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v14, v15}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1819
    :cond_2
    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setDirectionDegree(I)Z

    .line 1820
    invoke-virtual {v4, v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(F)Z

    .line 1821
    if-eqz v7, :cond_3

    .line 1822
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Lcom/nemustech/tiffany/world/TFPagePanel;->reverseImage(II)V

    .line 1824
    :cond_3
    move-object v6, v4

    .line 1825
    .local v6, fPagePanel:Lcom/nemustech/tiffany/world/TFModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v13, v0

    new-instance v14, Lcom/nemustech/tiffany/world/TFEffect$26;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFEffect$26;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPagePanel;)V

    invoke-virtual {v13, v14}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1842
    move-object v0, v4

    move v1, v10

    move v2, v9

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFI)Z

    .line 1843
    return-void

    .line 1807
    .end local v4           #currentPage:Lcom/nemustech/tiffany/world/TFPagePanel;
    .end local v6           #fPagePanel:Lcom/nemustech/tiffany/world/TFModel;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    move-object v14, v0

    aget-object v14, v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    move v15, v0

    int-to-float v15, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    move v14, v0

    int-to-float v14, v14

    div-float v12, v13, v14

    goto/16 :goto_0
.end method

.method private showEffectProjectorBoardDown(Z)V
    .locals 5
    .parameter "bReversed"

    .prologue
    const/4 v4, 0x1

    .line 1639
    new-instance v1, Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/TFAnimationSet;-><init>()V

    .line 1641
    .local v1, set:Lcom/nemustech/tiffany/world/TFAnimationSet;
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1643
    .local v0, out:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1645
    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$23;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/world/TFEffect$23;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1660
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    return-void
.end method

.method private showEffectProjectorBoardUp(Z)V
    .locals 4
    .parameter "bReversed"

    .prologue
    const/4 v3, 0x0

    .line 1615
    new-instance v1, Lcom/nemustech/tiffany/world/TFAnimationSet;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/TFAnimationSet;-><init>()V

    .line 1617
    .local v1, set:Lcom/nemustech/tiffany/world/TFAnimationSet;
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFAnimationSet;->getAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1619
    .local v0, out:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    .line 1621
    new-instance v2, Lcom/nemustech/tiffany/world/TFEffect$22;

    invoke-direct {v2, p0}, Lcom/nemustech/tiffany/world/TFEffect$22;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1635
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1636
    return-void
.end method

.method private showEffectReplace()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 871
    const v3, 0x3ecccccd

    .line 872
    .local v3, speedReplace:F
    new-instance v0, Lcom/nemustech/tiffany/world/TFCircularHolder;

    const/high16 v4, 0x3f00

    invoke-direct {v0, v4}, Lcom/nemustech/tiffany/world/TFCircularHolder;-><init>(F)V

    .line 873
    .local v0, circularRail:Lcom/nemustech/tiffany/world/TFCircularHolder;
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0, v4}, Lcom/nemustech/tiffany/world/TFCircularHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 874
    invoke-virtual {v0, v7}, Lcom/nemustech/tiffany/world/TFCircularHolder;->setFadingEffect(Z)V

    .line 875
    const/4 v4, 0x0

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    neg-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/high16 v6, -0x4100

    invoke-virtual {v0, v4, v5, v6}, Lcom/nemustech/tiffany/world/TFCircularHolder;->locate(FFF)V

    .line 876
    invoke-virtual {v0, v9}, Lcom/nemustech/tiffany/world/TFCircularHolder;->setItemCount(I)V

    .line 877
    invoke-virtual {v0, v8}, Lcom/nemustech/tiffany/world/TFCircularHolder;->setEndless(Z)V

    .line 879
    new-array v2, v9, [Lcom/nemustech/tiffany/world/TFPanel;

    .line 880
    .local v2, panel:[Lcom/nemustech/tiffany/world/TFPanel;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 882
    new-instance v4, Lcom/nemustech/tiffany/world/TFPanel;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v4, v5, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    aput-object v4, v2, v1

    .line 883
    aget-object v4, v2, v1

    invoke-virtual {v4, v8}, Lcom/nemustech/tiffany/world/TFPanel;->setFaceFront(Z)V

    .line 884
    aget-object v4, v2, v1

    invoke-virtual {v0, v4, v1, v7}, Lcom/nemustech/tiffany/world/TFCircularHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    :cond_0
    aget-object v4, v2, v7

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v7, v5, v10}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 888
    aget-object v4, v2, v8

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v7, v5, v10}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 891
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$8;

    invoke-direct {v5, p0, v2}, Lcom/nemustech/tiffany/world/TFEffect$8;-><init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 897
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    move-result-object v4

    new-instance v5, Lcom/nemustech/tiffany/world/TFEffect$9;

    invoke-direct {v5, p0, v2}, Lcom/nemustech/tiffany/world/TFEffect$9;-><init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->setAnimationEventListener(Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;)V

    .line 909
    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getHeadItemIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2ee

    invoke-virtual {v0, v4, v5}, Lcom/nemustech/tiffany/world/TFCircularHolder;->setHeadItemIndex(II)V

    .line 910
    return-void
.end method

.method private showEffectRevolvingDoor()V
    .locals 10

    .prologue
    const/high16 v9, 0x42b4

    const/high16 v8, 0x4000

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 913
    new-instance v2, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;

    invoke-direct {v2, v5, v9}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;-><init>(FF)V

    .line 914
    .local v2, verticalAxis:Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 916
    iget v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    div-float/2addr v3, v8

    neg-float v3, v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    div-float/2addr v4, v8

    neg-float v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->locate(FFF)V

    .line 917
    invoke-virtual {v2, v9}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setOpenRangeAngle(F)V

    .line 918
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setEndless(Z)V

    .line 920
    invoke-virtual {v2, v7}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setItemCount(I)V

    .line 922
    new-array v1, v7, [Lcom/nemustech/tiffany/world/TFPanel;

    .line 923
    .local v1, p:[Lcom/nemustech/tiffany/world/TFPanel;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 924
    new-instance v3, Lcom/nemustech/tiffany/world/TFPanel;

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v3, v4, v5}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    aput-object v3, v1, v0

    .line 925
    aget-object v3, v1, v0

    invoke-virtual {v2, v3, v0, v6}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_0
    aget-object v3, v1, v6

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 929
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 931
    iput v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 933
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->getMoveAnimation()Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;

    move-result-object v3

    new-instance v4, Lcom/nemustech/tiffany/world/TFEffect$10;

    invoke-direct {v4, p0, v1}, Lcom/nemustech/tiffany/world/TFEffect$10;-><init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->setAnimationEventListener(Lcom/nemustech/tiffany/world/TFAnimation$AnimationEventListener;)V

    .line 947
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->getHeadItemIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x2ee

    invoke-virtual {v2, v3, v4}, Lcom/nemustech/tiffany/world/TFVerticalAxisHolder;->setHeadItemIndex(II)V

    .line 948
    return-void
.end method

.method private showEffectSink_FlexiblePanel(Z)V
    .locals 14
    .parameter "bReversed"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1445
    const/4 v6, 0x0

    .line 1446
    .local v6, x:F
    const/4 v7, 0x0

    .line 1447
    .local v7, y:F
    iget v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 1448
    .local v5, startIndex:I
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 1449
    .local v1, endIndex:I
    const/4 v3, 0x0

    .line 1451
    .local v3, reverse:I
    new-instance v2, Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v2, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1452
    .local v2, nextPage:Lcom/nemustech/tiffany/world/TFPanel;
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v1

    invoke-virtual {v2, v12, v8, v13}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1453
    const v8, -0x457ced91

    invoke-virtual {v2, v11, v11, v8}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1455
    new-instance v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel;

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v0, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1456
    .local v0, currentPage:Lcom/nemustech/tiffany/world/TFFlexiblePanel;
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v5

    invoke-virtual {v0, v12, v8, v13}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1457
    invoke-virtual {v0, v6, v7, v11}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->locate(FFF)V

    .line 1458
    if-eqz v3, :cond_0

    .line 1459
    invoke-virtual {v0, v12, v3}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->reverseImage(II)V

    .line 1461
    :cond_0
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v9, Lcom/nemustech/tiffany/world/TFEffect$17;

    invoke-direct {v9, p0, v0}, Lcom/nemustech/tiffany/world/TFEffect$17;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFFlexiblePanel;)V

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1467
    new-instance v4, Lcom/nemustech/tiffany/world/TFEffect$Sink;

    invoke-direct {v4}, Lcom/nemustech/tiffany/world/TFEffect$Sink;-><init>()V

    .line 1468
    .local v4, sink:Lcom/nemustech/tiffany/world/TFEffect$Sink;
    invoke-virtual {v0, v4}, Lcom/nemustech/tiffany/world/TFFlexiblePanel;->setPointBlender(Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;)V

    .line 1469
    return-void
.end method

.method private showEffectTwist(Z)V
    .locals 11
    .parameter "bReversed"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2058
    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDepthTest:Z

    .line 2059
    iput-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEconomic:Z

    .line 2063
    new-instance v0, Lcom/nemustech/tiffany/world/TFCustomPanel;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v7, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    invoke-direct {v0, v6, v7}, Lcom/nemustech/tiffany/world/TFCustomPanel;-><init>(FF)V

    .line 2064
    .local v0, cusPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0, v6}, Lcom/nemustech/tiffany/world/TFCustomPanel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 2066
    const/4 v4, 0x0

    .line 2067
    .local v4, x:F
    const/4 v5, 0x0

    .line 2068
    .local v5, y:F
    iget v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 2069
    .local v2, startIndex:I
    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 2071
    .local v1, endIndex:I
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v2

    invoke-virtual {v0, v8, v6, v10}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 2072
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    invoke-virtual {v0, v9, v6, v10}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 2073
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/nemustech/tiffany/world/TFCustomPanel;->locate(FFF)V

    .line 2075
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v7, Lcom/nemustech/tiffany/world/TFEffect$32;

    invoke-direct {v7, p0, v0}, Lcom/nemustech/tiffany/world/TFEffect$32;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFCustomPanel;)V

    invoke-virtual {v6, v7}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 2080
    new-instance v3, Lcom/nemustech/tiffany/world/TFTwistEffect;

    invoke-direct {v3, v0}, Lcom/nemustech/tiffany/world/TFTwistEffect;-><init>(Lcom/nemustech/tiffany/world/TFCustomPanel;)V

    .line 2081
    .local v3, tw:Lcom/nemustech/tiffany/world/TFTwistEffect;
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTwistParam:Lcom/nemustech/tiffany/world/TFEffect$TwistParam;

    if-eqz v6, :cond_0

    .line 2082
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTwistParam:Lcom/nemustech/tiffany/world/TFEffect$TwistParam;

    invoke-virtual {v6, v3}, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->setParam(Lcom/nemustech/tiffany/world/TFTwistEffect;)V

    .line 2083
    :cond_0
    invoke-virtual {v0, v3}, Lcom/nemustech/tiffany/world/TFCustomPanel;->startBlender(Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;)V

    .line 2084
    return-void
.end method

.method private showEffectVerticalColumn(Z)V
    .locals 28
    .parameter "bReversed"

    .prologue
    .line 1141
    const v18, 0x3f19999a

    .line 1142
    .local v18, speedRotation:F
    const v17, 0x3b1d4952

    .line 1144
    .local v17, speedMove:F
    const/4 v6, 0x4

    .line 1145
    .local v6, MOSAIC_HORZ_NUM:I
    const/4 v7, 0x1

    .line 1146
    .local v7, MOSAIC_VERT_NUM:I
    const/4 v9, 0x4

    .line 1147
    .local v9, TOTAL_COUNT:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    div-int/lit8 v8, v23, 0x4

    .line 1148
    .local v8, MOSAIC_WIDTH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    div-int/lit8 v5, v23, 0x1

    .line 1150
    .local v5, MOSAIC_HEIGHT:I
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object v11, v0

    .line 1151
    .local v11, locX:[F
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object v12, v0

    .line 1152
    .local v12, locY:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    move/from16 v23, v0

    const/high16 v24, 0x4080

    div-float v15, v23, v24

    .line 1153
    .local v15, panelWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    move v14, v0

    .line 1155
    .local v14, panelHeight:F
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Lcom/nemustech/tiffany/world/TFPanel;

    move-object v13, v0

    .line 1156
    .local v13, panel:[Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 1157
    .local v16, rectMosaic:Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 1159
    .local v10, index:I
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v23, v0

    new-instance v24, Lcom/nemustech/tiffany/world/TFEffect$13;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFEffect$13;-><init>(Lcom/nemustech/tiffany/world/TFEffect;[Lcom/nemustech/tiffany/world/TFPanel;)V

    invoke-virtual/range {v23 .. v24}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1170
    const/16 v22, 0x0

    .local v22, y:I
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 1171
    const/16 v21, 0x0

    .local v21, x:I
    :goto_1
    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 1172
    mul-int/lit8 v23, v22, 0x4

    add-int v10, v23, v21

    .line 1175
    new-instance v23, Lcom/nemustech/tiffany/world/TFPanel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move v2, v15

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    aput-object v23, v13, v10

    .line 1178
    mul-int v23, v21, v8

    mul-int v24, v22, v5

    mul-int v25, v21, v8

    add-int v25, v25, v8

    mul-int v26, v22, v5

    add-int v26, v26, v5

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1181
    aget-object v23, v13, v10

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1182
    aget-object v23, v13, v10

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1184
    const/high16 v23, -0x4100

    move v0, v10

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v15

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v24, v15, v24

    add-float v23, v23, v24

    aput v23, v11, v10

    .line 1185
    const/16 v23, 0x0

    aput v23, v12, v10

    .line 1188
    aget-object v23, v13, v10

    aget v24, v11, v10

    aget v25, v12, v10

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1191
    if-eqz p1, :cond_0

    const/16 v23, 0x4

    sub-int v23, v23, v10

    const/16 v24, 0x1

    sub-int v23, v23, v24

    :goto_2
    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0xc8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 1192
    .local v19, waitTime:J
    aget-object v23, v13, v10

    move-object/from16 v0, v23

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPanel;->setWait(J)V

    .line 1193
    aget-object v23, v13, v10

    const/high16 v24, 0x4334

    const/16 v25, 0x0

    const v26, 0x3f19999a

    if-eqz p1, :cond_1

    const/16 v27, 0x1

    :goto_3
    invoke-virtual/range {v23 .. v27}, Lcom/nemustech/tiffany/world/TFPanel;->rotate(FFFI)V

    .line 1171
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .end local v19           #waitTime:J
    :cond_0
    move/from16 v23, v10

    .line 1191
    goto :goto_2

    .line 1193
    .restart local v19       #waitTime:J
    :cond_1
    const/16 v27, 0x0

    goto :goto_3

    .line 1170
    .end local v19           #waitTime:J
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 1196
    .end local v21           #x:I
    :cond_3
    return-void
.end method

.method private showEffectVerticalPageOver(Z)V
    .locals 12
    .parameter "bReversed"

    .prologue
    .line 1350
    const v10, 0x3f0ccccd

    .line 1352
    .local v10, speedRotate:F
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1353
    .local v11, upRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1355
    .local v9, downRect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFEffect;->setReflectingFloor(Z)V

    .line 1357
    new-instance v5, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 v1, 0x4334

    :goto_0
    invoke-direct {v5, v0, v1}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;-><init>(FF)V

    .line 1358
    .local v5, horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v5, v0}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 1359
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->setItemCount(I)V

    .line 1362
    new-instance v2, Lcom/nemustech/tiffany/world/TFPanel;

    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    invoke-direct {v2, v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(FF)V

    .line 1363
    .local v2, rotate_panel:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v3, Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    invoke-direct {v3, v0, v1, v4}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1364
    .local v3, current_up_panel:Lcom/nemustech/tiffany/world/TFPanel;
    new-instance v4, Lcom/nemustech/tiffany/world/TFPanel;

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-direct {v4, v0, v1, v6}, Lcom/nemustech/tiffany/world/TFPanel;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V

    .line 1366
    .local v4, next_down_panel:Lcom/nemustech/tiffany/world/TFPanel;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v5, v2, v0, v1}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;IZ)V

    .line 1368
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1369
    .local v8, bmpWidth:I
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 1371
    .local v7, bmpHeight:I
    invoke-virtual {v5}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->getRadius()F

    move-result v6

    .line 1373
    .local v6, a:F
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1374
    const/4 v0, 0x0

    mul-int/lit8 v1, v7, 0x2

    invoke-virtual {v9, v0, v7, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1376
    if-eqz p1, :cond_1

    .line 1379
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .end local v6           #a:F
    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1, v9}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1380
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1, v11}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1381
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->reverseImage(II)V

    .line 1384
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v1, v1, v6

    invoke-virtual {v3, v0, v1, v11}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1385
    const/4 v0, 0x0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v6, 0x4080

    div-float/2addr v1, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v1, v6}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1388
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v1, v1, v6

    invoke-virtual {v4, v0, v1, v9}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1389
    const/4 v0, 0x0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v6, 0x4080

    div-float/2addr v1, v6

    neg-float v1, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v1, v6}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1407
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishCnt:I

    .line 1408
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v0, Lcom/nemustech/tiffany/world/TFEffect$16;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFEffect$16;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFPanel;Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;)V

    invoke-virtual {v6, v0}, Lcom/nemustech/tiffany/world/TFWorld;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 1433
    if-eqz p1, :cond_2

    .line 1434
    const/4 v0, 0x0

    const/high16 v1, -0x3ccc

    const v2, 0x3f0ccccd

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->rotate(FFFI)V

    .line 1437
    .end local v2           #rotate_panel:Lcom/nemustech/tiffany/world/TFPanel;
    .end local v3           #current_up_panel:Lcom/nemustech/tiffany/world/TFPanel;
    :goto_2
    return-void

    .line 1357
    .end local v4           #next_down_panel:Lcom/nemustech/tiffany/world/TFPanel;
    .end local v5           #horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;
    .end local v7           #bmpHeight:I
    .end local v8           #bmpWidth:I
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1394
    .restart local v2       #rotate_panel:Lcom/nemustech/tiffany/world/TFPanel;
    .restart local v3       #current_up_panel:Lcom/nemustech/tiffany/world/TFPanel;
    .restart local v4       #next_down_panel:Lcom/nemustech/tiffany/world/TFPanel;
    .restart local v5       #horizontalAxis:Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;
    .restart local v6       #a:F
    .restart local v7       #bmpHeight:I
    .restart local v8       #bmpWidth:I
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .end local v6           #a:F
    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1, v11}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1395
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1, v9}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1396
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->reverseImage(II)V

    .line 1399
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v1, v1, v6

    invoke-virtual {v3, v0, v1, v11}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1400
    const/4 v0, 0x0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v6, 0x4080

    div-float/2addr v1, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v1, v6}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    .line 1403
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v1, v1, v6

    invoke-virtual {v4, v0, v1, v9}, Lcom/nemustech/tiffany/world/TFPanel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 1404
    const/4 v0, 0x0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    const/high16 v6, 0x4080

    div-float/2addr v1, v6

    neg-float v1, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v1, v6}, Lcom/nemustech/tiffany/world/TFPanel;->locate(FFF)V

    goto :goto_1

    .line 1436
    :cond_2
    const/4 v0, 0x0

    const/high16 v1, 0x4334

    const v2, 0x3f0ccccd

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFHorizontalAxisHolder;->rotate(FFFI)V

    goto :goto_2
.end method

.method private showEffectWindowCleaning(Z)V
    .locals 0
    .parameter "bReversed"

    .prologue
    .line 1770
    return-void
.end method

.method private syncBitmaps()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v6

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v1, v3

    .line 189
    .local v1, lowerHeight:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 194
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v3, v6, v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 199
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v3, v0

    .line 200
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    aput-boolean v7, v3, v0

    .line 189
    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0           #i:I
    .end local v1           #lowerHeight:I
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 204
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->addView(Landroid/view/View;Landroid/graphics/Bitmap;I)V

    .line 137
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/graphics/Bitmap;I)V
    .locals 5
    .parameter "child"
    .parameter "bmp"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aput-object p1, v1, p3

    .line 156
    if-eqz p1, :cond_2

    .line 157
    if-nez p3, :cond_2

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUIViewParent:Landroid/view/ViewGroup;

    .line 161
    :cond_2
    if-nez p2, :cond_4

    .line 162
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, cachedBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, p3

    .line 170
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p3

    if-eq v0, v2, :cond_3

    move v2, v3

    :goto_1
    aput-boolean v2, v1, p3

    .line 177
    .end local v0           #cachedBitmap:Landroid/graphics/Bitmap;
    :goto_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->syncBitmaps()V

    goto :goto_0

    .restart local v0       #cachedBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move v2, v4

    .line 170
    goto :goto_1

    .line 173
    .end local v0           #cachedBitmap:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    aput-boolean v4, v1, p3

    .line 174
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object p2, v1, p3

    goto :goto_2
.end method

.method public captureDialog(Landroid/app/Dialog;)V
    .locals 5
    .parameter "dlg"

    .prologue
    .line 2531
    move-object v1, p1

    .line 2532
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2534
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2535
    .local v2, popupWindow:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2536
    .local v0, decorView:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2537
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2539
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nemustech/tiffany/world/TFEffect$33;

    invoke-direct {v4, p0, v0, v1}, Lcom/nemustech/tiffany/world/TFEffect$33;-><init>(Lcom/nemustech/tiffany/world/TFEffect;Landroid/view/View;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2548
    return-void
.end method

.method public finishDrag(IZ)V
    .locals 4
    .parameter "duration"
    .parameter "canceled"

    .prologue
    .line 2705
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFEffect;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2706
    move v1, p1

    .line 2707
    .local v1, f_duration:I
    move v0, p2

    .line 2709
    .local v0, f_canceled:Z
    iget v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectKind:I

    packed-switch v2, :pswitch_data_0

    .line 2730
    .end local v0           #f_canceled:Z
    .end local v1           #f_duration:I
    :cond_0
    :goto_0
    return-void

    .line 2711
    .restart local v0       #f_canceled:Z
    .restart local v1       #f_duration:I
    :pswitch_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/TFEffect$35;

    invoke-direct {v3, p0, v0, v1}, Lcom/nemustech/tiffany/world/TFEffect$35;-><init>(Lcom/nemustech/tiffany/world/TFEffect;ZI)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2709
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public getPagePanel()Lcom/nemustech/tiffany/world/TFPagePanel;
    .locals 1

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mPageCurlPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    return-object v0
.end method

.method public getTwistParam()Lcom/nemustech/tiffany/world/TFEffect$TwistParam;
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTwistParam:Lcom/nemustech/tiffany/world/TFEffect$TwistParam;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 211
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    .line 213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    aput-object v3, v1, v0

    .line 222
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    .line 223
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mRecycleSafe:[Z

    aput-boolean v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    iput v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam1:I

    .line 227
    iput v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam2:I

    .line 228
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    .line 230
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFEffect;->setReflectingFloor(Z)V

    .line 231
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFEffect;->setTranslucentMode(Z)V

    .line 233
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDepthTest:Z

    .line 234
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    .line 235
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEconomic:Z

    .line 236
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBlending:Z

    .line 238
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 239
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mActive:Z

    return v0
.end method

.method public setAnimationEventListener(Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;)V
    .locals 0
    .parameter "animationEventListener"

    .prologue
    .line 2594
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    .line 2595
    return-void
.end method

.method public setBackImage(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "backImage"
    .parameter "index"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBackBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v0, p2

    .line 355
    return-void
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "coverImage"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    .line 322
    return-void
.end method

.method public setDialogBitmapListener(Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;)V
    .locals 0
    .parameter "dialogBitmapListener"

    .prologue
    .line 2567
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDialogBitmapListener:Lcom/nemustech/tiffany/world/TFEffect$OnDialogBitmapListener;

    .line 2568
    return-void
.end method

.method public setDragAmount(FI)V
    .locals 4
    .parameter "t"
    .parameter "degree"

    .prologue
    .line 2682
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    if-eqz v2, :cond_0

    .line 2683
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFEffect;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2685
    move v1, p1

    .line 2686
    .local v1, final_t:F
    move v0, p2

    .line 2688
    .local v0, final_degree:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectKind:I

    packed-switch v2, :pswitch_data_0

    .line 2702
    .end local v0           #final_degree:I
    .end local v1           #final_t:F
    :cond_0
    :goto_0
    return-void

    .line 2690
    .restart local v0       #final_degree:I
    .restart local v1       #final_t:F
    :pswitch_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/TFEffect$34;

    invoke-direct {v3, p0, v0, v1}, Lcom/nemustech/tiffany/world/TFEffect$34;-><init>(Lcom/nemustech/tiffany/world/TFEffect;IF)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2688
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public setDragLocation(FFFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 2676
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/TFEffect;->calcDegree(FFFF)F

    move-result v0

    .line 2677
    .local v0, degree:F
    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFEffect;->calcTimeline(FFF)F

    move-result v1

    .line 2678
    .local v1, t:F
    float-to-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/nemustech/tiffany/world/TFEffect;->setDragAmount(FI)V

    .line 2679
    return-void
.end method

.method public setDragMode(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2606
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    .line 2607
    const-string v0, "TFEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TFEffect setDragMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDragMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    return-void
.end method

.method public setEffectParam(II)V
    .locals 1
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFEffect;->setEffectParam(IILandroid/view/animation/Interpolator;)V

    .line 367
    return-void
.end method

.method public setEffectParam(IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "param1"
    .parameter "param2"
    .parameter "interpolator"

    .prologue
    .line 377
    iput p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam1:I

    .line 378
    iput p2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam2:I

    .line 379
    iput-object p3, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    .line 380
    return-void
.end method

.method public setReflectingFloor(Z)V
    .locals 0
    .parameter "bExist"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mReflectingFloorExist:Z

    .line 90
    return-void
.end method

.method public setTouchableMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2602
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTouchableMode:Z

    .line 2603
    return-void
.end method

.method public setTranslucentMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTranslucent:Z

    .line 359
    return-void
.end method

.method public setTwistParam(Lcom/nemustech/tiffany/world/TFEffect$TwistParam;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTwistParam:Lcom/nemustech/tiffany/world/TFEffect$TwistParam;

    .line 2518
    return-void
.end method

.method public setViewYOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 345
    iput p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewYOffset:I

    .line 346
    return-void
.end method

.method public showEffect(IZ)V
    .locals 2
    .parameter "effect"
    .parameter "bReversed"

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFEffect;->is2DEffect(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 453
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffect2D(IZ)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffect3D(IZ)V

    goto :goto_0
.end method

.method public showEffect2D(IZ)V
    .locals 9
    .parameter "effect"
    .parameter "bReversed"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 460
    iput v7, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectWindowCleaningCnt:I

    .line 462
    if-eqz p2, :cond_2

    .line 463
    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 464
    iput v7, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 470
    :goto_0
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0xff

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 476
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChild2DView:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 479
    packed-switch p1, :pswitch_data_0

    .line 504
    :goto_1
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v2, v4

    .line 505
    .local v2, width1:I
    :goto_2
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v8

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v3, v4

    .line 506
    .local v3, width2:I
    :goto_3
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v0, v4

    .line 507
    .local v0, height1:I
    :goto_4
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v8

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v1, v4

    .line 509
    .local v1, height2:I
    :goto_5
    if-eqz v2, :cond_0

    if-nez v3, :cond_7

    .line 510
    :cond_0
    add-int v4, v2, v3

    iput v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    .line 514
    :goto_6
    if-eqz v0, :cond_1

    if-nez v1, :cond_8

    .line 515
    :cond_1
    add-int v4, v0, v1

    iput v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    .line 519
    :goto_7
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->setAnimationWindow()V

    .line 520
    return-void

    .line 466
    .end local v0           #height1:I
    .end local v1           #height2:I
    .end local v2           #width1:I
    .end local v3           #width2:I
    :cond_2
    iput v7, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 467
    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    goto/16 :goto_0

    .line 482
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectDiagonalFling(Z)V

    goto :goto_1

    .line 485
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectDiagonalScale(Z)V

    goto :goto_1

    .line 488
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectProjectorBoardUp(Z)V

    goto :goto_1

    .line 491
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectProjectorBoardDown(Z)V

    goto :goto_1

    .line 494
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectCenterZoom(Z)V

    goto :goto_1

    .line 497
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectLineZoom(Z)V

    goto :goto_1

    :cond_3
    move v2, v7

    .line 504
    goto :goto_2

    .restart local v2       #width1:I
    :cond_4
    move v3, v7

    .line 505
    goto :goto_3

    .restart local v3       #width2:I
    :cond_5
    move v0, v7

    .line 506
    goto :goto_4

    .restart local v0       #height1:I
    :cond_6
    move v1, v7

    .line 507
    goto :goto_5

    .line 512
    .restart local v1       #height2:I
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    goto :goto_6

    .line 517
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    goto :goto_7

    .line 479
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showEffect3D(IZ)V
    .locals 13
    .parameter "effect"
    .parameter "bReversed"

    .prologue
    .line 524
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mActive:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 720
    :goto_0
    return-void

    .line 526
    :cond_0
    iput p1, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectKind:I

    .line 527
    iput-boolean p2, p0, Lcom/nemustech/tiffany/world/TFEffect;->mReverse:Z

    .line 528
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mOneWayAnimation:Z

    .line 530
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mReverse:Z

    if-eqz v8, :cond_5

    .line 532
    const/4 v8, 0x1

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 533
    const/4 v8, 0x0

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    .line 543
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mActive:Z

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartTick:J

    .line 545
    const-string v8, "TFEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showEffect start on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartTick:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    if-nez v8, :cond_6

    .line 554
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    iget v11, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    aget-object v10, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBD:Landroid/graphics/drawable/Drawable;

    .line 558
    :goto_2
    new-instance v8, Lcom/nemustech/tiffany/world/TFView;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/nemustech/tiffany/world/TFView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    .line 561
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_1

    .line 563
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 564
    .local v3, left:I
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 565
    .local v5, width:I
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v4

    .line 566
    .local v4, top:I
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mChildView:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 568
    .local v0, bottom:I
    const-string v8, "TFEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start view size - l:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " w:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " t:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " b:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0           #bottom:I
    .end local v3           #left:I
    .end local v4           #top:I
    .end local v5           #width:I
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 578
    new-instance v8, Lcom/nemustech/tiffany/world/TFWorld;

    const/high16 v9, 0x3fc0

    const/high16 v10, 0x3fc0

    const/high16 v11, 0x4120

    invoke-direct {v8, v9, v10, v11}, Lcom/nemustech/tiffany/world/TFWorld;-><init>(FFF)V

    iput-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 579
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFWorld;->lock()V

    .line 581
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move v6, v8

    .line 582
    .local v6, width1:I
    :goto_3
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move v7, v8

    .line 583
    .local v7, width2:I
    :goto_4
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v1, v8

    .line 584
    .local v1, height1:I
    :goto_5
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBitmap:[Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v2, v8

    .line 586
    .local v2, height2:I
    :goto_6
    if-eqz v6, :cond_2

    if-nez v7, :cond_b

    .line 587
    :cond_2
    add-int v8, v6, v7

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    .line 591
    :goto_7
    if-eqz v1, :cond_3

    if-nez v2, :cond_c

    .line 592
    :cond_3
    add-int v8, v1, v2

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    .line 596
    :goto_8
    const-string v8, "TFEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "view width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelWidth:F

    .line 599
    iget v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    .line 604
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v9, Lcom/nemustech/tiffany/world/TFEffect$4;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/world/TFEffect$4;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setViewSizeChangeListener(Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;)V

    .line 614
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v9, Lcom/nemustech/tiffany/world/TFEffect$5;

    invoke-direct {v9, p0}, Lcom/nemustech/tiffany/world/TFEffect$5;-><init>(Lcom/nemustech/tiffany/world/TFEffect;)V

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setPostDrawListener(Ljava/lang/Runnable;)V

    .line 641
    packed-switch p1, :pswitch_data_0

    .line 698
    :goto_9
    :pswitch_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->setAnimationWindow()V

    .line 701
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->banQueryingMatrix(Z)Z

    .line 702
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTranslucent:Z

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setTranslucentMode(Z)V

    .line 703
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mTranslucent:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/nemustech/tiffany/world/TFWorld;->setBackgroundColor(FFFF)V

    .line 705
    :cond_4
    iget-boolean v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mReflectingFloorExist:Z

    if-eqz v8, :cond_d

    .line 707
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mUnitPanelHeight:F

    neg-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    const/high16 v10, 0x3f00

    invoke-virtual {v8, v9, v10}, Lcom/nemustech/tiffany/world/TFWorld;->addReflectingFloor(FF)V

    .line 714
    :goto_a
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mDepthTest:Z

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setDepthTestMode(Z)V

    .line 715
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEconomic:Z

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setEconomicMode(Z)V

    .line 716
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBlending:Z

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->setBlendingMode(Z)V

    .line 719
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mSurfaceView:Lcom/nemustech/tiffany/world/TFView;

    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFWorld;->show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;

    goto/16 :goto_0

    .line 537
    .end local v1           #height1:I
    .end local v2           #height2:I
    .end local v6           #width1:I
    .end local v7           #width2:I
    :cond_5
    const/4 v8, 0x0

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStartIndex:I

    .line 538
    const/4 v8, 0x1

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEndIndex:I

    goto/16 :goto_1

    .line 556
    :cond_6
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mCoverImage:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mBD:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 581
    :cond_7
    const/4 v8, 0x0

    move v6, v8

    goto/16 :goto_3

    .line 582
    .restart local v6       #width1:I
    :cond_8
    const/4 v8, 0x0

    move v7, v8

    goto/16 :goto_4

    .line 583
    .restart local v7       #width2:I
    :cond_9
    const/4 v8, 0x0

    move v1, v8

    goto/16 :goto_5

    .line 584
    .restart local v1       #height1:I
    :cond_a
    const/4 v8, 0x0

    move v2, v8

    goto/16 :goto_6

    .line 589
    .restart local v2       #height2:I
    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewWidth:I

    goto/16 :goto_7

    .line 594
    :cond_c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mViewHeight:I

    goto/16 :goto_8

    .line 644
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectFlip(Z)V

    goto/16 :goto_9

    .line 647
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectMosaic(Z)V

    goto/16 :goto_9

    .line 650
    :pswitch_3
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectReplace()V

    goto/16 :goto_9

    .line 653
    :pswitch_4
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectRevolvingDoor()V

    goto/16 :goto_9

    .line 656
    :pswitch_5
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectEntranceDoor()V

    goto/16 :goto_9

    .line 659
    :pswitch_6
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectAskew()V

    goto/16 :goto_9

    .line 662
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectVerticalColumn(Z)V

    goto/16 :goto_9

    .line 665
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectHorizontalRow(Z)V

    goto/16 :goto_9

    .line 668
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectTwist(Z)V

    goto/16 :goto_9

    .line 671
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectHorizontalCube(Z)V

    goto/16 :goto_9

    .line 674
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectVerticalPageOver(Z)V

    goto/16 :goto_9

    .line 677
    :pswitch_c
    iget v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam1:I

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam2:I

    invoke-direct {p0, p2, v8, v9}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageOver_PagePanel(ZII)V

    goto/16 :goto_9

    .line 680
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectSink_FlexiblePanel(Z)V

    goto/16 :goto_9

    .line 683
    :pswitch_e
    iget v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam1:I

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam2:I

    invoke-direct {p0, p2, v8, v9}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageOver_Sticker(ZII)V

    goto/16 :goto_9

    .line 686
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectGenie_FlexiblePanel(Z)V

    goto/16 :goto_9

    .line 689
    :pswitch_10
    iget v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam1:I

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam2:I

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p2, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageCurl(ZIILandroid/view/animation/Interpolator;)V

    goto/16 :goto_9

    .line 692
    :pswitch_11
    iget v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam1:I

    iget v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mParam2:I

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mEffectInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, p2, v8, v9, v10}, Lcom/nemustech/tiffany/world/TFEffect;->showEffectPageCurlTrans(ZIILandroid/view/animation/Interpolator;)V

    goto/16 :goto_9

    .line 711
    :cond_d
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFWorld;->removeReflectingFloor()V

    goto/16 :goto_a

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public stop()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const-string v11, "TFEffect"

    .line 395
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStopping:Z

    if-ne v9, v10, :cond_0

    .line 396
    const-string v9, "TFEffect"

    const-string v9, "TFEffect.stop() called but previous action is working"

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 399
    :cond_0
    iput-boolean v10, p0, Lcom/nemustech/tiffany/world/TFEffect;->mStopping:Z

    .line 401
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-nez v9, :cond_1

    .line 403
    const-string v9, "TFEffect"

    const-string v9, "TFEffect.stop() called but there was no tiffany world."

    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x0

    .line 410
    .local v0, count:I
    const/4 v4, 0x0

    .line 412
    .local v4, index:I
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFWorld;->getHolderCount()I

    move-result v2

    .line 413
    .local v2, holderCount:I
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFWorld;->getModelCount()I

    move-result v8

    .line 416
    .local v8, soloModelCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 418
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v9, v3}, Lcom/nemustech/tiffany/world/TFWorld;->getHolder(I)Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v1

    .line 419
    .local v1, h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelCount()I

    move-result v9

    add-int/2addr v0, v9

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 421
    .end local v1           #h:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_2
    add-int/2addr v0, v8

    .line 424
    new-array v7, v0, [Lcom/nemustech/tiffany/world/TFModel;

    .line 426
    .local v7, modelsToBeDetached:[Lcom/nemustech/tiffany/world/TFModel;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 427
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v9, v3}, Lcom/nemustech/tiffany/world/TFWorld;->getHolder(I)Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v1

    .line 428
    .restart local v1       #h:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelCount()I

    move-result v0

    .line 430
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 431
    invoke-virtual {v1, v5}, Lcom/nemustech/tiffany/world/TFHolder;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v9

    aput-object v9, v7, v4

    .line 432
    add-int/lit8 v4, v4, 0x1

    .line 430
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 426
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 436
    .end local v1           #h:Lcom/nemustech/tiffany/world/TFHolder;
    .end local v5           #j:I
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_5

    .line 437
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFEffect;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v9, v3}, Lcom/nemustech/tiffany/world/TFWorld;->getModel(I)Lcom/nemustech/tiffany/world/TFModel;

    move-result-object v6

    .line 438
    .local v6, m:Lcom/nemustech/tiffany/world/TFModel;
    aput-object v6, v7, v4

    .line 439
    add-int/lit8 v4, v4, 0x1

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 442
    .end local v6           #m:Lcom/nemustech/tiffany/world/TFModel;
    :cond_5
    invoke-direct {p0, v7}, Lcom/nemustech/tiffany/world/TFEffect;->prvOnFinishEffect([Lcom/nemustech/tiffany/world/TFModel;)V

    goto :goto_0
.end method
