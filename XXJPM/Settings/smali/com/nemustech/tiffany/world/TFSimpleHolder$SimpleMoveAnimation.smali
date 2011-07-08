.class public Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;
.super Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;
.source "TFSimpleHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFSimpleHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleMoveAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFSimpleHolder;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFSimpleHolder;Lcom/nemustech/tiffany/world/TFSimpleHolder;)V
    .locals 0
    .parameter
    .parameter "holder"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->this$0:Lcom/nemustech/tiffany/world/TFSimpleHolder;

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;-><init>(Lcom/nemustech/tiffany/world/TFHolder;Lcom/nemustech/tiffany/world/TFHolder;)V

    .line 272
    return-void
.end method


# virtual methods
.method public OnFrame()V
    .locals 5

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->getTime()I

    move-result v2

    int-to-float v1, v2

    .line 314
    .local v1, t:F
    iget v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mInitialS:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mInitialV:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mAcceleration:F

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->calcS(FFFF)F

    move-result v0

    .line 316
    .local v0, S:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mS:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFHolder;->moveHeadModelStep(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    iget v2, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->stop()V

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 323
    return-void

    .line 319
    :cond_0
    const-string v2, "TFSimpleHolder"

    const-string v3, "Attempt to call stop() on an animation wich stat is already STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_1
    iput v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mS:F

    goto :goto_0
.end method

.method public OnStart()Z
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->getHeadDeviation()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mInitialS:F

    .line 276
    iget v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mInitialS:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mS:F

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public OnStop()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 297
    const/4 v0, 0x1

    .line 298
    .local v0, bKeepGoing:Z
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mAutoRepositionMode:Z

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->reset(Z)V

    .line 300
    iget v1, p0, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->mAutoRepositionDuration:I

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->repositionHeadModel(I)Z

    move-result v0

    .line 301
    if-nez v0, :cond_0

    move v1, v2

    .line 306
    :goto_0
    return v1

    .line 301
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFSimpleHolder$SimpleMoveAnimation;->OnFrame()V

    move v1, v2

    .line 306
    goto :goto_0
.end method
