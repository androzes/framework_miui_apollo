.class public Lcom/nemustech/tiffany/world/TFPanel;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFPanel.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TFPanel"

.field private static mMirrorY:F

.field private static mObjectY:F


# instance fields
.field protected mColorBuffer:Ljava/nio/FloatBuffer;

.field protected mImageOrientation:[I

.field private mMorphTargetHeight:F

.field private mMorphTargetWidth:F

.field protected mReverseWay:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 24
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 25
    invoke-direct {p0, v0, v0}, Lcom/nemustech/tiffany/world/TFPanel;->create(FF)V

    .line 26
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFPanel;->create(FF)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFHolder;FF)V
    .locals 0
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFPanel;->create(FF)V

    .line 58
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V
    .locals 0
    .parameter "world"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFPanel;->create(FF)V

    .line 46
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 47
    return-void
.end method

.method private create(FF)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 107
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    .line 112
    .local v3, texCoords:[F
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 113
    .local v2, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 115
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 116
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFPanel;->setSize(FF)V

    .line 119
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mImageOrientation:[I

    .line 120
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mReverseWay:[I

    .line 121
    const/4 v4, 0x1

    invoke-super {p0, v4}, Lcom/nemustech/tiffany/world/TFModel;->setBackFaceVisibility(Z)V

    .line 124
    new-array v1, v7, [F

    fill-array-data v1, :array_1

    .line 131
    .local v1, colorBuffer:[F
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, cbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 134
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    return-void

    .line 107
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 124
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 9
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    const/16 v8, 0x8

    .line 232
    mul-int/lit8 v4, p2, 0x8

    .line 233
    .local v4, offset:I
    const/4 v1, 0x0

    .line 234
    .local v1, newLeft:F
    const/4 v3, 0x0

    .line 236
    .local v3, newTop:F
    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v2, v6, v7

    .line 237
    .local v2, newRight:F
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    int-to-float v7, p4

    div-float v0, v6, v7

    .line 239
    .local v0, newBottom:F
    const/16 v6, 0x10

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v0, v5, v6

    const/4 v6, 0x2

    aput v2, v5, v6

    const/4 v6, 0x3

    aput v0, v5, v6

    const/4 v6, 0x4

    aput v1, v5, v6

    const/4 v6, 0x5

    aput v3, v5, v6

    const/4 v6, 0x6

    aput v2, v5, v6

    const/4 v6, 0x7

    aput v3, v5, v6

    aput v2, v5, v8

    const/16 v6, 0x9

    aput v0, v5, v6

    const/16 v6, 0xa

    aput v1, v5, v6

    const/16 v6, 0xb

    aput v0, v5, v6

    const/16 v6, 0xc

    aput v2, v5, v6

    const/16 v6, 0xd

    aput v3, v5, v6

    const/16 v6, 0xe

    aput v1, v5, v6

    const/16 v6, 0xf

    aput v3, v5, v6

    .line 250
    .local v5, texCoords:[F
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5, v4, v8}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 252
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 254
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPanel;->mImageOrientation:[I

    aget v6, v6, p2

    invoke-virtual {p0, p2, v6}, Lcom/nemustech/tiffany/world/TFPanel;->setImageDirection(II)V

    .line 255
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPanel;->mReverseWay:[I

    aget v6, v6, p2

    invoke-virtual {p0, p2, v6}, Lcom/nemustech/tiffany/world/TFPanel;->reverseImage(II)V

    .line 256
    return-void
.end method

.method protected applyMorph(I)V
    .locals 11
    .parameter "tickPassed"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 62
    iget-wide v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 64
    iget-wide v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    iget-wide v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphInitialTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 66
    iput-wide v6, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphInitialTime:J

    .line 87
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 89
    :cond_1
    return-void

    .line 71
    :cond_2
    iget-wide v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    .line 72
    iget-wide v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    long-to-int p1, v2

    .line 74
    :cond_3
    int-to-float v2, p1

    iget-wide v3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    long-to-float v3, v3

    div-float v1, v2, v3

    .line 75
    .local v1, ratio:F
    new-array v0, v10, [F

    .line 77
    .local v0, newSize:[F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphTargetWidth:F

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    aput v2, v0, v8

    .line 78
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphTargetHeight:F

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    aput v2, v0, v9

    .line 79
    iget-wide v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    int-to-long v4, p1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    .line 81
    aget v2, v0, v8

    aget v3, v0, v9

    invoke-virtual {p0, v2, v3}, Lcom/nemustech/tiffany/world/TFPanel;->setSize(FF)V

    .line 83
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->isInEffectAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iput v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mEffectStatus:I

    goto :goto_0
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 18
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 308
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFPanel;->applyMorph(I)V

    .line 311
    invoke-super/range {p0 .. p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    move v14, v0

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    move v14, v0

    if-eqz v14, :cond_13

    .line 316
    const/4 v13, 0x0

    .line 317
    .local v13, texture_id:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    move v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v15, v0

    iget v15, v15, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v8, v14, v15

    .line 319
    .local v8, reflectionOpacity:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mFacingFront:Z

    move v14, v0

    if-eqz v14, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mAngle:[F

    move-object v14, v0

    const/4 v15, 0x0

    aget v14, v14, v15

    neg-float v10, v14

    .line 322
    .local v10, rotationX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mAngle:[F

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    neg-float v11, v14

    .line 323
    .local v11, rotationY:F
    const/4 v9, 0x0

    .line 325
    .local v9, rotateYFirst:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v14, v0

    if-eqz v14, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-float/2addr v10, v14

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-float/2addr v11, v14

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v14, v0

    iget-boolean v9, v14, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    .line 332
    :cond_0
    const/4 v14, 0x1

    if-ne v9, v14, :cond_4

    .line 334
    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v11

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 335
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v10

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 344
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-nez v14, :cond_1

    .line 346
    move-object/from16 v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v5, v0

    .line 347
    .local v5, gl2:Lcom/nemustech/tiffany/world/TFGL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mMatrix:[F

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 351
    .end local v5           #gl2:Lcom/nemustech/tiffany/world/TFGL;
    .end local v9           #rotateYFirst:Z
    .end local v10           #rotationX:F
    .end local v11           #rotationY:F
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/nemustech/tiffany/world/TFTextures;->getMaxTextureIndex()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 353
    .local v12, textureCount:I
    if-lez v12, :cond_2

    const/16 v14, 0xb44

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 354
    :cond_2
    const v14, 0x8074

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 355
    const v14, 0x8078

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 357
    const/4 v14, 0x3

    const/16 v15, 0x1406

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 358
    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 361
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-gt v6, v12, :cond_13

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v14, v0

    iget-boolean v14, v14, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mTranslucentMode:Z

    move v14, v0

    if-nez v14, :cond_9

    .line 368
    if-nez v6, :cond_5

    const/16 v14, 0x404

    :goto_2
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mLocation:[F

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    sput v14, Lcom/nemustech/tiffany/world/TFPanel;->mObjectY:F

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v14, v0

    if-eqz v14, :cond_6

    .line 373
    sget v14, Lcom/nemustech/tiffany/world/TFPanel;->mObjectY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    move-object v15, v0

    iget-object v15, v15, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    add-float/2addr v14, v15

    sput v14, Lcom/nemustech/tiffany/world/TFPanel;->mObjectY:F

    .line 377
    :cond_3
    :goto_3
    sget v14, Lcom/nemustech/tiffany/world/TFPanel;->mObjectY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHeight:F

    move v15, v0

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v15, v0

    iget v15, v15, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float/2addr v14, v15

    sput v14, Lcom/nemustech/tiffany/world/TFPanel;->mMirrorY:F

    .line 379
    sget v14, Lcom/nemustech/tiffany/world/TFPanel;->mMirrorY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    sget v14, Lcom/nemustech/tiffany/world/TFPanel;->mMirrorY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHeight:F

    move v15, v0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    .line 381
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mAngle:[F

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    neg-float v14, v14

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mAngle:[F

    move-object v14, v0

    const/4 v15, 0x2

    aget v14, v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 384
    const/4 v14, 0x0

    sget v15, Lcom/nemustech/tiffany/world/TFPanel;->mMirrorY:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mHeight:F

    move/from16 v16, v0

    add-float v15, v15, v16

    neg-float v15, v15

    const v16, -0x457ced91

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 385
    const/high16 v14, 0x3f80

    const/high16 v15, -0x4080

    const/high16 v16, 0x3f80

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mAngle:[F

    move-object v14, v0

    const/4 v15, 0x1

    aget v14, v14, v15

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mAngle:[F

    move-object v14, v0

    const/4 v15, 0x2

    aget v14, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mBeautyReflection:Z

    move v14, v0

    if-eqz v14, :cond_e

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/nemustech/tiffany/world/TFWorld;->isBlendingMode()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 394
    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 395
    const/4 v14, 0x5

    mul-int/lit8 v15, v6, 0x4

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 397
    const/16 v14, 0xde1

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 398
    const v14, 0x8076

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 400
    const/4 v7, 0x0

    .local v7, j:I
    :goto_4
    const/4 v14, 0x4

    if-ge v7, v14, :cond_8

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundR:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundG:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mColorBackgroundB:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x2

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    const/high16 v16, 0x3f80

    sub-float v16, v16, v8

    :goto_5
    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 400
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 339
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v12           #textureCount:I
    .restart local v9       #rotateYFirst:Z
    .restart local v10       #rotationX:F
    .restart local v11       #rotationY:F
    :cond_4
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v10

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 340
    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v11

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto/16 :goto_0

    .line 368
    .end local v9           #rotateYFirst:Z
    .end local v10           #rotationX:F
    .end local v11           #rotationY:F
    .restart local v6       #i:I
    .restart local v12       #textureCount:I
    :cond_5
    const/16 v14, 0x405

    goto/16 :goto_2

    .line 374
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-object v14, v0

    if-eqz v14, :cond_3

    .line 375
    sget v14, Lcom/nemustech/tiffany/world/TFPanel;->mObjectY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-object v15, v0

    iget-object v15, v15, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    add-float/2addr v14, v15

    sput v14, Lcom/nemustech/tiffany/world/TFPanel;->mObjectY:F

    goto/16 :goto_3

    .line 405
    .restart local v7       #j:I
    :cond_7
    const/high16 v16, 0x3f80

    goto :goto_5

    .line 408
    :cond_8
    const/4 v14, 0x4

    const/16 v15, 0x1406

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 409
    const/4 v14, 0x0

    const/4 v15, 0x0

    const v16, 0x3a83126f

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 410
    const/4 v14, 0x5

    mul-int/lit8 v15, v6, 0x4

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 411
    const/16 v14, 0xde1

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 412
    const v14, 0x8076

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 441
    .end local v7           #j:I
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 445
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mTranslucentMode:Z

    move v14, v0

    if-nez v14, :cond_11

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    move v14, v0

    if-ne v14, v6, :cond_f

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v14, v0

    iget v14, v14, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v15, v0

    iget v15, v15, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    move/from16 v16, v0

    const/high16 v17, 0x3f80

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 467
    :goto_7
    if-nez v6, :cond_12

    const/16 v14, 0x405

    :goto_8
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 469
    const/4 v14, 0x5

    mul-int/lit8 v15, v6, 0x4

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mTranslucentMode:Z

    move v14, v0

    if-eqz v14, :cond_a

    .line 472
    const v14, 0x8076

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 361
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 416
    :cond_b
    const v14, 0x8076

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 417
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_9
    const/4 v14, 0x2

    if-ge v7, v14, :cond_c

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v14, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v14, v15, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x3

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 417
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 424
    :cond_c
    const/4 v7, 0x2

    :goto_a
    const/4 v14, 0x4

    if-ge v7, v14, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object v14, v0

    mul-int/lit8 v15, v7, 0x4

    add-int/lit8 v15, v15, 0x3

    const/high16 v16, 0x3f80

    invoke-virtual/range {v14 .. v16}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 431
    :cond_d
    const/4 v14, 0x4

    const/16 v15, 0x1406

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 432
    const/4 v14, 0x5

    mul-int/lit8 v15, v6, 0x4

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 433
    const v14, 0x8076

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto/16 :goto_6

    .line 438
    .end local v7           #j:I
    :cond_e
    const/high16 v14, 0x3f80

    move-object/from16 v0, p1

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 439
    const/4 v14, 0x5

    mul-int/lit8 v15, v6, 0x4

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_6

    .line 454
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/nemustech/tiffany/world/TFWorld;->isBlendingMode()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 455
    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto/16 :goto_7

    .line 457
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    move/from16 v16, v0

    const/high16 v17, 0x3f80

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto/16 :goto_7

    .line 461
    :cond_11
    const v14, 0x8076

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 465
    const/4 v14, 0x4

    const/16 v15, 0x1406

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    goto/16 :goto_7

    .line 467
    :cond_12
    const/16 v14, 0x404

    goto/16 :goto_8

    .line 476
    .end local v6           #i:I
    .end local v8           #reflectionOpacity:F
    .end local v12           #textureCount:I
    .end local v13           #texture_id:I
    :cond_13
    return-void
.end method

.method public morph(FFJ)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "animationTime"

    .prologue
    .line 98
    iput-wide p3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphInitialTime:J

    .line 99
    iput-wide p3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphRemainingTime:J

    .line 100
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphTargetWidth:F

    .line 101
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMorphTargetHeight:F

    .line 102
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 103
    :cond_0
    return-void
.end method

.method public reverseImage(II)V
    .locals 7
    .parameter "index"
    .parameter "reverseWay"

    .prologue
    const/4 v6, 0x3

    .line 204
    mul-int/lit8 v0, p1, 0x8

    .line 205
    .local v0, offset:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mReverseWay:[I

    aput p2, v2, p1

    .line 207
    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    if-ne p2, v6, :cond_1

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 210
    .local v1, temp:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 211
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 213
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x6

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 215
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 218
    .end local v1           #temp:F
    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-ne p2, v6, :cond_3

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 221
    .restart local v1       #temp:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 222
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v0, 0x7

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 224
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 225
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 227
    .end local v1           #temp:F
    :cond_3
    return-void
.end method

.method public setColorBuffer([F)V
    .locals 3
    .parameter "colorBuffer"

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    aget v2, p1, v0

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method public setImageDirection(II)V
    .locals 10
    .parameter "index"
    .parameter "direction"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    mul-int/lit8 v2, p1, 0x8

    .line 149
    .local v2, offset:I
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mImageOrientation:[I

    aput p2, v3, p1

    .line 151
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 152
    .local v0, copy:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 189
    :goto_1
    return-void

    .line 159
    :pswitch_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x6

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 162
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x7

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 163
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x0

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 164
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 165
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x4

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 166
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x5

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 169
    :pswitch_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x0

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x6

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 174
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x7

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 175
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x2

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 176
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 179
    :pswitch_2
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 180
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x7

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 181
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 182
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x5

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 183
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 184
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 185
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x0

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 186
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setSize(FF)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 265
    cmpg-float v4, p1, v7

    if-lez v4, :cond_0

    cmpg-float v4, p2, v7

    if-gtz v4, :cond_1

    .line 266
    :cond_0
    const-string v4, "TFPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid panel size , width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mWidth:F

    .line 269
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHeight:F

    .line 271
    div-float v1, p1, v8

    .line 272
    .local v1, halfWidth:F
    div-float v0, p2, v8

    .line 273
    .local v0, halfHeight:F
    const/16 v4, 0x18

    new-array v3, v4, [F

    neg-float v4, v1

    aput v4, v3, v9

    const/4 v4, 0x1

    neg-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v7, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    neg-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v7, v3, v4

    const/4 v4, 0x6

    neg-float v5, v1

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v0, v3, v4

    const/16 v4, 0x8

    aput v7, v3, v4

    const/16 v4, 0x9

    aput v1, v3, v4

    const/16 v4, 0xa

    aput v0, v3, v4

    const/16 v4, 0xb

    aput v7, v3, v4

    const/16 v4, 0xc

    neg-float v5, v1

    aput v5, v3, v4

    const/16 v4, 0xd

    neg-float v5, v0

    aput v5, v3, v4

    const/16 v4, 0xe

    aput v7, v3, v4

    const/16 v4, 0xf

    aput v1, v3, v4

    const/16 v4, 0x10

    neg-float v5, v0

    aput v5, v3, v4

    const/16 v4, 0x11

    aput v7, v3, v4

    const/16 v4, 0x12

    neg-float v5, v1

    aput v5, v3, v4

    const/16 v4, 0x13

    aput v0, v3, v4

    const/16 v4, 0x14

    aput v7, v3, v4

    const/16 v4, 0x15

    aput v1, v3, v4

    const/16 v4, 0x16

    aput v0, v3, v4

    const/16 v4, 0x17

    aput v7, v3, v4

    .line 288
    .local v3, vertices:[F
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 289
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 291
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 292
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mWidth:F

    .line 296
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHeight:F

    .line 297
    iput v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mDepth:F

    .line 299
    return-void
.end method

.method updateHitPoint()V
    .locals 13

    .prologue
    .line 484
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 486
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitPoint:[F

    .line 487
    .local v0, m:[F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitTestLine:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitTestLine:[F

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFVector3D;->getPointOnLine([FI[FI[FIFI)F

    .line 490
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mWidth:F

    const/high16 v2, 0x4000

    div-float v8, v1, v2

    .line 491
    .local v8, A:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHeight:F

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 492
    .local v9, B:F
    const/4 v1, 0x0

    aget v11, v0, v1

    .line 493
    .local v11, x:F
    const/4 v1, 0x1

    aget v12, v0, v1

    .line 495
    .local v12, y:F
    neg-float v1, v8

    cmpg-float v1, v11, v1

    if-ltz v1, :cond_0

    cmpl-float v1, v11, v8

    if-gtz v1, :cond_0

    neg-float v1, v9

    cmpg-float v1, v12, v1

    if-ltz v1, :cond_0

    cmpl-float v1, v12, v9

    if-lez v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 498
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPanel;->mMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 500
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitTestLine:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitTestLine:[F

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFVector3D;->dotWithAxis([FI[FII)F

    move-result v10

    .line 502
    .local v10, dot:F
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitFace:I

    .line 503
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    .line 504
    const/4 v1, 0x1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFPanel;->mHitFace:I

    goto :goto_0
.end method
