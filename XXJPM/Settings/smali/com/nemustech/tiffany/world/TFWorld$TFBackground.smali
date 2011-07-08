.class public Lcom/nemustech/tiffany/world/TFWorld$TFBackground;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFWorld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFWorld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TFBackground"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TFBackground"


# instance fields
.field protected mChanged:Z

.field protected mZ:F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 1
    .parameter "world"

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mChanged:Z

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mZ:F

    .line 664
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 665
    return-void
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 1
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 730
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->setNeedToBeUpdated(Z)V

    .line 731
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v5, 0x1406

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 735
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 736
    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 737
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 738
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 739
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 740
    const v0, 0x8075

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 742
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 744
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 745
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 746
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mZ:F

    invoke-interface {p1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 747
    iget v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWidth:F

    iget v1, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mHeight:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 757
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v5, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 758
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v5, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 759
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1, v3}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 760
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 766
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 767
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 768
    return-void
.end method

.method public setNeedToBeUpdated(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mChanged:Z

    .line 718
    return-void
.end method

.method public update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mChanged:Z

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->updateVertex()V

    .line 723
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->updateLocation()V

    .line 724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mChanged:Z

    .line 726
    :cond_0
    return-void
.end method

.method protected updateLocation()V
    .locals 9

    .prologue
    const/high16 v8, 0x4000

    .line 694
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v3, v4, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    .line 695
    .local v3, scrWidth:I
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, v4, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    .line 696
    .local v2, scrHeight:I
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v4}, Lcom/nemustech/tiffany/world/TFWorld;->getDepth()F

    move-result v0

    .line 697
    .local v0, depth:F
    const/16 v4, 0x10

    new-array v1, v4, [F

    .line 699
    .local v1, m:[F
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/nemustech/tiffany/world/TFRenderer;->getHitTestLine(FF[FI)V

    .line 700
    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    int-to-float v5, v3

    int-to-float v6, v2

    const/16 v7, 0x8

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/nemustech/tiffany/world/TFRenderer;->getHitTestLine(FF[FI)V

    .line 711
    const/4 v4, 0x6

    aget v4, v1, v4

    const/high16 v5, 0x4780

    div-float v5, v0, v5

    const/high16 v6, 0x41a0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mZ:F

    .line 712
    const/16 v4, 0xc

    aget v4, v1, v4

    const/4 v5, 0x4

    aget v5, v1, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mWidth:F

    .line 713
    const/16 v4, 0xd

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    sub-float/2addr v4, v5

    neg-float v4, v4

    mul-float/2addr v4, v8

    iput v4, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mHeight:F

    .line 714
    return-void
.end method

.method protected updateVertex()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 668
    new-array v4, v8, [F

    fill-array-data v4, :array_0

    .line 675
    .local v4, v:[F
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v5, v7}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureInfo(I)Lcom/nemustech/tiffany/world/TFTextureInfo;

    move-result-object v2

    .line 676
    .local v2, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getCoordRatioWidth()F

    move-result v3

    .line 677
    .local v3, texWidth:F
    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFTextureInfo;->getCoordRatioHeight()F

    move-result v1

    .line 679
    .local v1, texHeight:F
    new-array v0, v8, [F

    aput v6, v0, v7

    const/4 v5, 0x1

    aput v1, v0, v5

    const/4 v5, 0x2

    aput v3, v0, v5

    const/4 v5, 0x3

    aput v1, v0, v5

    const/4 v5, 0x4

    aput v6, v0, v5

    const/4 v5, 0x5

    aput v6, v0, v5

    const/4 v5, 0x6

    aput v3, v0, v5

    const/4 v5, 0x7

    aput v6, v0, v5

    .line 686
    .local v0, t:[F
    array-length v5, v4

    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 687
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 688
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 689
    array-length v5, v0

    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 690
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 691
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFWorld$TFBackground;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 692
    return-void

    .line 668
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method
