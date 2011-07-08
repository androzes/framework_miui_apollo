.class public abstract Lcom/nemustech/tiffany/world/TFSingleEffect3D;
.super Ljava/lang/Object;
.source "TFSingleEffect3D.java"


# static fields
.field public static final INITIAL:I = 0x0

.field public static final PREPARED:I = 0x1

.field public static final RUNNING:I = 0x2

.field public static final STOPPING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TFSingleEffect3D"


# instance fields
.field protected mAnimationEventListener:Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

.field protected mContext:Landroid/content/Context;

.field public mEffectFinish:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

.field protected mHandler:Landroid/os/Handler;

.field protected mState:I

.field protected mTextureBitmap:[Landroid/graphics/Bitmap;

.field protected mView:[Landroid/view/View;

.field protected mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;-><init>(Landroid/content/Context;Lcom/nemustech/tiffany/world/TFWorld;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 2
    .parameter "context"
    .parameter "world"

    .prologue
    const/4 v1, 0x2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lcom/nemustech/tiffany/world/TFSingleEffect3D$1;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D$1;-><init>(Lcom/nemustech/tiffany/world/TFSingleEffect3D;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mEffectFinish:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 266
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mView:[Landroid/view/View;

    .line 267
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mTextureBitmap:[Landroid/graphics/Bitmap;

    .line 22
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mHandler:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mState:I

    .line 26
    return-void
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "v"

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    .line 240
    .local v1, enabled:Z
    if-nez v1, :cond_0

    .line 241
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 244
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 245
    :cond_1
    return-object v0
.end method


# virtual methods
.method public abstract OnFinishEffect()V
.end method

.method public abstract OnPrepareEffect()V
.end method

.method public abstract OnStartEffect()V
.end method

.method public abstract OnStopEffect()V
.end method

.method public addView(ILandroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "view"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->addView(ILandroid/view/View;Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public addView(ILandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "index"
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->expectState(I)Z

    .line 77
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mView:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 80
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mTextureBitmap:[Landroid/graphics/Bitmap;

    aput-object p3, v0, p1

    goto :goto_0
.end method

.method public clearViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mView:[Landroid/view/View;

    aput-object v1, v0, v2

    .line 203
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mView:[Landroid/view/View;

    aput-object v1, v0, v3

    .line 204
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mTextureBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    .line 205
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mTextureBitmap:[Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    .line 206
    return-void
.end method

.method public expectState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->expectState(IZ)Z

    move-result v0

    return v0
.end method

.method public expectState(IZ)Z
    .locals 4
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->getState()I

    move-result v0

    .line 114
    .local v0, s:I
    if-eq v0, p1, :cond_1

    .line 115
    if-eqz p2, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mState:I

    return v0
.end method

.method public getWorld()Lcom/nemustech/tiffany/world/TFWorld;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->getState()I

    move-result v0

    .line 63
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public layoutModelOverView(Lcom/nemustech/tiffany/world/TFModel;Landroid/view/View;)V
    .locals 7
    .parameter "m"
    .parameter "v"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 181
    new-array v1, v6, [I

    .line 182
    .local v1, uiCoord:[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    aput v3, v1, v4

    .line 184
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    aput v3, v1, v5

    .line 186
    new-array v2, v6, [F

    .line 187
    .local v2, worldCoord:[F
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3, v1, v2}, Lcom/nemustech/tiffany/world/TFWorld;->toWorldCoord([I[F)V

    .line 189
    instance-of v3, p1, Lcom/nemustech/tiffany/world/TFPanel;

    if-eqz v3, :cond_0

    .line 190
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFPanel;

    move-object v3, v0

    aget v4, v2, v4

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/nemustech/tiffany/world/TFPanel;->setSize(FF)V

    .line 196
    :goto_0
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFModel;->locate(FFF)V

    .line 197
    return-void

    .line 191
    :cond_0
    instance-of v3, p1, Lcom/nemustech/tiffany/world/TFPagePanel;

    if-eqz v3, :cond_1

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFPagePanel;

    move-object v3, v0

    aget v4, v2, v4

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/nemustech/tiffany/world/TFPagePanel;->setSize(FF)V

    goto :goto_0

    .line 194
    :cond_1
    const-string v3, "TFSingleEffect3D"

    const-string v4, "UNKNOWN MODEL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "TFSingleEffect3D"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->pause()V

    .line 42
    return-void
.end method

.method public prepareEffect()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->expectState(I)Z

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mState:I

    .line 128
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->OnPrepareEffect()V

    .line 129
    return-void
.end method

.method public prepareTextureBitmap(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mView:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mTextureBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mTextureBitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    .line 174
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "TFSingleEffect3D"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->resume()V

    .line 49
    return-void
.end method

.method public setWorld(Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 0
    .parameter "world"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 219
    return-void
.end method

.method public showEffect()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->expectState(I)Z

    .line 90
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->prepareEffect()V

    .line 91
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->startEffect()V

    .line 92
    return-void
.end method

.method public startEffect()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->expectState(I)Z

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mState:I

    .line 137
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->OnStartEffect()V

    .line 138
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "TFSingleEffect3D"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->stop()V

    .line 56
    return-void
.end method

.method public stopEffect()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->expectState(I)Z

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mState:I

    .line 146
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->OnStopEffect()V

    .line 147
    return-void
.end method
