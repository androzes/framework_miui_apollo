.class public Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;
.super Lcom/nemustech/tiffany/world/TFSingleEffect3D;
.source "TFEffectPageOver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFEffectPageOver"


# instance fields
.field protected mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

.field protected mBackImage:Landroid/graphics/Bitmap;

.field protected mCancelled:Z

.field protected mDegree:I

.field protected mDragMode:Z

.field protected mDuration:I

.field protected mHasShadow:Z

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field protected mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

.field protected mReverse:Z

.field protected mShadowAlpha:F

.field protected mShadowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->createWorld(Landroid/content/Context;)Lcom/nemustech/tiffany/world/TFWorld;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->setWorld(Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 32
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->initializeParam()V

    .line 33
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->getWorld()Lcom/nemustech/tiffany/world/TFOverlayWorld;

    move-result-object v0

    new-instance v1, Lcom/nemustech/tiffany/world/TFView;

    invoke-direct {v1, p1}, Lcom/nemustech/tiffany/world/TFView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFOverlayWorld;->show(Landroid/view/View;)Lcom/nemustech/tiffany/world/TFError;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mTextureBitmap:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mTextureBitmap:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->endTime()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mTextureBitmap:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->startTime()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->endTimeInDragMode()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private endTime()F
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mReverse:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private endTimeInDragMode()F
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->startTime()F

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->endTime()F

    move-result v0

    goto :goto_0
.end method

.method private showView(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    const-string v0, "TFEffectPageOver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show View ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-nez p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mView:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startTime()F
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mReverse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method


# virtual methods
.method public OnFinishEffect()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mCancelled:Z

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;->onAnimationEnd(IZ)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V

    .line 197
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$6;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public OnPrepareEffect()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->prepareTextureBitmap(I)V

    .line 117
    new-instance v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-direct {v0, v1, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FF)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    .line 118
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public OnStartEffect()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mCancelled:Z

    .line 140
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$3;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->setPostDrawListener(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$4;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public OnStopEffect()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v1, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$5;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public cancelDrag(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 261
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 262
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    move v0, p1

    .line 265
    .local v0, f_duration:I
    const/4 v1, 0x0

    .line 266
    .local v1, f_interpolator:Landroid/view/animation/Interpolator;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$9;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected createWorld(Landroid/content/Context;)Lcom/nemustech/tiffany/world/TFWorld;
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 37
    new-instance v1, Lcom/nemustech/tiffany/world/TFOverlayWindow;

    invoke-direct {v1, p1}, Lcom/nemustech/tiffany/world/TFOverlayWindow;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, ow:Lcom/nemustech/tiffany/world/TFOverlayWindow;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v5, v5

    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFUtils;->getTitleBarHeight(I)I

    move-result v5

    add-int v3, v4, v5

    .line 41
    .local v3, y:I
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/nemustech/tiffany/world/TFOverlayWindow;->setPosition(II)V

    .line 43
    new-instance v2, Lcom/nemustech/tiffany/world/TFOverlayWorld;

    const/high16 v4, 0x40e0

    invoke-direct {v2, v7, v7, v4, v1}, Lcom/nemustech/tiffany/world/TFOverlayWorld;-><init>(FFFLcom/nemustech/tiffany/world/TFOverlayWindow;)V

    .line 45
    .local v2, world:Lcom/nemustech/tiffany/world/TFOverlayWorld;
    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/nemustech/tiffany/world/TFOverlayWorld;->setBackgroundColor(FFFF)V

    .line 48
    new-instance v4, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$1;

    invoke-direct {v4, p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$1;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V

    invoke-virtual {v2, v4}, Lcom/nemustech/tiffany/world/TFOverlayWorld;->setViewSizeChangeListener(Lcom/nemustech/tiffany/world/TFWorld$OnViewSizeChangeListener;)V

    .line 53
    return-object v2
.end method

.method public flickDrag(I)V
    .locals 4
    .parameter "duration"

    .prologue
    .line 245
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 246
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    move v0, p1

    .line 249
    .local v0, f_duration:I
    const/4 v1, 0x0

    .line 250
    .local v1, f_interpolator:Landroid/view/animation/Interpolator;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v3, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$8;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getDragAmount()F
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v0

    return v0
.end method

.method public getDragMode()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    return v0
.end method

.method public getPagePanel()Lcom/nemustech/tiffany/world/TFPagePanel;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    return-object v0
.end method

.method public getWorld()Lcom/nemustech/tiffany/world/TFOverlayWorld;
    .locals 0

    .prologue
    .line 57
    iget-object p0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFOverlayWorld;

    return-object p0
.end method

.method public bridge synthetic getWorld()Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->getWorld()Lcom/nemustech/tiffany/world/TFOverlayWorld;

    move-result-object v0

    return-object v0
.end method

.method public initializeParam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 65
    const/16 v0, 0x14a

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->setParam(IILandroid/view/animation/Interpolator;)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->setDragMode(Z)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->setReverse(Z)V

    .line 68
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mCancelled:Z

    .line 69
    return-void
.end method

.method public setAnimationEventListener(Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    .line 277
    return-void
.end method

.method public setBackImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mBackImage:Landroid/graphics/Bitmap;

    .line 107
    return-void
.end method

.method public setDragAmount(F)V
    .locals 3
    .parameter "t"

    .prologue
    .line 224
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 225
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_0
    move v0, p1

    .line 228
    .local v0, final_t:F
    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    new-instance v2, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;

    invoke-direct {v2, p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$7;-><init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;F)V

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFWorld;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDragMode(Z)V
    .locals 1
    .parameter "dragMode"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 89
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDragMode:Z

    .line 90
    return-void
.end method

.method public setPageShadow(ZFF)V
    .locals 0
    .parameter "putShadow"
    .parameter "ratio"
    .parameter "darkAlpha"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mHasShadow:Z

    .line 314
    iput p2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mShadowRatio:F

    .line 315
    iput p3, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mShadowAlpha:F

    .line 316
    return-void
.end method

.method public setParam(IILandroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "duration"
    .parameter "degree"
    .parameter "interpolator"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 78
    iput p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDuration:I

    .line 79
    iput p2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mDegree:I

    .line 80
    iput-object p3, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 81
    return-void
.end method

.method public setReverse(Z)V
    .locals 1
    .parameter "reverse"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->expectState(I)Z

    .line 102
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mReverse:Z

    .line 103
    return-void
.end method
