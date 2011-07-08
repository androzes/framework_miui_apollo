.class public Lcom/nemustech/tiffany/world/TFCamera;
.super Lcom/nemustech/tiffany/world/TFObject;
.source "TFCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFCamera"

.field static final tiffanyCamera:Lcom/nemustech/tiffany/world/TFCamera;


# instance fields
.field mChangeStatus:Z

.field private mLensMorphDurationTime:J

.field mNear:F

.field private mTargetNear:F

.field private mTargetWideScale:F

.field mWideScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/nemustech/tiffany/world/TFCamera;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFCamera;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/world/TFCamera;->tiffanyCamera:Lcom/nemustech/tiffany/world/TFCamera;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFObject;-><init>()V

    .line 22
    return-void
.end method

.method static getCamera()Lcom/nemustech/tiffany/world/TFCamera;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nemustech/tiffany/world/TFCamera;->tiffanyCamera:Lcom/nemustech/tiffany/world/TFCamera;

    return-object v0
.end method


# virtual methods
.method attatch(Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 0
    .parameter "world"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFCamera;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 30
    return-void
.end method

.method public locate(FFF)V
    .locals 1
    .parameter "locationX"
    .parameter "locationY"
    .parameter "locationZ"

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->locate(FFF)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 42
    return-void
.end method

.method public locate(IFZ)V
    .locals 1
    .parameter "axis"
    .parameter "location"
    .parameter "bRelative"

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->locate(IFZ)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 36
    return-void
.end method

.method public morphLens(FFJ)V
    .locals 2
    .parameter "targetWideScale"
    .parameter "targetPerspective"
    .parameter "duration"

    .prologue
    .line 80
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetWideScale:F

    .line 81
    iput p2, p0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetNear:F

    .line 82
    iput-wide p3, p0, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 84
    :cond_0
    return-void
.end method

.method public move(FFFFFFF)V
    .locals 2
    .parameter "locationX"
    .parameter "locationY"
    .parameter "locationZ"
    .parameter "startingSpeed"
    .parameter "middleSpeed"
    .parameter "inflectionPoint"
    .parameter "endingSpeed"

    .prologue
    .line 47
    const-string v0, "TFCamera"

    const-string v1, "Camera move!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 49
    invoke-super/range {p0 .. p7}, Lcom/nemustech/tiffany/world/TFObject;->move(FFFFFFF)V

    .line 50
    return-void
.end method

.method public rotate(FFFII)V
    .locals 2
    .parameter "angleX"
    .parameter "angleY"
    .parameter "speed"
    .parameter "directionX"
    .parameter "directionY"

    .prologue
    .line 54
    const-string v0, "TFCamera"

    const-string v1, "Camera rotate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 56
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFII)V

    .line 57
    return-void
.end method

.method public setLens(FF)V
    .locals 1
    .parameter "wideScale"
    .parameter "perspective"

    .prologue
    .line 67
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    .line 68
    iput p2, p0, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 70
    return-void
.end method

.method updateProjection(Lcom/nemustech/tiffany/world/TFGL;F)Z
    .locals 20
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFCamera;->isInEffectAnimation()Z

    move-result v13

    .line 89
    .local v13, bShouldUpdate:Z
    const-string v3, "TFCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProjection ! next time update : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    move-wide v3, v0

    long-to-float v3, v3

    div-float v15, p2, v3

    .line 97
    .local v15, multiplier:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetWideScale:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v15

    add-float v17, v3, v4

    .line 98
    .local v17, newWideScale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetNear:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    move v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v15

    add-float v16, v3, v4

    .line 99
    .local v16, newNear:F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    move-wide v3, v0

    move/from16 v0, p2

    float-to-long v0, v0

    move-wide v5, v0

    sub-long/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    .line 101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v3, v0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetWideScale:F

    move v3, v0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetWideScale:F

    move/from16 v17, v0

    .line 108
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    move v3, v0

    cmpl-float v3, v16, v3

    if-lez v3, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetNear:F

    move v3, v0

    cmpl-float v3, v16, v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetNear:F

    move/from16 v16, v0

    .line 115
    :cond_1
    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    .line 116
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    .line 118
    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    .line 119
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 123
    :goto_2
    const-string v3, "TFCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LensMorphDurationTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLensMorphDurationTime:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v15           #multiplier:F
    .end local v16           #newNear:F
    .end local v17           #newWideScale:F
    :cond_2
    const/16 v3, 0x1701

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFGL;->glMatrixMode(I)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/nemustech/tiffany/world/TFGL;->glLoadIdentity()V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v4, v4, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 130
    .local v18, ratio:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->getHeight()F

    move-result v3

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    .line 131
    .local v14, h:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->getWidth()F

    move-result v3

    const/high16 v4, 0x4000

    div-float v19, v3, v4

    .line 134
    .local v19, w:F
    move/from16 v0, v19

    neg-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v4, v0

    mul-float/2addr v3, v4

    mul-float v4, v3, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v3, v0

    mul-float v3, v3, v19

    mul-float v5, v3, v18

    neg-float v3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v6, v0

    mul-float/2addr v6, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    move v3, v0

    mul-float v7, v14, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFWorld;->getDepth()F

    move-result v9

    add-float/2addr v9, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/nemustech/tiffany/world/TFGL;->glFrustumf(FFFFFF)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLocation:[F

    move-object v3, v0

    const/4 v4, 0x0

    aget v4, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLocation:[F

    move-object v3, v0

    const/4 v5, 0x1

    aget v5, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mLocation:[F

    move-object v3, v0

    const/4 v6, 0x2

    aget v6, v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mAngle:[F

    move-object v3, v0

    const/4 v7, 0x0

    aget v7, v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mAngle:[F

    move-object v3, v0

    const/4 v8, 0x1

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mAngle:[F

    move-object v3, v0

    const/4 v9, 0x2

    aget v9, v3, v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v12}, Lcom/nemustech/tiffany/world/TFUtils;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mMatrix:[F

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 168
    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/world/TFCamera;->mChangeStatus:Z

    .line 169
    return v13

    .line 105
    .end local v14           #h:F
    .end local v18           #ratio:F
    .end local v19           #w:F
    .restart local v15       #multiplier:F
    .restart local v16       #newNear:F
    .restart local v17       #newWideScale:F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetWideScale:F

    move v3, v0

    cmpg-float v3, v17, v3

    if-gez v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetWideScale:F

    move/from16 v17, v0

    goto/16 :goto_0

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetNear:F

    move v3, v0

    cmpg-float v3, v16, v3

    if-gez v3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCamera;->mTargetNear:F

    move/from16 v16, v0

    goto/16 :goto_1

    .line 121
    :cond_5
    const/4 v13, 0x1

    goto/16 :goto_2
.end method
