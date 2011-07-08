.class public Lcom/nemustech/tiffany/world/TFCube;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFCube.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TFCube"

.field private static mMirrorY:F

.field private static mObjectY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p1}, Lcom/nemustech/tiffany/world/TFCube;-><init>(FFF)V

    .line 48
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFCube;->setBackFaceVisibility(Z)V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFCube;->setSize(FFF)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V
    .locals 0
    .parameter "world"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/nemustech/tiffany/world/TFCube;-><init>(Lcom/nemustech/tiffany/world/TFWorld;FFF)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FFF)V
    .locals 0
    .parameter "world"
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    .line 58
    invoke-direct {p0, p2, p3, p4}, Lcom/nemustech/tiffany/world/TFCube;-><init>(FFF)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFCube;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 60
    return-void
.end method

.method private prvEffectLookFront(I)V
    .locals 8
    .parameter "selectedIndex"

    .prologue
    const/high16 v7, 0x4334

    const/high16 v6, 0x4387

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 296
    const v0, 0x3e8fdf3b

    .line 297
    .local v0, rotationSpeed:F
    const/4 v2, 0x3

    new-array v1, v2, [F

    .line 299
    .local v1, targetAngle:[F
    packed-switch p1, :pswitch_data_0

    .line 303
    aput v3, v1, v4

    .line 304
    aput v3, v1, v5

    .line 305
    const/4 v2, 0x2

    aput v3, v1, v2

    .line 329
    :goto_0
    aget v2, v1, v4

    aget v3, v1, v5

    const v4, 0x3e8fdf3b

    const/4 v5, 0x2

    invoke-super {p0, v2, v3, v4, v5}, Lcom/nemustech/tiffany/world/TFModel;->rotate(FFFI)V

    .line 330
    return-void

    .line 308
    :pswitch_0
    aput v7, v1, v4

    .line 309
    aput v3, v1, v5

    goto :goto_0

    .line 312
    :pswitch_1
    const/high16 v2, 0x42b4

    aput v2, v1, v4

    .line 313
    aput v3, v1, v5

    goto :goto_0

    .line 316
    :pswitch_2
    aput v6, v1, v4

    .line 317
    aput v3, v1, v5

    goto :goto_0

    .line 320
    :pswitch_3
    aput v7, v1, v4

    .line 321
    aput v6, v1, v5

    goto :goto_0

    .line 324
    :pswitch_4
    aput v3, v1, v4

    .line 325
    aput v6, v1, v5

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 7
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, newLeft:F
    const/4 v3, 0x0

    .line 110
    .local v3, newTop:F
    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    int-to-float v6, p3

    div-float v2, v5, v6

    .line 111
    .local v2, newRight:F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    int-to-float v6, p4

    div-float v0, v5, v6

    .line 112
    .local v0, newBottom:F
    const/16 v5, 0x8

    new-array v4, v5, [F

    .line 114
    .local v4, texCoords:[F
    packed-switch p2, :pswitch_data_0

    .line 159
    :goto_0
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, p2, 0x8

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 162
    return-void

    .line 116
    :pswitch_0
    const/4 v5, 0x0

    aput v1, v4, v5

    .line 117
    const/4 v5, 0x1

    aput v0, v4, v5

    .line 118
    const/4 v5, 0x2

    aput v2, v4, v5

    .line 119
    const/4 v5, 0x3

    aput v0, v4, v5

    .line 120
    const/4 v5, 0x4

    aput v1, v4, v5

    .line 121
    const/4 v5, 0x5

    aput v3, v4, v5

    .line 122
    const/4 v5, 0x6

    aput v2, v4, v5

    .line 123
    const/4 v5, 0x7

    aput v3, v4, v5

    goto :goto_0

    .line 128
    :pswitch_1
    const/4 v5, 0x0

    aput v2, v4, v5

    .line 129
    const/4 v5, 0x1

    aput v0, v4, v5

    .line 130
    const/4 v5, 0x2

    aput v2, v4, v5

    .line 131
    const/4 v5, 0x3

    aput v3, v4, v5

    .line 132
    const/4 v5, 0x4

    aput v1, v4, v5

    .line 133
    const/4 v5, 0x5

    aput v0, v4, v5

    .line 134
    const/4 v5, 0x6

    aput v1, v4, v5

    .line 135
    const/4 v5, 0x7

    aput v3, v4, v5

    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v5, 0x0

    aput v2, v4, v5

    .line 139
    const/4 v5, 0x1

    aput v3, v4, v5

    .line 140
    const/4 v5, 0x2

    aput v1, v4, v5

    .line 141
    const/4 v5, 0x3

    aput v3, v4, v5

    .line 142
    const/4 v5, 0x4

    aput v2, v4, v5

    .line 143
    const/4 v5, 0x5

    aput v0, v4, v5

    .line 144
    const/4 v5, 0x6

    aput v1, v4, v5

    .line 145
    const/4 v5, 0x7

    aput v0, v4, v5

    goto :goto_0

    .line 148
    :pswitch_3
    const/4 v5, 0x0

    aput v1, v4, v5

    .line 149
    const/4 v5, 0x1

    aput v3, v4, v5

    .line 150
    const/4 v5, 0x2

    aput v1, v4, v5

    .line 151
    const/4 v5, 0x3

    aput v0, v4, v5

    .line 152
    const/4 v5, 0x4

    aput v2, v4, v5

    .line 153
    const/4 v5, 0x5

    aput v3, v4, v5

    .line 154
    const/4 v5, 0x6

    aput v2, v4, v5

    .line 155
    const/4 v5, 0x7

    aput v0, v4, v5

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 10
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 366
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 368
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-eqz v2, :cond_5

    .line 370
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 371
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 373
    iget v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v5, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 374
    const/4 v2, 0x3

    const/16 v3, 0x1406

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 375
    const/4 v2, 0x2

    const/16 v3, 0x1406

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v2, p1, v0}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 381
    iget v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    if-ne v2, v0, :cond_0

    .line 382
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 394
    :goto_1
    const/4 v2, 0x5

    mul-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWorld;->isBlendingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    iget v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v5, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_1

    .line 391
    :cond_1
    iget v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_1

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v2, :cond_5

    .line 399
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 400
    const/16 v2, 0x404

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 402
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mLocation:[F

    aget v2, v2, v7

    sput v2, Lcom/nemustech/tiffany/world/TFCube;->mObjectY:F

    .line 404
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v2, :cond_4

    .line 405
    sget v2, Lcom/nemustech/tiffany/world/TFCube;->mObjectY:F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    aget v3, v3, v7

    add-float/2addr v2, v3

    sput v2, Lcom/nemustech/tiffany/world/TFCube;->mObjectY:F

    .line 409
    :cond_3
    :goto_2
    sget v2, Lcom/nemustech/tiffany/world/TFCube;->mObjectY:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mHeight:F

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float/2addr v2, v3

    sput v2, Lcom/nemustech/tiffany/world/TFCube;->mMirrorY:F

    .line 411
    sget v2, Lcom/nemustech/tiffany/world/TFCube;->mMirrorY:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_5

    sget v2, Lcom/nemustech/tiffany/world/TFCube;->mMirrorY:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 413
    iget v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v1, v2, v3

    .line 414
    .local v1, reflectionOpacity:F
    invoke-interface {p1, v1, v1, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 415
    sget v2, Lcom/nemustech/tiffany/world/TFCube;->mMirrorY:F

    mul-float/2addr v2, v9

    iget v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mHeight:F

    add-float/2addr v2, v3

    neg-float v2, v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mLocation:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const v4, 0x3a83126f

    sub-float/2addr v3, v4

    invoke-interface {p1, v6, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 416
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mAngle:[F

    aget v2, v2, v8

    invoke-interface {p1, v2, v6, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 417
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mAngle:[F

    aget v2, v2, v7

    neg-float v2, v2

    invoke-interface {p1, v2, v5, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 418
    const/high16 v2, -0x4080

    invoke-interface {p1, v5, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 420
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_5

    .line 422
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v2, p1, v0}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 423
    const/4 v2, 0x5

    mul-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 406
    .end local v1           #reflectionOpacity:F
    :cond_4
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v2, :cond_3

    .line 407
    sget v2, Lcom/nemustech/tiffany/world/TFCube;->mObjectY:F

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFCube;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    aget v3, v3, v7

    add-float/2addr v2, v3

    sput v2, Lcom/nemustech/tiffany/world/TFCube;->mObjectY:F

    goto :goto_2

    .line 428
    .end local v0           #i:I
    :cond_5
    return-void
.end method

.method getHitFace([F)I
    .locals 2
    .parameter "near"

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->getHitFace([F)I

    move-result v0

    .line 497
    .local v0, face:I
    if-gez v0, :cond_0

    move v1, v0

    .line 499
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFCube;->mHitFace:I

    goto :goto_0
.end method

.method handleDrag(FFFFI)V
    .locals 18
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    .line 239
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/world/TFModel;->handleDrag(FFFFI)V

    .line 241
    const/4 v5, 0x4

    .line 242
    .local v5, VERTEX_NUM_OF_POLYGON:I
    const/16 v15, 0x8

    new-array v14, v15, [F

    .line 243
    .local v14, vertices:[F
    const/4 v15, 0x1

    new-array v13, v15, [F

    .line 245
    .local v13, near:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v15, v0

    iget-object v15, v15, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFRenderer;->getSelectedFaceIndex(Lcom/nemustech/tiffany/world/TFModel;FF[F)I

    move-result v8

    .line 246
    .local v8, face_index:I
    if-ltz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v15, v0

    iget-object v15, v15, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v8

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFRenderer;->getFaceVertices(Lcom/nemustech/tiffany/world/TFModel;I[F)V

    .line 248
    :cond_0
    const/4 v11, 0x0

    .line 249
    .local v11, max:F
    const/4 v15, 0x0

    aget v15, v14, v15

    const/16 v16, 0x2

    aget v16, v14, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 250
    const/4 v15, 0x4

    aget v15, v14, v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 251
    const/4 v15, 0x6

    aget v15, v14, v15

    invoke-static {v11, v15}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 253
    const/4 v12, 0x0

    .line 254
    .local v12, min:F
    const/4 v15, 0x0

    aget v15, v14, v15

    const/16 v16, 0x2

    aget v16, v14, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 255
    const/4 v15, 0x4

    aget v15, v14, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 256
    const/4 v15, 0x6

    aget v15, v14, v15

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 258
    sub-float v15, v11, v12

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float v7, v12, v15

    .line 263
    .local v7, base:F
    const/4 v6, 0x0

    .line 265
    .local v6, bSpinUpward:Z
    const/4 v15, 0x2

    if-eq v8, v15, :cond_1

    const/4 v15, 0x3

    if-ne v8, v15, :cond_4

    .line 266
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mAngle:[F

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    const/high16 v16, 0x4334

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mAngle:[F

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    const/high16 v16, 0x43b4

    cmpg-float v15, v15, v16

    if-gez v15, :cond_3

    .line 267
    cmpg-float v15, p1, v7

    if-gtz v15, :cond_2

    .line 268
    const/4 v6, 0x1

    .line 280
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mForceFromSide:F

    move v15, v0

    const/high16 v16, 0x40a0

    mul-float v9, v15, v16

    .line 281
    .local v9, forceX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mForceFromHead:F

    move v15, v0

    const/high16 v16, 0x40a0

    mul-float v10, v15, v16

    .line 283
    .local v10, forceY:F
    if-eqz v6, :cond_6

    move v15, v10

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFCube;->spin(FFFZ)V

    .line 284
    return-void

    .line 272
    .end local v9           #forceX:F
    .end local v10           #forceY:F
    :cond_3
    cmpl-float v15, p1, v7

    if-ltz v15, :cond_2

    .line 273
    const/4 v6, 0x1

    goto :goto_0

    .line 276
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mAngle:[F

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    const/high16 v16, 0x42b4

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mAngle:[F

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    const/high16 v16, 0x4387

    cmpl-float v15, v15, v16

    if-lez v15, :cond_2

    .line 277
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .line 283
    .restart local v9       #forceX:F
    .restart local v10       #forceY:F
    :cond_6
    neg-float v15, v10

    goto :goto_1
.end method

.method public setImageResource(Landroid/content/res/Resources;[I)Lcom/nemustech/tiffany/world/TFError;
    .locals 3
    .parameter "resources"
    .parameter "resource_id"

    .prologue
    .line 75
    array-length v1, p2

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/nemustech/tiffany/world/TFError;->INVALID_PARAM:Lcom/nemustech/tiffany/world/TFError;

    .line 80
    :goto_0
    return-object v1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 78
    aget v1, p2, v0

    invoke-super {p0, v0, p1, v1}, Lcom/nemustech/tiffany/world/TFModel;->setImageResource(ILandroid/content/res/Resources;I)Lcom/nemustech/tiffany/world/TFError;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    sget-object v1, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    goto :goto_0
.end method

.method public setImageResource([Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/nemustech/tiffany/world/TFError;
    .locals 3
    .parameter "bmp"
    .parameter "rectSet"

    .prologue
    .line 96
    array-length v1, p1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/nemustech/tiffany/world/TFError;->INVALID_PARAM:Lcom/nemustech/tiffany/world/TFError;

    .line 101
    :goto_0
    return-object v1

    .line 98
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFCube;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    aget-object v2, p1, v0

    invoke-virtual {v1, v0, v2, p2}, Lcom/nemustech/tiffany/world/TFTextures;->setBitmapResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_1
    sget-object v1, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    goto :goto_0
.end method

.method public setSize(FFF)V
    .locals 11
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x0

    const/high16 v7, 0x4000

    .line 174
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCube;->mWidth:F

    .line 175
    iput p2, p0, Lcom/nemustech/tiffany/world/TFCube;->mHeight:F

    .line 176
    iput p3, p0, Lcom/nemustech/tiffany/world/TFCube;->mDepth:F

    .line 178
    div-float v6, p1, v7

    .line 179
    .local v6, w:F
    div-float v1, p2, v7

    .line 180
    .local v1, h:F
    div-float v0, p3, v7

    .line 181
    .local v0, d:F
    const/16 v7, 0x48

    new-array v5, v7, [F

    neg-float v7, v6

    aput v7, v5, v9

    const/4 v7, 0x1

    neg-float v8, v1

    aput v8, v5, v7

    const/4 v7, 0x2

    aput v0, v5, v7

    const/4 v7, 0x3

    aput v6, v5, v7

    const/4 v7, 0x4

    neg-float v8, v1

    aput v8, v5, v7

    const/4 v7, 0x5

    aput v0, v5, v7

    const/4 v7, 0x6

    neg-float v8, v6

    aput v8, v5, v7

    const/4 v7, 0x7

    aput v1, v5, v7

    const/16 v7, 0x8

    aput v0, v5, v7

    const/16 v7, 0x9

    aput v6, v5, v7

    const/16 v7, 0xa

    aput v1, v5, v7

    const/16 v7, 0xb

    aput v0, v5, v7

    const/16 v7, 0xc

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0xd

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0xe

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0xf

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x10

    aput v1, v5, v7

    const/16 v7, 0x11

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x12

    aput v6, v5, v7

    const/16 v7, 0x13

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x14

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x15

    aput v6, v5, v7

    const/16 v7, 0x16

    aput v1, v5, v7

    const/16 v7, 0x17

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x18

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x19

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x1a

    aput v0, v5, v7

    const/16 v7, 0x1b

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x1c

    aput v1, v5, v7

    const/16 v7, 0x1d

    aput v0, v5, v7

    const/16 v7, 0x1e

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x1f

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x20

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x21

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x22

    aput v1, v5, v7

    const/16 v7, 0x23

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x24

    aput v6, v5, v7

    const/16 v7, 0x25

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x26

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x27

    aput v6, v5, v7

    const/16 v7, 0x28

    aput v1, v5, v7

    const/16 v7, 0x29

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x2a

    aput v6, v5, v7

    const/16 v7, 0x2b

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x2c

    aput v0, v5, v7

    const/16 v7, 0x2d

    aput v6, v5, v7

    const/16 v7, 0x2e

    aput v1, v5, v7

    const/16 v7, 0x2f

    aput v0, v5, v7

    neg-float v7, v6

    aput v7, v5, v10

    const/16 v7, 0x31

    aput v1, v5, v7

    const/16 v7, 0x32

    aput v0, v5, v7

    const/16 v7, 0x33

    aput v6, v5, v7

    const/16 v7, 0x34

    aput v1, v5, v7

    const/16 v7, 0x35

    aput v0, v5, v7

    const/16 v7, 0x36

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x37

    aput v1, v5, v7

    const/16 v7, 0x38

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x39

    aput v6, v5, v7

    const/16 v7, 0x3a

    aput v1, v5, v7

    const/16 v7, 0x3b

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x3c

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x3d

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x3e

    aput v0, v5, v7

    const/16 v7, 0x3f

    neg-float v8, v6

    aput v8, v5, v7

    const/16 v7, 0x40

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x41

    neg-float v8, v0

    aput v8, v5, v7

    const/16 v7, 0x42

    aput v6, v5, v7

    const/16 v7, 0x43

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x44

    aput v0, v5, v7

    const/16 v7, 0x45

    aput v6, v5, v7

    const/16 v7, 0x46

    neg-float v8, v1

    aput v8, v5, v7

    const/16 v7, 0x47

    neg-float v8, v0

    aput v8, v5, v7

    .line 201
    .local v5, vertices:[F
    new-array v3, v10, [F

    fill-array-data v3, :array_0

    .line 221
    .local v3, texCoords:[F
    array-length v7, v5

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 222
    .local v4, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 224
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 225
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 229
    .local v2, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 231
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 232
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    return-void

    .line 201
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
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setWeight(F)V
    .locals 2
    .parameter "weight"

    .prologue
    .line 289
    const/high16 v0, 0x4000

    div-float v0, p1, v0

    invoke-super {p0, v0}, Lcom/nemustech/tiffany/world/TFModel;->setWeight(F)V

    .line 290
    iget v0, p0, Lcom/nemustech/tiffany/world/TFCube;->mRotationResistency:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCube;->mRotationResistency:F

    .line 291
    return-void
.end method

.method public showEffect(II)V
    .locals 8
    .parameter "effectID"
    .parameter "targetIndex"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41c8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 336
    packed-switch p1, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 340
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/nemustech/tiffany/world/TFCube;->prvEffectLookFront(I)V

    .line 341
    invoke-super {p0, v4}, Lcom/nemustech/tiffany/world/TFModel;->waitEffectFinish(I)V

    .line 342
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCube;->mLocation:[F

    aget v0, v0, v4

    const v1, 0x3fcccccd

    const v2, 0x3c23d70a

    invoke-super {p0, v0, v5, v1, v2}, Lcom/nemustech/tiffany/world/TFModel;->move(FFFF)V

    .line 343
    invoke-super {p0, v4}, Lcom/nemustech/tiffany/world/TFModel;->waitEffectFinish(I)V

    .line 344
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->onFinishEffect()V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCube;->mLocation:[F

    aget v0, v0, v4

    const/high16 v1, 0x4080

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFCube;->mLocation:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x4120

    sub-float/2addr v2, v3

    const v3, 0x3c75c28f

    invoke-super {p0, v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFModel;->move(FFFF)V

    .line 348
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mRotationVelocity:[F

    aput v6, v0, v7

    .line 349
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mRotationVelocity:[F

    aput v6, v0, v4

    .line 350
    invoke-super {p0, v4}, Lcom/nemustech/tiffany/world/TFModel;->waitEffectFinish(I)V

    .line 351
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mRotationVelocity:[F

    aput v5, v0, v7

    .line 352
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mRotationVelocity:[F

    aput v5, v0, v4

    .line 353
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->onFinishEffect()V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateHitPoint()V
    .locals 22

    .prologue
    .line 436
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mWidth:F

    move v3, v0

    const/high16 v4, 0x4000

    div-float v16, v3, v4

    .line 439
    .local v16, xCoord:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mHeight:F

    move v3, v0

    const/high16 v4, 0x4000

    div-float v18, v3, v4

    .line 440
    .local v18, yCoord:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mDepth:F

    move v3, v0

    const/high16 v4, 0x4000

    div-float v20, v3, v4

    .line 441
    .local v20, zCoord:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mHitPoint:[F

    move-object v2, v0

    .line 443
    .local v2, m:[F
    const/4 v3, 0x6

    new-array v11, v3, [F

    const/4 v3, 0x0

    aput v20, v11, v3

    const/4 v3, 0x1

    move/from16 v0, v20

    neg-float v0, v0

    move v4, v0

    aput v4, v11, v3

    const/4 v3, 0x2

    move/from16 v0, v16

    neg-float v0, v0

    move v4, v0

    aput v4, v11, v3

    const/4 v3, 0x3

    aput v16, v11, v3

    const/4 v3, 0x4

    aput v18, v11, v3

    const/4 v3, 0x5

    move/from16 v0, v18

    neg-float v0, v0

    move v4, v0

    aput v4, v11, v3

    .line 451
    .local v11, hitTestCoord:[F
    const/4 v3, 0x6

    new-array v12, v3, [I

    fill-array-data v12, :array_0

    .line 460
    .local v12, hitTestPlane:[I
    const/high16 v15, 0x42c8

    .line 462
    .local v15, tMin:F
    const/4 v10, -0x1

    .line 463
    .local v10, face:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v3, v11

    if-ge v13, v3, :cond_8

    .line 464
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mHitTestLine:[F

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mHitTestLine:[F

    move-object v6, v0

    const/4 v7, 0x4

    aget v8, v11, v13

    aget v9, v12, v13

    invoke-static/range {v2 .. v9}, Lcom/nemustech/tiffany/world/TFVector3D;->getPointOnLine([FI[FI[FIFI)F

    move-result v14

    .line 469
    .local v14, t:F
    aget v3, v12, v13

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget v3, v2, v3

    move/from16 v0, v16

    neg-float v0, v0

    move v4, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    const/4 v3, 0x0

    aget v3, v2, v3

    cmpg-float v3, v3, v16

    if-gtz v3, :cond_4

    :cond_0
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 471
    .local v17, xRange:Z
    :goto_1
    aget v3, v12, v13

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    aget v3, v2, v3

    move/from16 v0, v18

    neg-float v0, v0

    move v4, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    const/4 v3, 0x1

    aget v3, v2, v3

    cmpg-float v3, v3, v18

    if-gtz v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    move/from16 v19, v3

    .line 473
    .local v19, yRange:Z
    :goto_2
    aget v3, v12, v13

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v3, 0x2

    aget v3, v2, v3

    move/from16 v0, v20

    neg-float v0, v0

    move v4, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    const/4 v3, 0x2

    aget v3, v2, v3

    cmpg-float v3, v3, v20

    if-gtz v3, :cond_6

    :cond_2
    const/4 v3, 0x1

    move/from16 v21, v3

    .line 475
    .local v21, zRange:Z
    :goto_3
    if-eqz v17, :cond_3

    if-eqz v19, :cond_3

    if-nez v21, :cond_7

    .line 463
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 469
    .end local v17           #xRange:Z
    .end local v19           #yRange:Z
    .end local v21           #zRange:Z
    :cond_4
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_1

    .line 471
    .restart local v17       #xRange:Z
    :cond_5
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_2

    .line 473
    .restart local v19       #yRange:Z
    :cond_6
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_3

    .line 478
    .restart local v21       #zRange:Z
    :cond_7
    cmpg-float v3, v14, v15

    if-gez v3, :cond_3

    .line 479
    move v15, v14

    .line 480
    move v10, v13

    goto :goto_4

    .line 484
    .end local v14           #t:F
    .end local v17           #xRange:Z
    .end local v19           #yRange:Z
    .end local v21           #zRange:Z
    :cond_8
    if-gez v10, :cond_9

    .line 493
    :goto_5
    return-void

    .line 487
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mHitTestLine:[F

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mHitTestLine:[F

    move-object v6, v0

    const/4 v7, 0x4

    aget v8, v11, v10

    aget v9, v12, v10

    invoke-static/range {v2 .. v9}, Lcom/nemustech/tiffany/world/TFVector3D;->getPointOnLine([FI[FI[FIFI)F

    .line 490
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 491
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFCube;->mMatrix:[F

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 492
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFCube;->mHitFace:I

    goto :goto_5

    .line 451
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
