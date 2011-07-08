.class public Lcom/nemustech/tiffany/world/TFImportModel;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFImportModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFImportModel"


# instance fields
.field protected mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

.field protected mModelColor:[F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFImporter;)V
    .locals 2
    .parameter "importModel"

    .prologue
    const/high16 v1, 0x3f80

    .line 9
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    .line 10
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFImportModel;->setImportModel(Lcom/nemustech/tiffany/world/TFImporter;)V

    .line 11
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/nemustech/tiffany/world/TFImportModel;->setModelColor(FFFF)V

    .line 12
    return-void
.end method


# virtual methods
.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 9
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    const v8, 0x8078

    const v7, 0x8076

    const v6, 0x8075

    const/16 v5, 0x1406

    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 66
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mShouldDraw:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFImporter;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 75
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v5, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 77
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 78
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 79
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v5, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 87
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 88
    const v0, 0x803a

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 89
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 95
    :goto_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 96
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v5, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 98
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFTextures;->getMaxTextureIndex()I

    move-result v0

    if-lez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1, v4}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 105
    :cond_2
    :goto_3
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 107
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mWidth:F

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImportModel;->getModelWidth()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mHeight:F

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImportModel;->getModelHeight()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mDepth:F

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImportModel;->getModelDepth()F

    move-result v3

    div-float/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 109
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFImporter;->drawModel(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 112
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 113
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 114
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 115
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_0

    .line 82
    :cond_3
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 83
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mOpacity:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_1

    .line 92
    :cond_4
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2

    .line 102
    :cond_5
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_3
.end method

.method public getImportModel()Lcom/nemustech/tiffany/world/TFImporter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    return-object v0
.end method

.method public getModelDepth()F
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getModelHeight()F
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getModelWidth()F
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public setImportModel(Lcom/nemustech/tiffany/world/TFImporter;)V
    .locals 3
    .parameter "importModel"

    .prologue
    const/high16 v0, 0x3f80

    .line 30
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    .line 31
    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mWidth:F

    .line 32
    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mHeight:F

    .line 33
    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mDepth:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mWidth:F

    .line 37
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mHeight:F

    .line 38
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mImportModel:Lcom/nemustech/tiffany/world/TFImporter;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mDepth:F

    .line 39
    iget-object v0, p1, Lcom/nemustech/tiffany/world/TFImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 41
    :cond_0
    return-void
.end method

.method public setModelColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 57
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 58
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 59
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mModelColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 60
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "scaleZ"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImportModel;->getModelWidth()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mWidth:F

    .line 47
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImportModel;->getModelHeight()F

    move-result v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mHeight:F

    .line 48
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImportModel;->getModelDepth()F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mDepth:F

    .line 49
    return-void
.end method

.method public setSize(FFF)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "depth"

    .prologue
    .line 51
    iput p1, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mWidth:F

    .line 52
    iput p2, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mHeight:F

    .line 53
    iput p3, p0, Lcom/nemustech/tiffany/world/TFImportModel;->mDepth:F

    .line 54
    return-void
.end method
