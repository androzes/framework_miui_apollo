.class public Lcom/nemustech/tiffany/world/TFCustomPanel;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFCustomPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFCustomPanel$IdentityEffect;,
        Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;,
        Lcom/nemustech/tiffany/world/TFCustomPanel$Time;
    }
.end annotation


# static fields
.field public static final MESH_HEIGHT:I = 0x8

.field public static final MESH_WIDTH:I = 0x8


# instance fields
.field protected mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

.field protected mBlenderChanged:Z

.field mDrawReflection:Z

.field protected mFaceOffset:I

.field protected mMeshHeight:I

.field protected mMeshTexCoord:[F

.field protected mMeshVertex:[F

.field protected mMeshWidth:I

.field protected mNewBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

.field protected mRequestUpdateTexCoordCount:I

.field protected mRequestUpdateVertexCount:I

.field protected mTempFloat6:[F

.field protected mTempFloat8:[F

.field protected mTextureHeight:[F

.field protected mTextureWidth:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v0, 0x8

    .line 28
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;-><init>(FFII)V

    .line 29
    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "meshWidth"
    .parameter "meshHeight"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 637
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTempFloat6:[F

    .line 638
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTempFloat8:[F

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mDrawReflection:Z

    .line 39
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->create()V

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setSize(FFII)V

    .line 41
    return-void
.end method

.method protected static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "count"

    .prologue
    .line 625
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 45
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    int-to-float v2, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setTextureSize(IFF)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildTexCoordArray(I)V

    .line 49
    return-void
.end method

.method protected buildTexCoordArray(I)V
    .locals 17
    .parameter "face"

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    move v8, v0

    .line 442
    .local v8, meshW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    move v7, v0

    .line 443
    .local v7, meshH:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    move v13, v0

    add-int/lit8 v11, v13, 0x1

    .line 444
    .local v11, vertexW:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFaceOffset:I

    move v13, v0

    mul-int/lit8 v9, v13, 0x2

    .line 445
    .local v9, offset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureWidth:[F

    move-object v13, v0

    aget v12, v13, p1

    .line 446
    .local v12, w:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureHeight:[F

    move-object v13, v0

    aget v2, v13, p1

    .line 448
    .local v2, h:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTempFloat6:[F

    move-object v10, v0

    .line 450
    .local v10, st:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object v13, v0

    mul-int v14, p1, v9

    invoke-virtual {v13, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 451
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 452
    add-int/lit8 v13, v6, 0x1

    mul-int/2addr v13, v11

    mul-int/lit8 v4, v13, 0x2

    .line 453
    .local v4, index1:I
    mul-int v13, v6, v11

    mul-int/lit8 v5, v13, 0x2

    .line 454
    .local v5, index2:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-gt v3, v8, :cond_1

    .line 455
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    move-object v14, v0

    add-int/lit8 v15, v4, 0x0

    aget v14, v14, v15

    mul-float/2addr v14, v12

    aput v14, v10, v13

    .line 456
    const/4 v13, 0x1

    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    move-object v15, v0

    add-int/lit8 v16, v4, 0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    mul-float/2addr v14, v2

    aput v14, v10, v13

    .line 457
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    move-object v14, v0

    add-int/lit8 v15, v5, 0x0

    aget v14, v14, v15

    mul-float/2addr v14, v12

    aput v14, v10, v13

    .line 458
    const/4 v13, 0x3

    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    move-object v15, v0

    add-int/lit8 v16, v5, 0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    mul-float/2addr v14, v2

    aput v14, v10, v13

    .line 459
    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_0

    .line 461
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v10, v14

    sub-float v14, v12, v14

    aput v14, v10, v13

    .line 462
    const/4 v13, 0x2

    const/4 v14, 0x2

    aget v14, v10, v14

    sub-float v14, v12, v14

    aput v14, v10, v13

    .line 464
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v13, v10, v14, v15}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 465
    add-int/lit8 v4, v4, 0x2

    .line 466
    add-int/lit8 v5, v5, 0x2

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 451
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 469
    .end local v3           #i:I
    .end local v4           #index1:I
    .end local v5           #index2:I
    :cond_2
    return-void
.end method

.method protected buildVertexArray(I)V
    .locals 14
    .parameter "face"

    .prologue
    .line 414
    iget v6, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    .line 415
    .local v6, meshW:I
    iget v5, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    .line 416
    .local v5, meshH:I
    iget v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    add-int/lit8 v8, v11, 0x1

    .line 417
    .local v8, vertexW:I
    iget v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFaceOffset:I

    mul-int/lit8 v7, v11, 0x3

    .line 418
    .local v7, offset:I
    iget v9, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWidth:F

    .line 419
    .local v9, w:F
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHeight:F

    .line 421
    .local v0, h:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTempFloat6:[F

    .line 423
    .local v10, xyz:[F
    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int v12, p1, v7

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 425
    add-int/lit8 v11, v4, 0x1

    mul-int/2addr v11, v8

    mul-int/lit8 v2, v11, 0x3

    .line 426
    .local v2, index1:I
    mul-int v11, v4, v8

    mul-int/lit8 v3, v11, 0x3

    .line 427
    .local v3, index2:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-gt v1, v6, :cond_0

    .line 428
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    add-int/lit8 v13, v2, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    mul-float/2addr v12, v9

    aput v12, v10, v11

    .line 429
    const/4 v11, 0x1

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    add-int/lit8 v13, v2, 0x1

    aget v12, v12, v13

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    mul-float/2addr v12, v0

    aput v12, v10, v11

    .line 430
    const/4 v11, 0x2

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    add-int/lit8 v13, v2, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    .line 431
    const/4 v11, 0x3

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    add-int/lit8 v13, v3, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    mul-float/2addr v12, v9

    aput v12, v10, v11

    .line 432
    const/4 v11, 0x4

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    add-int/lit8 v13, v3, 0x1

    aget v12, v12, v13

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    mul-float/2addr v12, v0

    aput v12, v10, v11

    .line 433
    const/4 v11, 0x5

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    add-int/lit8 v13, v3, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    .line 434
    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 435
    add-int/lit8 v2, v2, 0x3

    .line 436
    add-int/lit8 v3, v3, 0x3

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 439
    .end local v1           #i:I
    .end local v2           #index1:I
    .end local v3           #index2:I
    :cond_1
    return-void
.end method

.method protected create()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 344
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setBackFaceVisibility(Z)V

    .line 346
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureWidth:[F

    .line 347
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureHeight:[F

    .line 348
    invoke-virtual {p0, v2, v1, v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setTextureSize(IFF)V

    .line 349
    invoke-virtual {p0, v3, v1, v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->setTextureSize(IFF)V

    .line 351
    iput v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateVertexCount:I

    .line 352
    iput v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateTexCoordCount:I

    .line 354
    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    .line 355
    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mNewBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    .line 356
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlenderChanged:Z

    .line 357
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 14
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 115
    invoke-super/range {p0 .. p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 117
    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVisible:Z

    if-eqz v10, :cond_a

    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mShouldDraw:Z

    if-eqz v10, :cond_a

    .line 119
    iget v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v5, v10, v11

    .line 121
    .local v5, reflectionOpacity:F
    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFacingFront:Z

    if-eqz v10, :cond_1

    .line 123
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mAngle:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    neg-float v7, v10

    .line 124
    .local v7, rotationX:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mAngle:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    neg-float v8, v10

    .line 125
    .local v8, rotationY:F
    const/4 v6, 0x0

    .line 127
    .local v6, rotateYFirst:Z
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v10, :cond_0

    .line 129
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v7, v10

    .line 130
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-float/2addr v8, v10

    .line 131
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-boolean v6, v10, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    .line 134
    :cond_0
    const/4 v10, 0x1

    if-ne v6, v10, :cond_5

    .line 136
    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v8, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 137
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-interface {p1, v7, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 146
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v1, v0

    .line 147
    .local v1, gl2:Lcom/nemustech/tiffany/world/TFGL;
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMatrix:[F

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 150
    .end local v1           #gl2:Lcom/nemustech/tiffany/world/TFGL;
    .end local v6           #rotateYFirst:Z
    .end local v7           #rotationX:F
    .end local v8           #rotationY:F
    :cond_1
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 151
    const/16 v10, 0xb44

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 152
    :cond_2
    const v10, 0x8074

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 153
    const v10, 0x8078

    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 155
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    const/4 v10, 0x3

    const/16 v11, 0x1406

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 157
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_a

    .line 158
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 160
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v10

    if-ge v2, v10, :cond_a

    .line 162
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10, p1, v2}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 165
    iget-boolean v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mDrawReflection:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v10, :cond_4

    .line 167
    if-nez v2, :cond_6

    const/16 v10, 0x404

    :goto_2
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 169
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mLocation:[F

    const/4 v11, 0x1

    aget v4, v10, v11

    .line 170
    .local v4, objectY:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v10, :cond_7

    .line 171
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v4, v10

    .line 175
    :cond_3
    :goto_3
    const/high16 v10, 0x4000

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    mul-float/2addr v10, v11

    sub-float v3, v10, v4

    .line 176
    .local v3, mirroredY:F
    iget v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHeight:F

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    add-float v9, v3, v10

    .line 178
    .local v9, yMax:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float v10, v4, v10

    iget v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHeight:F

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    .line 180
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 181
    const/4 v10, 0x0

    neg-float v11, v4

    const/4 v12, 0x0

    invoke-interface {p1, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 182
    const/4 v10, 0x0

    const v11, -0x457ced91

    invoke-interface {p1, v10, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 183
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mAngle:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 184
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mAngle:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 185
    const/high16 v10, 0x3f80

    const/high16 v11, -0x4080

    const/high16 v12, 0x3f80

    invoke-interface {p1, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 186
    const/high16 v10, 0x3f80

    invoke-interface {p1, v5, v5, v5, v10}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 187
    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 188
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 192
    .end local v3           #mirroredY:F
    .end local v4           #objectY:F
    .end local v9           #yMax:F
    :cond_4
    iget v10, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    if-ne v10, v2, :cond_8

    .line 193
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v12, v12, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    iget v13, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 200
    :goto_4
    if-nez v2, :cond_9

    const/16 v10, 0x405

    :goto_5
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 201
    invoke-virtual {p0, p1, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 141
    .end local v2           #i:I
    .restart local v6       #rotateYFirst:Z
    .restart local v7       #rotationX:F
    .restart local v8       #rotationY:F
    :cond_5
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-interface {p1, v7, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 142
    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v8, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto/16 :goto_0

    .line 167
    .end local v6           #rotateYFirst:Z
    .end local v7           #rotationX:F
    .end local v8           #rotationY:F
    .restart local v2       #i:I
    :cond_6
    const/16 v10, 0x405

    goto/16 :goto_2

    .line 172
    .restart local v4       #objectY:F
    :cond_7
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v10, :cond_3

    .line 173
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v10, v10, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    add-float/2addr v4, v10

    goto/16 :goto_3

    .line 198
    .end local v4           #objectY:F
    :cond_8
    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v10, v11, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_4

    .line 200
    :cond_9
    const/16 v10, 0x404

    goto :goto_5

    .line 205
    .end local v2           #i:I
    .end local v5           #reflectionOpacity:F
    :cond_a
    return-void
.end method

.method protected drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "face"

    .prologue
    .line 363
    iget v4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFaceOffset:I

    mul-int v2, p2, v4

    .line 364
    .local v2, offset:I
    iget v4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v3, v4, 0x2

    .line 365
    .local v3, row:I
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    .line 367
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 368
    const/4 v4, 0x5

    invoke-interface {p1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 369
    add-int/2addr v2, v3

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method public getBlender()Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    return-object v0
.end method

.method public getMeshHeight()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    return v0
.end method

.method public getMeshWidth()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    return v0
.end method

.method public getTexCoord()[F
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    return-object v0
.end method

.method public getVertex()[F
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    return-object v0
.end method

.method handleDrag(FFFFI)V
    .locals 0
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    .line 210
    return-void
.end method

.method protected isInEffectAnimation()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->isInEffectAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    if-eqz v0, :cond_1

    move v0, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadIdentityTexCoord([F)V
    .locals 9
    .parameter "texCoord"

    .prologue
    .line 398
    iget v4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    .line 399
    .local v4, meshW:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    .line 401
    .local v2, meshH:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 402
    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, v1

    mul-int/lit8 v3, v6, 0x2

    .line 403
    .local v3, meshIndex:I
    int-to-float v6, v1

    int-to-float v7, v2

    div-float v5, v6, v7

    .line 405
    .local v5, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v4, :cond_0

    .line 406
    add-int/lit8 v6, v3, 0x0

    int-to-float v7, v0

    int-to-float v8, v4

    div-float/2addr v7, v8

    aput v7, p1, v6

    .line 407
    add-int/lit8 v6, v3, 0x1

    aput v5, p1, v6

    .line 408
    add-int/lit8 v3, v3, 0x2

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v0           #i:I
    .end local v3           #meshIndex:I
    .end local v5           #y:F
    :cond_1
    return-void
.end method

.method public loadIdentityVertex([F)V
    .locals 9
    .parameter "vertex"

    .prologue
    .line 378
    iget v4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    .line 379
    .local v4, meshW:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    .line 381
    .local v2, meshH:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 382
    add-int/lit8 v6, v2, 0x1

    mul-int/2addr v6, v1

    mul-int/lit8 v3, v6, 0x3

    .line 383
    .local v3, meshIndex:I
    int-to-float v6, v1

    int-to-float v7, v2

    div-float v5, v6, v7

    .line 385
    .local v5, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v4, :cond_0

    .line 386
    add-int/lit8 v6, v3, 0x0

    int-to-float v7, v0

    int-to-float v8, v4

    div-float/2addr v7, v8

    aput v7, p1, v6

    .line 387
    add-int/lit8 v6, v3, 0x1

    aput v5, p1, v6

    .line 388
    add-int/lit8 v6, v3, 0x2

    const/4 v7, 0x0

    aput v7, p1, v6

    .line 389
    add-int/lit8 v3, v3, 0x3

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v0           #i:I
    .end local v3           #meshIndex:I
    .end local v5           #y:F
    :cond_1
    return-void
.end method

.method public requestUpdateTexCoord()V
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateTexCoordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateTexCoordCount:I

    .line 340
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 341
    return-void
.end method

.method public requestUpdateVertex()V
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateVertexCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateVertexCount:I

    .line 333
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 334
    return-void
.end method

.method public setSize(FFII)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "meshWidth"
    .parameter "meshHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWidth:F

    .line 276
    iput p2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHeight:F

    .line 277
    iput p3, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    .line 278
    iput p4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    .line 279
    iget v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFaceOffset:I

    .line 281
    iget v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int v1, v2, v3

    .line 282
    .local v1, vertexCount:I
    mul-int/lit8 v2, v1, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    .line 283
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshVertex:[F

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityVertex([F)V

    .line 284
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    .line 285
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshTexCoord:[F

    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityTexCoord([F)V

    .line 287
    iget v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFaceOffset:I

    mul-int/lit8 v0, v2, 0x2

    .line 288
    .local v0, arraySize:I
    mul-int/lit8 v2, v0, 0x3

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 289
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildVertexArray(I)V

    .line 290
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildVertexArray(I)V

    .line 291
    mul-int/lit8 v2, v0, 0x2

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 292
    invoke-virtual {p0, v4}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildTexCoordArray(I)V

    .line 293
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildTexCoordArray(I)V

    .line 294
    return-void
.end method

.method protected setTextureSize(IFF)V
    .locals 1
    .parameter "face"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureWidth:[F

    aput p2, v0, p1

    .line 360
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mTextureHeight:[F

    aput p3, v0, p1

    .line 361
    return-void
.end method

.method public startBlender(Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;)V
    .locals 1
    .parameter "blender"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mNewBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlenderChanged:Z

    .line 578
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 579
    return-void
.end method

.method public stopBlender()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->startBlender(Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;)V

    .line 585
    return-void
.end method

.method updateHitPoint()V
    .locals 25

    .prologue
    .line 218
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v8, v6, 0x3

    .line 221
    .local v8, hitPointOffset:I
    add-int/lit8 v10, v8, 0x4

    .line 222
    .local v10, uvtOffset:I
    add-int/lit8 v12, v10, 0x3

    .line 223
    .local v12, workOffset:I
    add-int/lit8 v6, v12, 0x20

    new-array v2, v6, [F

    .line 225
    .local v2, work:[F
    const/high16 v24, 0x7f80

    .line 227
    .local v24, tMin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v8}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshHeight:I

    move v6, v0

    move/from16 v0, v21

    move v1, v6

    if-ge v0, v1, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int v6, v6, v21

    mul-int/lit8 v23, v6, 0x2

    .line 233
    .local v23, row:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMeshWidth:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move/from16 v0, v22

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 234
    add-int v6, v23, v22

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v3, v6, 0x3

    .line 235
    .local v3, a:I
    add-int v6, v23, v22

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v4, v6, 0x3

    .line 236
    .local v4, b:I
    add-int v6, v23, v22

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v5, v6, 0x3

    .line 237
    .local v5, c:I
    rem-int/lit8 v6, v22, 0x2

    if-eqz v6, :cond_0

    .line 239
    move/from16 v19, v4

    .line 240
    .local v19, d:I
    move v4, v5

    .line 241
    move/from16 v5, v19

    .line 243
    .end local v19           #d:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitTestLine:[F

    move-object v6, v0

    move-object v7, v2

    move-object v9, v2

    move-object v11, v2

    invoke-static/range {v2 .. v12}, Lcom/nemustech/tiffany/world/TFModel;->doHitTestVertexTrigangle([FIII[F[FI[FI[FI)I

    move-result v20

    .line 249
    .local v20, hit:I
    if-ltz v20, :cond_1

    add-int/lit8 v6, v10, 0x2

    aget v6, v2, v6

    cmpl-float v6, v24, v6

    if-ltz v6, :cond_1

    .line 250
    add-int/lit8 v6, v10, 0x2

    aget v24, v2, v6

    .line 251
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitFace:I

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitPoint:[F

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 231
    .end local v3           #a:I
    .end local v4           #b:I
    .end local v5           #c:I
    .end local v20           #hit:I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 256
    .end local v22           #j:I
    .end local v23           #row:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitFace:I

    move v6, v0

    if-ltz v6, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitPoint:[F

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitPoint:[F

    move-object v13, v0

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mMatrix:[F

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mHitPoint:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 261
    :cond_4
    return-void
.end method

.method protected updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z
    .locals 5
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, updated:Z
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 99
    :goto_0
    return v1

    .line 58
    :cond_0
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlenderChanged:Z

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;->onEnd()V

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mNewBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    .line 62
    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mNewBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    .line 63
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlenderChanged:Z

    .line 64
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;->onStart()V

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    invoke-virtual {v1, p2}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;->onFrame(I)V

    .line 69
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;->onEnd()V

    .line 71
    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mBlender:Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;

    .line 75
    :cond_3
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateVertexCount:I

    if-lez v1, :cond_4

    .line 76
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildVertexArray(I)V

    .line 77
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildVertexArray(I)V

    .line 78
    iput v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateVertexCount:I

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_4
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateTexCoordCount:I

    if-lez v1, :cond_5

    .line 82
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildTexCoordArray(I)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFCustomPanel;->buildTexCoordArray(I)V

    .line 84
    iput v2, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mRequestUpdateTexCoordCount:I

    .line 85
    const/4 v0, 0x1

    .line 88
    :cond_5
    if-eqz v0, :cond_6

    .line 89
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 91
    :cond_6
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->isInEffectAnimation()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    iput v3, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mEffectStatus:I

    .line 93
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    :cond_7
    :goto_1
    move v1, v3

    .line 99
    goto :goto_0

    .line 96
    :cond_8
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mEffectStatus:I

    if-ne v1, v3, :cond_7

    .line 97
    const/4 v1, 0x2

    iput v1, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mEffectStatus:I

    goto :goto_1
.end method
