.class public Lcom/nemustech/tiffany/world/TFTextures;
.super Ljava/lang/Object;
.source "TFTextures.java"


# static fields
.field private static final DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config; = null

.field static final TAG:Ljava/lang/String; = "TFTextures"

.field private static mRect:Landroid/graphics/Rect;


# instance fields
.field private final HEADER_SIZE:I

.field private mDefaultDelayBB:Ljava/nio/ByteBuffer;

.field private mDelayHeight:I

.field private mDelayWidth:I

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mMaxTextureIndex:I

.field private mModel:Lcom/nemustech/tiffany/world/TFModel;

.field private mTexName:[I

.field private mTextureInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/world/TFTextureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/nemustech/tiffany/world/TFTextures;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFModel;)V
    .locals 2
    .parameter "model"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mDefaultDelayBB:Ljava/nio/ByteBuffer;

    .line 385
    iput v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mDelayWidth:I

    .line 386
    iput v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mDelayHeight:I

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    .line 392
    const/16 v0, 0xc

    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->HEADER_SIZE:I

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    .line 37
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    .line 38
    return-void
.end method

.method static createTextureInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/nemustech/tiffany/world/TFTextureInfo;
    .locals 5
    .parameter "bmp"
    .parameter "rectSet"

    .prologue
    .line 357
    new-instance v0, Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFTextureInfo;-><init>()V

    .line 359
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-nez p1, :cond_0

    .line 361
    iput-object p0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->setWidth(I)V

    .line 364
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->setHeight(I)V

    .line 378
    :goto_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->resource_id:I

    .line 379
    return-object v0

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->setWidth(I)V

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->setHeight(I)V

    .line 371
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getTextureFileName(I)Ljava/lang/String;
    .locals 6
    .parameter "id"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 43
    .local v0, formatFileName:Ljava/lang/String;
    const-string v2, "texture%d.tex"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, textureFileName:Ljava/lang/String;
    return-object v1
.end method

.method private putTextureInfo(ILcom/nemustech/tiffany/world/TFTextureInfo;)V
    .locals 2
    .parameter "index"
    .parameter "info"

    .prologue
    .line 315
    iget v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    if-le p1, v1, :cond_2

    .line 316
    iput p1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    .line 326
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 328
    :cond_1
    return-void

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 321
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFModel;->getImageCacheLockStatus()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/world/TFTextures;->removeTexture(Lcom/nemustech/tiffany/world/TFTextureInfo;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeTexture(Lcom/nemustech/tiffany/world/TFTextureInfo;Z)V
    .locals 4
    .parameter "texInfo"
    .parameter "clearBitmapCache"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v1, :cond_0

    .line 51
    new-array v0, v3, [I

    iget v1, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    aput v1, v0, v2

    .line 52
    .local v0, texName:[I
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 53
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFUtils;->checkGLError(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 56
    .end local v0           #texName:[I
    :cond_0
    iput-boolean v2, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bTexturized:Z

    .line 57
    iput-boolean v2, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bLoaded:Z

    .line 59
    iget-object v1, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 61
    if-eqz p2, :cond_1

    .line 63
    const-string v1, "TFTextures"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### texInfo.bmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " texInfo.texture_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removeTexture() texInfo.bmp.recycle() ALLOWED !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    .line 71
    :cond_1
    return-void
.end method

.method static setTextureInfo(Ljavax/microedition/khronos/opengles/GL10;Lcom/nemustech/tiffany/world/TFTextureInfo;I)V
    .locals 25
    .parameter "gl"
    .parameter "texInfo"
    .parameter "textureFilter"

    .prologue
    .line 158
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 160
    const/16 v4, 0xde1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getCoordRatioWidth()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getCoordRatioHeight()F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 164
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 166
    .local v7, format:I
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getWidth(Z)I

    move-result v8

    .line 167
    .local v8, width:I
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getHeight(Z)I

    move-result v9

    .line 168
    .local v9, height:I
    const v4, 0x8b96

    if-ne v7, v4, :cond_2

    .line 171
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    move-object v4, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 172
    .local v17, bmp:Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 173
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v12

    .line 174
    .local v12, type:I
    const-string v4, "TFTextures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move v11, v7

    invoke-interface/range {v4 .. v13}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 177
    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v18, v7

    move/from16 v19, v12

    invoke-static/range {v13 .. v19}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 179
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    .end local v7           #format:I
    .end local v8           #width:I
    .end local v9           #height:I
    .end local v12           #type:I
    .end local v17           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    const/16 v4, 0xde1

    const/16 v5, 0x2801

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 196
    const/16 v4, 0xde1

    const/16 v5, 0x2800

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 197
    const/16 p2, 0xde1

    const/16 v4, 0x2802

    const v5, 0x812f

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v4

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 198
    .end local p2
    const/16 p2, 0xde1

    const/16 v4, 0x2803

    const v5, 0x812f

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v4

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 199
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/nemustech/tiffany/world/TFTextureInfo;->bTexturized:Z

    .line 201
    .end local p0
    :cond_1
    return-void

    .line 183
    .restart local v7       #format:I
    .restart local v8       #width:I
    .restart local v9       #height:I
    .restart local p0
    .restart local p2
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v12

    .line 184
    .restart local v12       #type:I
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move v11, v7

    invoke-interface/range {v4 .. v13}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 186
    const/16 v18, 0xde1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move/from16 v23, v7

    move/from16 v24, v12

    invoke-static/range {v18 .. v24}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 192
    .end local v7           #format:I
    .end local v8           #width:I
    .end local v9           #height:I
    .end local v12           #type:I
    :cond_3
    const/16 v4, 0xde1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private showLoadingIcon(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 205
    sget-object v0, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 206
    sget-object v0, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getWidth(Z)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 207
    sget-object v0, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getHeight(Z)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 209
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    sget-object v1, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-virtual {v2, v4}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getWidth(Z)I

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getWidth(Z)I

    move-result v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/nemustech/tiffany/world/TFModel;->adjustTextureCoordination(Landroid/graphics/Rect;III)V

    .line 213
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFWorld;->mDefaultDelayImageTextureInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;

    iget v1, v1, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 214
    return-void
.end method


# virtual methods
.method deleteImageResource(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 295
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 296
    .local v1, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-eqz v1, :cond_1

    .line 298
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFModel;->getImageCacheLockStatus()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/nemustech/tiffany/world/TFTextures;->removeTexture(Lcom/nemustech/tiffany/world/TFTextureInfo;Z)V

    .line 299
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 301
    iget v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    if-ne p1, v2, :cond_1

    .line 304
    iget v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 305
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 306
    :cond_0
    iput v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    .line 309
    .end local v0           #i:I
    :cond_1
    return-void

    .line 298
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 304
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 6
    .parameter "gl"
    .parameter "bForce"

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 86
    .local v2, texCount:I
    const/4 v0, 0x0

    .line 89
    .local v0, genNeedCount:I
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFTextures;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 93
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 95
    .local v3, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-eqz p2, :cond_0

    .line 97
    invoke-direct {p0, v3, v5}, Lcom/nemustech/tiffany/world/TFTextures;->removeTexture(Lcom/nemustech/tiffany/world/TFTextureInfo;Z)V

    .line 99
    :cond_0
    iget-boolean v4, v3, Lcom/nemustech/tiffany/world/TFTextureInfo;->bTexturized:Z

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v3           #texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    :cond_2
    if-lez v0, :cond_3

    .line 104
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTexName:[I

    .line 105
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTexName:[I

    invoke-interface {p1, v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 111
    :cond_3
    return-void
.end method

.method getMaxTextureIndex()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mMaxTextureIndex:I

    return v0
.end method

.method getTextureCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getTextureIndexKey(I)I
    .locals 1
    .parameter "faceIndex"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method getTextureInfo(I)Lcom/nemustech/tiffany/world/TFTextureInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/world/TFTextureInfo;

    move-object v0, p0

    .line 284
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTextures(Landroid/content/res/Resources;Z)V
    .locals 6
    .parameter "resources"
    .parameter "bForce"

    .prologue
    .line 118
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 119
    .local v1, texCount:I
    const/4 v3, 0x0

    .line 123
    .local v3, textureIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 125
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 127
    .local v2, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-nez p2, :cond_1

    iget-boolean v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bTexturized:Z

    if-eqz v4, :cond_1

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 133
    iget v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->resource_id:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 134
    iget v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->resource_id:I

    invoke-static {p1, v4}, Lcom/nemustech/tiffany/world/TFUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    .line 140
    :goto_2
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nemustech/tiffany/world/TFTextureInfo;->setWidth(I)V

    .line 141
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nemustech/tiffany/world/TFTextureInfo;->setHeight(I)V

    .line 144
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bTexturized:Z

    .line 146
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTexName:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTexName:[I

    array-length v4, v4

    if-le v4, v3, :cond_0

    .line 148
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTexName:[I

    aget v4, v4, v3

    iput v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    .line 149
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bLoaded:Z

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    :cond_3
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->fileName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 136
    iget-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->fileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFUtils;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 138
    :cond_4
    const-string v4, "TFTextures"

    const-string v5, "Loading texture failed due to corrupted texture info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 153
    .end local v2           #texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    :cond_5
    return-void
.end method

.method setBitmapResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "index"
    .parameter "bmp"
    .parameter "rectSet"

    .prologue
    .line 348
    invoke-static {p2, p3}, Lcom/nemustech/tiffany/world/TFTextures;->createTextureInfo(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/nemustech/tiffany/world/TFTextureInfo;

    move-result-object v0

    .line 349
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFTextures;->putTextureInfo(ILcom/nemustech/tiffany/world/TFTextureInfo;)V

    .line 352
    iget-object v1, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    if-eq v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setImageResource(ILandroid/content/res/Resources;I)V
    .locals 1
    .parameter "index"
    .parameter "resources"
    .parameter "resource_id"

    .prologue
    .line 341
    new-instance v0, Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFTextureInfo;-><init>()V

    .line 342
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    iput p3, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->resource_id:I

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFTextures;->putTextureInfo(ILcom/nemustech/tiffany/world/TFTextureInfo;)V

    .line 344
    return-void
.end method

.method setImageResource(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "fileName"

    .prologue
    .line 332
    new-instance v0, Lcom/nemustech/tiffany/world/TFTextureInfo;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFTextureInfo;-><init>()V

    .line 334
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    const/4 v1, -0x1

    iput v1, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->resource_id:I

    .line 335
    iput-object p2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->fileName:Ljava/lang/String;

    .line 336
    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFTextures;->putTextureInfo(ILcom/nemustech/tiffany/world/TFTextureInfo;)V

    .line 337
    return-void
.end method

.method setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 6
    .parameter "gl"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mTextureInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/world/TFTextureInfo;

    .line 220
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-eqz v0, :cond_5

    .line 222
    iget-boolean v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bTexturized:Z

    if-eqz v2, :cond_1

    .line 224
    const/16 v2, 0xde1

    iget v3, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->texture_name:I

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-boolean v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bLoaded:Z

    if-eqz v2, :cond_4

    .line 230
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFModel;->mTextureFilter:[I

    if-eqz v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFModel;->mTextureFilter:[I

    aget v1, v2, v4

    .line 235
    .local v1, textureFilter:I
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureInfo(Ljavax/microedition/khronos/opengles/GL10;Lcom/nemustech/tiffany/world/TFTextureInfo;I)V

    .line 237
    sget-object v2, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 238
    sget-object v2, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getWidth(Z)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 239
    sget-object v2, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getHeight(Z)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    sget-object v3, Lcom/nemustech/tiffany/world/TFTextures;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getWidth(Z)I

    move-result v4

    invoke-virtual {v0, v5}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getHeight(Z)I

    move-result v5

    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/nemustech/tiffany/world/TFModel;->adjustTextureCoordination(Landroid/graphics/Rect;III)V

    .line 248
    iget v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->resource_id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 251
    :cond_2
    iget-object v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 254
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 233
    .end local v1           #textureFilter:I
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v1, v2, Lcom/nemustech/tiffany/world/TFWorld;->mTextureFilter:I

    .restart local v1       #textureFilter:I
    goto :goto_1

    .line 263
    .end local v1           #textureFilter:I
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/nemustech/tiffany/world/TFTextures;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 264
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTextures;->mModel:Lcom/nemustech/tiffany/world/TFModel;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFModel;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v2, v4}, Lcom/nemustech/tiffany/world/TFTextures;->loadTextures(Landroid/content/res/Resources;Z)V

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto :goto_0

    .line 270
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFTextures;->showLoadingIcon(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto :goto_0
.end method
