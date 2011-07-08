.class public Lcom/nemustech/tiffany/world/TFCircle;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFCircle.java"


# static fields
.field protected static final N:I = 0x20

.field static final TAG:Ljava/lang/String; = "TFCircle"


# instance fields
.field private mImageOrientation:[I

.field private mReverseWay:[I

.field private mTexRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 23
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 24
    invoke-direct {p0, v0, v0}, Lcom/nemustech/tiffany/world/TFCircle;->create(FF)V

    .line 25
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
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFCircle;->create(FF)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFHolder;FF)V
    .locals 0
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 59
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFCircle;->create(FF)V

    .line 60
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V
    .locals 0
    .parameter "world"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/nemustech/tiffany/world/TFCircle;->create(FF)V

    .line 47
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 48
    return-void
.end method

.method private create(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x2

    .line 64
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mImageOrientation:[I

    .line 65
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mReverseWay:[I

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFCircle;->setSize(FF)V

    .line 67
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/nemustech/tiffany/world/TFModel;->setBackFaceVisibility(Z)V

    .line 68
    return-void
.end method

.method private fillTexCoord(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "texCoord"

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFCircle;->fillTexCoord(Ljava/nio/FloatBuffer;I)V

    .line 335
    return-void
.end method

.method private fillTexCoord(Ljava/nio/FloatBuffer;I)V
    .locals 14
    .parameter "texCoord"
    .parameter "direction"

    .prologue
    .line 338
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    if-nez v9, :cond_0

    .line 339
    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    .line 340
    :cond_0
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 341
    .local v0, centerX:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x4000

    div-float v4, v9, v10

    .line 342
    .local v4, radiusX:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 343
    .local v1, centerY:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/high16 v10, 0x4000

    div-float v5, v9, v10

    .line 346
    .local v5, radiusY:F
    packed-switch p2, :pswitch_data_0

    .line 349
    const/4 v6, 0x0

    .line 362
    .local v6, rotate:F
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 365
    const/high16 v9, 0x4000

    mul-float/2addr v9, v1

    sub-float/2addr v9, v1

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 366
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v9, 0x20

    if-gt v2, v9, :cond_1

    .line 367
    mul-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    const v10, 0x40490fdb

    mul-float/2addr v9, v10

    const/high16 v10, 0x4200

    div-float/2addr v9, v10

    add-float v3, v9, v6

    .line 368
    .local v3, rad:F
    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v7, v4, v9

    .line 369
    .local v7, x:F
    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v8, v5, v9

    .line 371
    .local v8, y:F
    add-float/2addr v7, v0

    .line 372
    const/high16 v9, 0x4000

    mul-float/2addr v9, v1

    add-float v10, v8, v1

    sub-float v8, v9, v10

    .line 373
    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 374
    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v2           #i:I
    .end local v3           #rad:F
    .end local v6           #rotate:F
    .end local v7           #x:F
    .end local v8           #y:F
    :pswitch_0
    const v6, 0x3fc90fdb

    .line 353
    .restart local v6       #rotate:F
    goto :goto_0

    .line 355
    .end local v6           #rotate:F
    :pswitch_1
    const v6, -0x4036f025

    .line 356
    .restart local v6       #rotate:F
    goto :goto_0

    .line 358
    .end local v6           #rotate:F
    :pswitch_2
    const v6, 0x40490fdb

    .restart local v6       #rotate:F
    goto :goto_0

    .line 377
    .restart local v2       #i:I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/16 v9, 0x21

    if-gt v2, v9, :cond_2

    .line 378
    const/high16 v9, 0x4000

    mul-float/2addr v9, v0

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x0

    invoke-virtual {p1, v10}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 379
    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 381
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 382
    return-void

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fillVertex(Ljava/nio/FloatBuffer;)V
    .locals 10
    .parameter "vertex"

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x4000

    const/4 v8, 0x0

    .line 308
    iget v6, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWidth:F

    div-float v2, v6, v7

    .line 309
    .local v2, radiusX:F
    iget v6, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHeight:F

    div-float v3, v6, v7

    .line 311
    .local v3, radiusY:F
    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 314
    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 315
    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v6, 0x20

    if-gt v0, v6, :cond_0

    .line 317
    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    const v7, 0x40490fdb

    mul-float/2addr v6, v7

    const/high16 v7, 0x4200

    div-float v1, v6, v7

    .line 318
    .local v1, rad:F
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v4, v2, v6

    .line 319
    .local v4, x:F
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v5, v3, v6

    .line 321
    .local v5, y:F
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 322
    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 323
    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v1           #rad:F
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0x21

    if-gt v0, v6, :cond_1

    .line 327
    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 328
    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 329
    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 332
    return-void
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 4
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 136
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 137
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 138
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 140
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0}, Lcom/nemustech/tiffany/world/TFCircle;->fillTexCoord(Ljava/nio/FloatBuffer;)V

    .line 142
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mImageOrientation:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2, v0}, Lcom/nemustech/tiffany/world/TFCircle;->setImageDirection(II)V

    .line 143
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mReverseWay:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2, v0}, Lcom/nemustech/tiffany/world/TFCircle;->reverseImage(II)V

    .line 144
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 13
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 177
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-eqz v9, :cond_a

    .line 179
    iget v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v5, v9, v10

    .line 181
    .local v5, reflectionOpacity:F
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mFacingFront:Z

    if-eqz v9, :cond_1

    .line 183
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mAngle:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    neg-float v7, v9

    .line 184
    .local v7, rotationX:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    neg-float v8, v9

    .line 185
    .local v8, rotationY:F
    const/4 v6, 0x0

    .line 187
    .local v6, rotateYFirst:Z
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v9, :cond_0

    .line 189
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v7, v9

    .line 190
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    .line 191
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-boolean v6, v9, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    .line 194
    :cond_0
    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    .line 196
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 197
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v7, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 206
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v1, v0

    .line 207
    .local v1, gl2:Lcom/nemustech/tiffany/world/TFGL;
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mMatrix:[F

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 210
    .end local v1           #gl2:Lcom/nemustech/tiffany/world/TFGL;
    .end local v6           #rotateYFirst:Z
    .end local v7           #rotationX:F
    .end local v8           #rotationY:F
    :cond_1
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 211
    const/16 v9, 0xb44

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 212
    :cond_2
    const v9, 0x8074

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 213
    const v9, 0x8078

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 215
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCircle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 216
    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 218
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 220
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v9, p1, v2}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 223
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, v9, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v9, :cond_4

    .line 225
    if-nez v2, :cond_6

    const/16 v9, 0x404

    :goto_2
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 227
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mLocation:[F

    const/4 v10, 0x1

    aget v4, v9, v10

    .line 229
    .local v4, objectY:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v9, :cond_7

    .line 230
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v4, v9

    .line 234
    :cond_3
    :goto_3
    iget v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHeight:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v9, v4, v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float v3, v9, v10

    .line 236
    .local v3, mirrorY:F
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHeight:F

    cmpg-float v9, v3, v9

    if-gez v9, :cond_4

    .line 238
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 239
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    neg-float v9, v9

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 240
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mAngle:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    neg-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 241
    const/4 v9, 0x0

    const/high16 v10, 0x4000

    mul-float/2addr v10, v3

    iget v11, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHeight:F

    add-float/2addr v10, v11

    neg-float v10, v10

    const v11, -0x457ced91

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 242
    const/high16 v9, 0x3f80

    const/high16 v10, -0x4080

    const/high16 v11, 0x3f80

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 243
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 244
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mAngle:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 245
    const/high16 v9, 0x3f80

    invoke-interface {p1, v5, v5, v5, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 246
    const/4 v9, 0x6

    mul-int/lit8 v10, v2, 0x22

    const/16 v11, 0x22

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 247
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 252
    .end local v3           #mirrorY:F
    .end local v4           #objectY:F
    :cond_4
    iget v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    if-ne v9, v2, :cond_8

    .line 253
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v9, v9, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    iget v12, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 260
    :goto_4
    if-nez v2, :cond_9

    const/16 v9, 0x405

    :goto_5
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 261
    const/4 v9, 0x6

    mul-int/lit8 v10, v2, 0x22

    const/16 v11, 0x22

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 201
    .end local v2           #i:I
    .restart local v6       #rotateYFirst:Z
    .restart local v7       #rotationX:F
    .restart local v8       #rotationY:F
    :cond_5
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v7, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 202
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto/16 :goto_0

    .line 225
    .end local v6           #rotateYFirst:Z
    .end local v7           #rotationX:F
    .end local v8           #rotationY:F
    .restart local v2       #i:I
    :cond_6
    const/16 v9, 0x405

    goto/16 :goto_2

    .line 231
    .restart local v4       #objectY:F
    :cond_7
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v9, :cond_3

    .line 232
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFCircle;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v4, v9

    goto/16 :goto_3

    .line 258
    .end local v4           #objectY:F
    :cond_8
    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_4

    .line 260
    :cond_9
    const/16 v9, 0x404

    goto :goto_5

    .line 264
    .end local v2           #i:I
    .end local v5           #reflectionOpacity:F
    :cond_a
    return-void
.end method

.method handleDrag(FFFFI)V
    .locals 0
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    .line 269
    return-void
.end method

.method public reverseImage(II)V
    .locals 9
    .parameter "index"
    .parameter "reverseWay"

    .prologue
    .line 96
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mReverseWay:[I

    aput p2, v5, p1

    .line 98
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 99
    .local v0, centerX:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTexRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 100
    .local v1, centerY:F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v3, v5, 0x2

    .line 101
    .local v3, len:I
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int v4, p1, v5

    .line 104
    .local v4, offset:I
    packed-switch p2, :pswitch_data_0

    .line 128
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 108
    :pswitch_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 109
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x0

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    sub-float v7, v0, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2           #i:I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 115
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    sub-float v7, v0, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    .end local v2           #i:I
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 121
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x0

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    sub-float v7, v0, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 123
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    sub-float v7, v1, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 130
    .end local v2           #i:I
    :cond_0
    :pswitch_3
    return-void

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImageDirection(II)V
    .locals 1
    .parameter "index"
    .parameter "direction"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mImageOrientation:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mImageOrientation:[I

    aput p2, v0, p1

    .line 84
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, p2}, Lcom/nemustech/tiffany/world/TFCircle;->fillTexCoord(Ljava/nio/FloatBuffer;I)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 152
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWidth:F

    .line 153
    iput p2, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHeight:F

    .line 154
    const/4 v3, 0x0

    iput v3, p0, Lcom/nemustech/tiffany/world/TFCircle;->mDepth:F

    .line 157
    const/16 v0, 0x44

    .line 158
    .local v0, bufSize:I
    mul-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 161
    .local v2, vertex:Ljava/nio/FloatBuffer;
    invoke-direct {p0, v2}, Lcom/nemustech/tiffany/world/TFCircle;->fillVertex(Ljava/nio/FloatBuffer;)V

    .line 162
    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFCircle;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 164
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 167
    .local v1, texCoord:Ljava/nio/FloatBuffer;
    invoke-direct {p0, v1}, Lcom/nemustech/tiffany/world/TFCircle;->fillTexCoord(Ljava/nio/FloatBuffer;)V

    .line 168
    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 169
    return-void
.end method

.method updateHitPoint()V
    .locals 13

    .prologue
    .line 277
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 279
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitPoint:[F

    .line 280
    .local v0, m:[F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitTestLine:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitTestLine:[F

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFVector3D;->getPointOnLine([FI[FI[FIFI)F

    .line 283
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mWidth:F

    const/high16 v2, 0x4000

    div-float v8, v1, v2

    .line 284
    .local v8, A:F
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHeight:F

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 285
    .local v9, B:F
    const/4 v1, 0x0

    aget v11, v0, v1

    .line 286
    .local v11, x:F
    const/4 v1, 0x1

    aget v12, v0, v1

    .line 288
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

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    mul-float v1, v11, v11

    mul-float v2, v8, v8

    div-float/2addr v1, v2

    mul-float v2, v12, v12

    mul-float v3, v9, v9

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 293
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 294
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCircle;->mMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 296
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitTestLine:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitTestLine:[F

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFVector3D;->dotWithAxis([FI[FII)F

    move-result v10

    .line 298
    .local v10, dot:F
    const/4 v1, 0x0

    iput v1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitFace:I

    .line 299
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    .line 300
    const/4 v1, 0x1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFCircle;->mHitFace:I

    goto :goto_0
.end method
