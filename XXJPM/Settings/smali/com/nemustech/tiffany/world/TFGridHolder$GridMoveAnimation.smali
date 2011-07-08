.class public Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;
.super Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;
.source "TFGridHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFGridHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridMoveAnimation"
.end annotation


# static fields
.field public static final ANGLE_DEC:F = 1.0f

.field public static final ANGLE_Y_LIMIT:F = 40.0f


# instance fields
.field protected mAngle:F

.field protected mIsLeaning:Z

.field protected mIsScrolling:Z

.field protected mLeaningMode:Z

.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFGridHolder;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFGridHolder;Lcom/nemustech/tiffany/world/TFGridHolder;)V
    .locals 0
    .parameter
    .parameter "holder"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->this$0:Lcom/nemustech/tiffany/world/TFGridHolder;

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFHolder$MoveAnimation;-><init>(Lcom/nemustech/tiffany/world/TFHolder;Lcom/nemustech/tiffany/world/TFHolder;)V

    .line 287
    return-void
.end method


# virtual methods
.method public OnFrame()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x3de0

    const/high16 v8, 0x4220

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getTime()I

    move-result v3

    int-to-float v2, v3

    .line 321
    .local v2, t:F
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mInitialS:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mInitialV:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAcceleration:F

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->calcS(FFFF)F

    move-result v0

    .line 322
    .local v0, S:F
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mS:F

    sub-float v1, v0, v3

    .line 324
    .local v1, step:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nemustech/tiffany/world/TFHolder;->moveHeadModelStep(F)Z

    move-result v3

    if-nez v3, :cond_4

    .line 325
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mIsLeaning:Z

    if-eqz v3, :cond_0

    .line 326
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    .line 327
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    rem-float/2addr v4, v7

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    .line 328
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_1

    .line 329
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    sub-float/2addr v3, v7

    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFGridHolder;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFGridHolder;->mDirection:I

    if-ne v3, v10, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    invoke-virtual {v3, v6, v4}, Lcom/nemustech/tiffany/world/TFHolder;->look(FF)V

    .line 379
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFHolder;->requestLayout()V

    .line 380
    return-void

    .line 333
    :cond_1
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    add-float/2addr v3, v7

    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    invoke-virtual {v3, v4, v6}, Lcom/nemustech/tiffany/world/TFHolder;->look(FF)V

    goto :goto_1

    .line 343
    :cond_3
    invoke-static {}, Lcom/nemustech/tiffany/world/TFGridHolder;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Angle is 0 at stop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    invoke-virtual {v3, v6, v4}, Lcom/nemustech/tiffany/world/TFHolder;->look(FF)V

    .line 345
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mIsLeaning:Z

    .line 346
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->stop()V

    goto :goto_1

    .line 350
    :cond_4
    iput v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mS:F

    .line 352
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->isLeaningMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    mul-float v3, v1, v8

    iput v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    .line 355
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_6

    .line 356
    iput v8, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    .line 368
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFGridHolder;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFGridHolder;->mDirection:I

    if-ne v3, v10, :cond_7

    .line 369
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    invoke-virtual {v3, v6, v4}, Lcom/nemustech/tiffany/world/TFHolder;->look(FF)V

    .line 374
    :goto_3
    cmpl-float v3, v2, v6

    if-nez v3, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/nemustech/tiffany/world/TFHolder;->look(FF)V

    goto :goto_1

    .line 357
    :cond_6
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_5

    .line 358
    iput v9, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    goto :goto_2

    .line 371
    :cond_7
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v3

    iget v4, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAngle:F

    invoke-virtual {v3, v4, v6}, Lcom/nemustech/tiffany/world/TFHolder;->look(FF)V

    goto :goto_3
.end method

.method public OnStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->getHeadDeviation()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mInitialS:F

    .line 299
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mInitialS:F

    iput v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mS:F

    .line 300
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mIsLeaning:Z

    .line 301
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mIsScrolling:Z

    .line 302
    return v1
.end method

.method public OnStop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    const/4 v0, 0x1

    .line 308
    .local v0, bKeepGoing:Z
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAutoRepositionMode:Z

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->reset(Z)V

    .line 310
    iget v1, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mAutoRepositionDuration:I

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->repositionHeadModel(I)Z

    move-result v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->OnFrame()V

    .line 314
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isLeaningMode()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mLeaningMode:Z

    return v0
.end method

.method public setLeaningMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFGridHolder$GridMoveAnimation;->mLeaningMode:Z

    .line 291
    return-void
.end method
