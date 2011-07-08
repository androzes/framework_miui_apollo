.class public Lcom/nemustech/tiffany/world/TFPagePanel;
.super Lcom/nemustech/tiffany/world/TFModel;
.source "TFPagePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;,
        Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;,
        Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;
    }
.end annotation


# static fields
.field protected static final DEFAULT_BOTTOM_SHADOW_ALPHA:F = 0.9f

.field protected static final DEFAULT_BOTTOM_SHADOW_RATIO:F = 0.25f

.field public static final ELAPSE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TFPagePanel"


# instance fields
.field protected mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

.field protected mBackMaskOpacity:F

.field protected mBorderShadowDarkAlpha:F

.field protected mBorderShadowInflated:Z

.field protected mBorderShadowRatio:F

.field protected mBottomShadowAlpha:F

.field protected mBottomShadowHeight:F

.field protected mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

.field protected mBottomShadowRatio:F

.field protected mBottomShadowWidth:F

.field protected mDirectionDegree:I

.field protected mDuration:I

.field protected mImageOrientation:[I

.field protected mInflection:[F

.field protected mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

.field protected mMinY:F

.field protected mOnUpdateVertex:Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;

.field protected mRectVertex:[F

.field protected mReverseWay:[I

.field protected mT:[F

.field protected mTextureScale:[F

.field protected mTickAccum:I

.field protected mTickElapse:I

.field protected mTicks:I

.field protected mTimeInterpolator:Landroid/view/animation/Interpolator;

.field protected mTimeLineEnd:F

.field protected mTimeLineStart:F

.field protected mV:[F

.field protected mVertexCount:I

.field protected mXYL:[F

.field protected mXYLCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V

    .line 29
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V

    .line 37
    return-void
.end method

.method public constructor <init>(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "i"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 68
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFModel;-><init>()V

    .line 1344
    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    .line 1347
    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    .line 1359
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    .line 1360
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    .line 1361
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    .line 1362
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInflection:[F

    .line 1364
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mImageOrientation:[I

    .line 1365
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mReverseWay:[I

    .line 1366
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFPagePanel;->create(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFHolder;FF)V
    .locals 1
    .parameter "holder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V

    .line 58
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/nemustech/tiffany/world/TFWorld;FF)V
    .locals 1
    .parameter "world"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;-><init>(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V

    .line 47
    invoke-super {p0, p1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 48
    return-void
.end method

.method static newBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "count"

    .prologue
    .line 1075
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

.method private pointDistance(FFFF)F
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 891
    sub-float v0, p3, p1

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p4, p2

    sub-float v2, p4, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method adjustTexCoord(I)V
    .locals 8
    .parameter "face"

    .prologue
    .line 644
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v7, v7, 0x0

    aget v3, v6, v7

    .line 645
    .local v3, sx:F
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v4, v6, v7

    .line 646
    .local v4, sy:F
    iget v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    mul-int/2addr v6, p1

    mul-int/lit8 v1, v6, 0x2

    .line 649
    .local v1, offset:I
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 650
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    if-ge v0, v6, :cond_0

    .line 651
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    mul-float v2, v6, v3

    .line 652
    .local v2, s:F
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    mul-float v5, v6, v4

    .line 653
    .local v5, t:F
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mReverseWay:[I

    aget v6, v6, p1

    packed-switch v6, :pswitch_data_0

    .line 667
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 668
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :pswitch_1
    sub-float v5, v4, v5

    .line 658
    goto :goto_1

    .line 660
    :pswitch_2
    sub-float v2, v3, v2

    .line 661
    goto :goto_1

    .line 663
    :pswitch_3
    sub-float v2, v3, v2

    .line 664
    sub-float v5, v4, v5

    goto :goto_1

    .line 670
    .end local v2           #s:F
    .end local v5           #t:F
    :cond_0
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 671
    return-void

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 4
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/TFModel;->adjustTextureCoordination(Landroid/graphics/Rect;III)V

    .line 232
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 233
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    int-to-float v3, p4

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 234
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildVertexAndTexCoord()V

    .line 235
    return-void
.end method

.method buildBackFace()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 621
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 623
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 625
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    if-ge v0, v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 627
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 628
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 629
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 630
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 633
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 634
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 635
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 636
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 639
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 640
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 641
    return-void
.end method

.method buildDiagonal()V
    .locals 31

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    move v6, v0

    neg-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move v8, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildRectVertex([FFFF)F

    move-result v26

    .line 515
    .local v26, rectScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;->interpolate(F[F)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYLCount:I

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYLCount:I

    move/from16 v18, v0

    .line 517
    .local v18, count:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    mul-int/lit8 v6, v19, 0x3

    add-int/lit8 v6, v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v7, v0

    mul-int/lit8 v8, v19, 0x3

    add-int/lit8 v8, v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    mul-int/lit8 v6, v19, 0x3

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v7, v0

    mul-int/lit8 v8, v19, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    const/high16 v8, 0x3f00

    sub-float/2addr v7, v8

    aput v7, v5, v6

    .line 517
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 522
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    move v5, v0

    int-to-float v5, v5

    const v6, 0x40490fdb

    mul-float/2addr v5, v6

    const/high16 v6, 0x4334

    div-float v25, v5, v6

    .line 523
    .local v25, rad:F
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v17, v26, v5

    .line 524
    .local v17, cos:F
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v28, v26, v5

    .line 526
    .local v28, sin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInflection:[F

    move-object/from16 v22, v0

    .line 527
    .local v22, p:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v22

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->getInterpolatorOfL([FF[FI)F

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v6, v0

    const/4 v7, 0x4

    aget v6, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v22

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->getInterpolatorOfL([FF[FI)F

    .line 530
    const/high16 v5, 0x7f80

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    .line 531
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    .line 533
    const/16 v23, 0x0

    .line 534
    .local v23, passed1:Z
    const/16 v24, 0x0

    .line 535
    .local v24, passed2:Z
    const/16 v27, 0x0

    .line 536
    .local v27, retry:Z
    const/16 v19, 0x0

    .line 537
    :cond_1
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    mul-int/lit8 v6, v19, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v20, v5, v6

    .line 539
    .local v20, ix:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    mul-int/lit8 v6, v19, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v21, v5, v6

    .line 540
    .local v21, iy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    move-object v5, v0

    mul-int/lit8 v6, v19, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v10, v5, v6

    .line 542
    .local v10, il:F
    const/16 v27, 0x0

    .line 543
    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v5, v10, v5

    if-lez v5, :cond_4

    .line 544
    const/4 v5, 0x0

    aget v20, v22, v5

    .line 545
    const/4 v5, 0x1

    aget v21, v22, v5

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    const/4 v6, 0x2

    aget v10, v5, v6

    .line 547
    const/16 v23, 0x1

    .line 548
    const/16 v27, 0x1

    .line 559
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpg-float v5, v10, v5

    if-gez v5, :cond_5

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v8, v0

    const/4 v9, 0x2

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->yOnLine2D([FI[FIF)F

    move-result v29

    .line 563
    .local v29, y1:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    const/4 v6, 0x4

    aget v5, v5, v6

    cmpg-float v5, v10, v5

    if-gez v5, :cond_6

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v8, v0

    const/4 v9, 0x4

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->yOnLine2D([FI[FIF)F

    move-result v30

    .line 568
    .local v30, y2:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x0

    aput v20, v5, v6

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x1

    aput v29, v5, v6

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x2

    aput v21, v5, v6

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x3

    aput v20, v5, v6

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x4

    aput v30, v5, v6

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x5

    aput v21, v5, v6

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x0

    aput v10, v5, v6

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x1

    aput v29, v5, v6

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x2

    aput v10, v5, v6

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x3

    aput v30, v5, v6

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v6, v0

    const/4 v7, 0x4

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->swapN([FIII)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->swapN([FIII)V

    .line 586
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v17

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x2

    aget v7, v5, v6

    mul-float v7, v7, v26

    aput v7, v5, v6

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v17

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v5, v0

    const/4 v6, 0x5

    aget v7, v5, v6

    mul-float v7, v7, v26

    aput v7, v5, v6

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v17

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, v17

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move v8, v0

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move v8, v0

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move v7, v0

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move v8, v0

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move v8, v0

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move v8, v0

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v5, v0

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move v7, v0

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v8, v0

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move v8, v0

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v14, v0

    const/4 v15, 0x3

    const/16 v16, 0x3

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/nemustech/tiffany/world/TFPagePanel;->isSamePointN([FI[FII)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    .line 610
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v6, v0

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    .line 613
    if-nez v27, :cond_1

    .line 614
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 550
    .end local v29           #y1:F
    .end local v30           #y2:F
    :cond_4
    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    const/4 v6, 0x4

    aget v5, v5, v6

    cmpl-float v5, v10, v5

    if-lez v5, :cond_2

    .line 551
    const/4 v5, 0x2

    aget v20, v22, v5

    .line 552
    const/4 v5, 0x3

    aget v21, v22, v5

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v5, v0

    const/4 v6, 0x4

    aget v10, v5, v6

    .line 554
    const/16 v24, 0x1

    .line 555
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 562
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v6, v0

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v8, v0

    const/4 v9, 0x6

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->yOnLine2D([FI[FIF)F

    move-result v29

    .restart local v29       #y1:F
    goto/16 :goto_3

    .line 566
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v6, v0

    const/4 v7, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mRectVertex:[F

    move-object v8, v0

    const/4 v9, 0x6

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/nemustech/tiffany/world/TFPagePanel;->yOnLine2D([FI[FIF)F

    move-result v30

    .restart local v30       #y2:F
    goto/16 :goto_4

    .line 605
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    goto/16 :goto_5

    .line 616
    .end local v10           #il:F
    .end local v20           #ix:F
    .end local v21           #iy:F
    .end local v29           #y1:F
    .end local v30           #y2:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 618
    return-void
.end method

.method buildOrthogonal()V
    .locals 13

    .prologue
    .line 450
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getTimeLine()F

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;->interpolate(F[F)I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYLCount:I

    .line 451
    iget v6, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYLCount:I

    .line 452
    .local v6, count:I
    iget v7, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    .line 456
    .local v7, degree:I
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    .line 458
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_4

    .line 459
    const/16 v0, 0xb4

    if-eq v7, v0, :cond_0

    const/16 v0, 0x10e

    if-ne v7, v0, :cond_2

    .line 460
    :cond_0
    const/4 v0, 0x1

    sub-int v0, v6, v0

    sub-int/2addr v0, v8

    mul-int/lit8 v12, v0, 0x3

    .line 461
    .local v12, pos:I
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    add-int/lit8 v2, v12, 0x0

    aget v1, v1, v2

    sub-float v10, v0, v1

    .line 462
    .local v10, ix:F
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    add-int/lit8 v1, v12, 0x1

    aget v11, v0, v1

    .line 463
    .local v11, iy:F
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    add-int/lit8 v2, v12, 0x2

    aget v1, v1, v2

    sub-float v9, v0, v1

    .line 471
    .end local v12           #pos:I
    .local v9, il:F
    :goto_1
    if-eqz v7, :cond_1

    const/16 v0, 0xb4

    if-ne v7, v0, :cond_3

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    sub-float v2, v10, v2

    aput v2, v0, v1

    .line 473
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f00

    aput v2, v0, v1

    .line 474
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x2

    aput v11, v0, v1

    .line 475
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f00

    sub-float v2, v10, v2

    aput v2, v0, v1

    .line 476
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x4

    const/high16 v2, -0x4100

    aput v2, v0, v1

    .line 477
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x5

    aput v11, v0, v1

    .line 478
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x0

    aput v9, v0, v1

    .line 479
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 480
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x2

    aput v9, v0, v1

    .line 481
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 496
    :goto_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel;->scale([FIFFF)V

    .line 497
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v2, 0x3

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    iget v4, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    iget v5, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel;->scale([FIFFF)V

    .line 498
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 499
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    .line 500
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 502
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    .line 503
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    .line 458
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 466
    .end local v9           #il:F
    .end local v10           #ix:F
    .end local v11           #iy:F
    :cond_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x0

    aget v10, v0, v1

    .line 467
    .restart local v10       #ix:F
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v11, v0, v1

    .line 468
    .restart local v11       #iy:F
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x2

    aget v9, v0, v1

    .restart local v9       #il:F
    goto/16 :goto_1

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x0

    const/high16 v2, -0x4100

    aput v2, v0, v1

    .line 485
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f00

    sub-float v2, v10, v2

    aput v2, v0, v1

    .line 486
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x2

    aput v11, v0, v1

    .line 487
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f00

    aput v2, v0, v1

    .line 488
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x4

    const/high16 v2, 0x3f00

    sub-float v2, v10, v2

    aput v2, v0, v1

    .line 489
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mV:[F

    const/4 v1, 0x5

    aput v11, v0, v1

    .line 490
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 491
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v9

    aput v2, v0, v1

    .line 492
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 493
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mT:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v9

    aput v2, v0, v1

    goto/16 :goto_2

    .line 505
    .end local v9           #il:F
    .end local v10           #ix:F
    .end local v11           #iy:F
    :cond_4
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 506
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 507
    return-void
.end method

.method buildRectVertex([FFFF)F
    .locals 13
    .parameter "vertex"
    .parameter "degree"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 737
    const/high16 v11, 0x4000

    div-float v10, p3, v11

    .line 738
    .local v10, w:F
    const/high16 v11, 0x4000

    div-float v2, p4, v11

    .line 739
    .local v2, h:F
    const v11, 0x40490fdb

    mul-float/2addr v11, p2

    const/high16 v12, 0x4334

    div-float v6, v11, v12

    .line 740
    .local v6, rad:F
    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v1, v11

    .line 741
    .local v1, cos:F
    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v8, v11

    .line 742
    .local v8, sin:F
    move-object v5, p1

    .line 745
    .local v5, m:[F
    const/4 v11, 0x0

    neg-float v12, v10

    aput v12, v5, v11

    .line 746
    const/4 v11, 0x1

    neg-float v12, v2

    aput v12, v5, v11

    .line 747
    const/4 v11, 0x2

    aput v10, v5, v11

    .line 748
    const/4 v11, 0x3

    neg-float v12, v2

    aput v12, v5, v11

    .line 749
    const/4 v11, 0x4

    neg-float v12, v10

    aput v12, v5, v11

    .line 750
    const/4 v11, 0x5

    aput v2, v5, v11

    .line 751
    const/4 v11, 0x6

    aput v10, v5, v11

    .line 752
    const/4 v11, 0x7

    aput v2, v5, v11

    .line 753
    const/4 v11, 0x0

    invoke-virtual {p0, v5, v11, v1, v8}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 754
    const/4 v11, 0x2

    invoke-virtual {p0, v5, v11, v1, v8}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 755
    const/4 v11, 0x4

    invoke-virtual {p0, v5, v11, v1, v8}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 756
    const/4 v11, 0x6

    invoke-virtual {p0, v5, v11, v1, v8}, Lcom/nemustech/tiffany/world/TFPagePanel;->calcRotateZ([FIFF)V

    .line 759
    array-length v11, v5

    div-int/lit8 v0, v11, 0x2

    .line 760
    .local v0, c:I
    const/4 v9, 0x0

    .line 761
    .local v9, swap:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 762
    add-int/lit8 v4, v3, 0x1

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 763
    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x0

    aget v11, v5, v11

    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x0

    aget v12, v5, v12

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_0

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x0

    aget v11, v5, v11

    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x0

    aget v12, v5, v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    aget v12, v5, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    :cond_0
    const/4 v11, 0x1

    move v9, v11

    .line 767
    :goto_2
    if-eqz v9, :cond_1

    .line 768
    const/4 v11, 0x2

    invoke-virtual {p0, v5, v3, v4, v11}, Lcom/nemustech/tiffany/world/TFPagePanel;->swapN([FIII)V

    .line 762
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 763
    :cond_2
    const/4 v11, 0x0

    move v9, v11

    goto :goto_2

    .line 761
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    .end local v4           #j:I
    :cond_4
    const/4 v11, 0x6

    aget v11, v5, v11

    const/4 v12, 0x0

    aget v12, v5, v12

    sub-float v7, v11, v12

    .line 773
    .local v7, scale:F
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_5

    .line 774
    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x0

    aget v12, v5, v11

    div-float/2addr v12, v7

    aput v12, v5, v11

    .line 775
    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v12, v5, v11

    div-float/2addr v12, v7

    aput v12, v5, v11

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 777
    :cond_5
    return v7
.end method

.method buildVertexAndTexCoord()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOnUpdateVertex:Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOnUpdateVertex:Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;->beforeUpdate(Lcom/nemustech/tiffany/world/TFPagePanel;)V

    .line 433
    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    rem-int/lit8 v0, v0, 0x5a

    if-nez v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildOrthogonal()V

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildBackFace()V

    .line 439
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->adjustTexCoord(I)V

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->adjustTexCoord(I)V

    .line 441
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 442
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 443
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->configureBottomShadow()V

    .line 445
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOnUpdateVertex:Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOnUpdateVertex:Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;->afterUpdate(Lcom/nemustech/tiffany/world/TFPagePanel;)V

    .line 447
    :cond_1
    return-void

    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildDiagonal()V

    goto :goto_0
.end method

.method calcRotateZ([FIFF)V
    .locals 5
    .parameter "xyz"
    .parameter "offset"
    .parameter "cos"
    .parameter "sin"

    .prologue
    .line 674
    add-int/lit8 v2, p2, 0x0

    aget v0, p1, v2

    .line 675
    .local v0, x:F
    add-int/lit8 v2, p2, 0x1

    aget v1, p1, v2

    .line 676
    .local v1, y:F
    add-int/lit8 v2, p2, 0x0

    mul-float v3, p3, v0

    mul-float v4, p4, v1

    sub-float/2addr v3, v4

    aput v3, p1, v2

    .line 677
    add-int/lit8 v2, p2, 0x1

    mul-float v3, p4, v0

    mul-float v4, p3, v1

    add-float/2addr v3, v4

    aput v3, p1, v2

    .line 678
    return-void
.end method

.method protected configureBottomShadow()V
    .locals 38

    .prologue
    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    move-object/from16 v34, v0

    if-nez v34, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/nemustech/tiffany/world/TFShadowPanel;->setPriorAction(I)V

    .line 801
    const/16 v23, 0x0

    .line 802
    .local v23, vertexArray:[F
    if-nez v23, :cond_2

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getMaxLengthOfVertexArray()I

    move-result v17

    .line 804
    .local v17, m:I
    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 807
    .end local v17           #m:I
    :cond_2
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->getVertexArray([FI)I

    move-result v34

    div-int/lit8 v24, v34, 0x3

    .line 808
    .local v24, vertexCount:I
    const/4 v10, 0x0

    .line 809
    .local v10, foldingInflectionPoint:I
    mul-int/lit8 v34, v24, 0x3

    const/16 v35, 0x1

    sub-int v34, v34, v35

    aget v11, v23, v34

    .line 810
    .local v11, foldingStartHeight:F
    const/16 v34, 0x2

    aget v9, v23, v34

    .line 811
    .local v9, foldingEndHeight:F
    cmpl-float v34, v9, v11

    if-eqz v34, :cond_3

    .line 812
    const/16 v34, 0x2

    sub-int v14, v24, v34

    .local v14, i:I
    :goto_1
    const/16 v34, 0x1

    move v0, v14

    move/from16 v1, v34

    if-lt v0, v1, :cond_3

    .line 813
    mul-int/lit8 v34, v14, 0x3

    add-int/lit8 v34, v34, 0x2

    aget v34, v23, v34

    const/high16 v35, 0x3f00

    mul-float v35, v35, v11

    cmpg-float v34, v34, v35

    if-gtz v34, :cond_6

    .line 814
    move v10, v14

    .line 821
    .end local v14           #i:I
    :cond_3
    const/16 v34, 0x1

    move v0, v10

    move/from16 v1, v34

    if-le v0, v1, :cond_c

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move/from16 v35, v0

    const/high16 v36, 0x4000

    mul-float v35, v35, v36

    const/16 v36, 0x0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->resizeShadowPanel(FFZZ)V

    .line 826
    mul-int/lit8 v34, v10, 0x3

    aget v28, v23, v34

    .line 827
    .local v28, x2:F
    mul-int/lit8 v34, v10, 0x3

    add-int/lit8 v34, v34, 0x1

    aget v31, v23, v34

    .line 828
    .local v31, y2:F
    const/16 v34, 0x1

    sub-int v34, v10, v34

    mul-int/lit8 v34, v34, 0x3

    aget v27, v23, v34

    .line 829
    .local v27, x1:F
    const/16 v34, 0x1

    sub-int v34, v10, v34

    mul-int/lit8 v34, v34, 0x3

    add-int/lit8 v34, v34, 0x1

    aget v30, v23, v34

    .line 830
    .local v30, y1:F
    add-float v34, v27, v28

    const/high16 v35, 0x3f00

    mul-float v18, v34, v35

    .line 831
    .local v18, midPointX:F
    add-float v34, v30, v31

    const/high16 v35, 0x3f00

    mul-float v19, v34, v35

    .line 832
    .local v19, midPointY:F
    mul-int/lit8 v34, v10, 0x3

    add-int/lit8 v34, v34, 0x2

    aget v33, v23, v34

    .line 833
    .local v33, z:F
    sub-float v34, v28, v27

    sub-float v35, v28, v27

    mul-float v34, v34, v35

    sub-float v35, v31, v30

    sub-float v36, v31, v30

    mul-float v35, v35, v36

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v21, v0

    .line 834
    .local v21, temp:F
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v34, v0

    sub-float v35, v28, v27

    mul-float v34, v34, v35

    sub-float v35, v31, v30

    mul-float v35, v35, v30

    sub-float v34, v34, v35

    mul-float v35, v21, v21

    div-float v22, v34, v35

    .line 835
    .local v22, u:F
    sub-float v34, v28, v27

    mul-float v34, v34, v22

    add-float v29, v27, v34

    .line 836
    .local v29, xOffset:F
    sub-float v34, v31, v30

    mul-float v34, v34, v22

    add-float v32, v30, v34

    .line 837
    .local v32, yOffset:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v32

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->pointDistance(FFFF)F

    move-result v25

    .line 838
    .local v25, verticalDeviation:F
    const/16 v34, 0x0

    cmpl-float v34, v29, v34

    if-lez v34, :cond_7

    const/high16 v34, 0x3f80

    move/from16 v13, v34

    .line 839
    .local v13, horizontalDeviationDirection:F
    :goto_2
    const/16 v34, 0x5a

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v34

    const/16 v35, 0x10e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_4

    .line 840
    const/high16 v34, -0x4080

    mul-float v13, v13, v34

    .line 842
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v34

    if-ltz v34, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v34

    const/16 v35, 0xb4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    .line 843
    sub-float v34, v29, v18

    const/16 v35, 0x0

    cmpg-float v34, v34, v35

    if-gez v34, :cond_8

    .line 844
    const/high16 v26, -0x4080

    .line 856
    .local v26, verticalDeviationDirection:F
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getDirectionDegree()I

    move-result v8

    .line 857
    .local v8, degree:I
    const/16 v34, 0xb4

    move v0, v8

    move/from16 v1, v34

    if-le v0, v1, :cond_5

    .line 858
    add-int/lit16 v8, v8, -0x168

    .line 859
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    move-object/from16 v34, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/nemustech/tiffany/world/TFShadowPanel;->setHeadDegree(F)V

    .line 861
    mul-float v34, v29, v29

    mul-float v35, v32, v32

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move v15, v0

    .line 862
    .local v15, inflectionPointDistance:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v34

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Lcom/nemustech/tiffany/world/TFCamera;->getLocation(I)F

    move-result v6

    .line 863
    .local v6, cameraPositionZ:F
    add-float v34, v6, v33

    mul-float v34, v34, v15

    div-float v34, v34, v6

    const v35, 0x3d4ccccd

    mul-float v35, v35, v13

    sub-float v12, v34, v35

    .line 865
    .local v12, horizontalDeviation:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    move-object/from16 v34, v0

    mul-float v35, v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    move/from16 v36, v0

    const/high16 v37, 0x3f00

    mul-float v36, v36, v37

    add-float v35, v35, v36

    mul-float v36, v25, v26

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v37}, Lcom/nemustech/tiffany/world/TFShadowPanel;->locate(FFF)V

    .line 870
    const/16 v34, 0x9

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object v5, v0

    fill-array-data v5, :array_0

    .line 871
    .local v5, GRADATION_LEVEL:[F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getBackgroundColorArray()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 874
    .local v7, colorBuffer:Ljava/nio/FloatBuffer;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move-object v0, v5

    array-length v0, v0

    move/from16 v34, v0

    move v0, v14

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 875
    mul-int/lit8 v34, v14, 0x2

    add-int v34, v34, v10

    add-int/lit8 v34, v34, 0x1

    move-object v0, v5

    array-length v0, v0

    move/from16 v35, v0

    div-int/lit8 v35, v35, 0x2

    sub-int v20, v34, v35

    .line 876
    .local v20, offset:I
    const/16 v34, 0x1

    move/from16 v0, v20

    move/from16 v1, v34

    if-lt v0, v1, :cond_b

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 877
    const/16 v16, 0x0

    .local v16, j:I
    :goto_5
    const/16 v34, 0x3

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    .line 878
    const/16 v34, 0x1

    sub-int v34, v20, v34

    mul-int/lit8 v34, v34, 0x4

    add-int v34, v34, v16

    aget v35, v5, v14

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 879
    mul-int/lit8 v34, v20, 0x4

    add-int v34, v34, v16

    aget v35, v5, v14

    move-object v0, v7

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 877
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 812
    .end local v5           #GRADATION_LEVEL:[F
    .end local v6           #cameraPositionZ:F
    .end local v7           #colorBuffer:Ljava/nio/FloatBuffer;
    .end local v8           #degree:I
    .end local v12           #horizontalDeviation:F
    .end local v13           #horizontalDeviationDirection:F
    .end local v15           #inflectionPointDistance:F
    .end local v16           #j:I
    .end local v18           #midPointX:F
    .end local v19           #midPointY:F
    .end local v20           #offset:I
    .end local v21           #temp:F
    .end local v22           #u:F
    .end local v25           #verticalDeviation:F
    .end local v26           #verticalDeviationDirection:F
    .end local v27           #x1:F
    .end local v28           #x2:F
    .end local v29           #xOffset:F
    .end local v30           #y1:F
    .end local v31           #y2:F
    .end local v32           #yOffset:F
    .end local v33           #z:F
    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    .line 838
    .end local v14           #i:I
    .restart local v18       #midPointX:F
    .restart local v19       #midPointY:F
    .restart local v21       #temp:F
    .restart local v22       #u:F
    .restart local v25       #verticalDeviation:F
    .restart local v27       #x1:F
    .restart local v28       #x2:F
    .restart local v29       #xOffset:F
    .restart local v30       #y1:F
    .restart local v31       #y2:F
    .restart local v32       #yOffset:F
    .restart local v33       #z:F
    :cond_7
    const/high16 v34, -0x4080

    move/from16 v13, v34

    goto/16 :goto_2

    .line 846
    .restart local v13       #horizontalDeviationDirection:F
    :cond_8
    const/high16 v26, 0x3f80

    .restart local v26       #verticalDeviationDirection:F
    goto/16 :goto_3

    .line 849
    .end local v26           #verticalDeviationDirection:F
    :cond_9
    sub-float v34, v29, v18

    const/16 v35, 0x0

    cmpg-float v34, v34, v35

    if-gez v34, :cond_a

    .line 850
    const/high16 v26, 0x3f80

    .restart local v26       #verticalDeviationDirection:F
    goto/16 :goto_3

    .line 852
    .end local v26           #verticalDeviationDirection:F
    :cond_a
    const/high16 v26, -0x4080

    .restart local v26       #verticalDeviationDirection:F
    goto/16 :goto_3

    .line 874
    .restart local v5       #GRADATION_LEVEL:[F
    .restart local v6       #cameraPositionZ:F
    .restart local v7       #colorBuffer:Ljava/nio/FloatBuffer;
    .restart local v8       #degree:I
    .restart local v12       #horizontalDeviation:F
    .restart local v14       #i:I
    .restart local v15       #inflectionPointDistance:F
    .restart local v20       #offset:I
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 885
    .end local v5           #GRADATION_LEVEL:[F
    .end local v6           #cameraPositionZ:F
    .end local v7           #colorBuffer:Ljava/nio/FloatBuffer;
    .end local v8           #degree:I
    .end local v12           #horizontalDeviation:F
    .end local v13           #horizontalDeviationDirection:F
    .end local v14           #i:I
    .end local v15           #inflectionPointDistance:F
    .end local v18           #midPointX:F
    .end local v19           #midPointY:F
    .end local v20           #offset:I
    .end local v21           #temp:F
    .end local v22           #u:F
    .end local v25           #verticalDeviation:F
    .end local v26           #verticalDeviationDirection:F
    .end local v27           #x1:F
    .end local v28           #x2:F
    .end local v29           #xOffset:F
    .end local v30           #y1:F
    .end local v31           #y2:F
    .end local v32           #yOffset:F
    .end local v33           #z:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move/from16 v35, v0

    const/high16 v36, 0x3f00

    mul-float v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    move/from16 v36, v0

    const/high16 v37, 0x3f00

    mul-float v36, v36, v37

    add-float v35, v35, v36

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v37}, Lcom/nemustech/tiffany/world/TFShadowPanel;->locate(FFF)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/nemustech/tiffany/world/TFShadowPanel;->setHeadDegree(F)V

    goto/16 :goto_0

    .line 870
    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method protected create(FFLcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "i"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 406
    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineStart:F

    .line 407
    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineEnd:F

    .line 408
    iput v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTicks:I

    .line 409
    iput v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    .line 410
    const/16 v0, 0x1e

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickElapse:I

    .line 411
    iput v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDuration:I

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeInterpolator:Landroid/view/animation/Interpolator;

    .line 414
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->initTextureParam(I)V

    .line 415
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->initTextureParam(I)V

    .line 417
    if-nez p3, :cond_0

    .line 418
    new-instance p3, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;

    .end local p3
    invoke-direct {p3}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;-><init>()V

    .line 419
    .restart local p3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/nemustech/tiffany/world/TFPagePanel;->setPageOverInterpolator(Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setSize(FF)V

    .line 421
    invoke-super {p0, v2}, Lcom/nemustech/tiffany/world/TFModel;->setBackFaceVisibility(Z)V

    .line 422
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 13
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 247
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFShadowPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v9, :cond_0

    .line 248
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 249
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    invoke-virtual {v9, p1, p2}, Lcom/nemustech/tiffany/world/TFShadowPanel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 250
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 253
    :cond_0
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVisible:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mShouldDraw:Z

    if-nez v9, :cond_2

    .line 351
    .end local p2
    :cond_1
    return-void

    .line 256
    .restart local p2
    :cond_2
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mFacingFront:Z

    if-eqz v9, :cond_4

    .line 257
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mAngle:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    neg-float v6, v9

    .line 258
    .local v6, rotationX:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    neg-float v7, v9

    .line 259
    .local v7, rotationY:F
    const/4 v5, 0x0

    .line 261
    .local v5, rotateYFirst:Z
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v9, :cond_3

    .line 262
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v6, v9

    .line 263
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v7, v9

    .line 264
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-boolean v5, v9, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    .line 267
    :cond_3
    const/4 v9, 0x1

    if-ne v5, v9, :cond_9

    .line 268
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v7, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 269
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v6, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 275
    :goto_0
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, v9, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-nez v9, :cond_4

    .line 276
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object p2, v0

    .end local p2
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMatrix:[F

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 279
    .end local v5           #rotateYFirst:Z
    .end local v6           #rotationX:F
    .end local v7           #rotationY:F
    :cond_4
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v9}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 280
    const/16 v9, 0xb44

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 282
    :cond_5
    const v9, 0x8074

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 283
    const v9, 0x8078

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 285
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 286
    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 288
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v10}, Lcom/nemustech/tiffany/world/TFTextures;->getMaxTextureIndex()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 290
    .local v8, textureCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-gt v1, v8, :cond_1

    .line 292
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v9, p1, v1}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 295
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v9, v9, Lcom/nemustech/tiffany/world/TFWorld;->mReflection:Z

    if-eqz v9, :cond_7

    .line 296
    if-nez v1, :cond_a

    const/16 v9, 0x404

    :goto_2
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 298
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFModel;->mLocation:[F

    const/4 v10, 0x1

    aget v3, v9, v10

    .line 300
    .local v3, objectY:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v9, :cond_b

    .line 301
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mLocation:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v3, v9

    .line 305
    :cond_6
    :goto_3
    iget v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v9, v3, v9

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    sub-float v2, v9, v10

    .line 307
    .local v2, mirrorY:F
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_7

    iget v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    cmpg-float v9, v2, v9

    if-gez v9, :cond_7

    iget v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMinY:F

    add-float/2addr v9, v3

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectingFloor:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_7

    .line 309
    iget v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOpacity:F

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mReflectionOpacity:F

    mul-float v4, v9, v10

    .line 311
    .local v4, opacity:F
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 312
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    neg-float v9, v9

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 313
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mAngle:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    neg-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 314
    const/4 v9, 0x0

    const/high16 v10, 0x4000

    mul-float/2addr v10, v2

    iget v11, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    add-float/2addr v10, v11

    neg-float v10, v10

    const v11, -0x457ced91

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 315
    const/high16 v9, 0x3f80

    const/high16 v10, -0x4080

    const/high16 v11, 0x3f80

    invoke-interface {p1, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 316
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 317
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mAngle:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 318
    int-to-float v9, v1

    invoke-interface {p1, v4, v4, v4, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 319
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 320
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 324
    .end local v2           #mirrorY:F
    .end local v3           #objectY:F
    .end local v4           #opacity:F
    :cond_7
    iget v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTouchedIndex:I

    if-ne v9, v1, :cond_c

    .line 325
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v9, v9, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskR:F

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v10, v10, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskG:F

    iget-object v11, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget v11, v11, Lcom/nemustech/tiffany/world/TFWorld;->mTouchedModelColorMaskB:F

    iget v12, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOpacity:F

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 332
    :goto_4
    if-nez v1, :cond_d

    const/16 v9, 0x405

    :goto_5
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 337
    const/4 v9, 0x1

    if-ne v1, v9, :cond_8

    iget v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskOpacity:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_8

    .line 339
    const v9, 0x8076

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 340
    const/4 v9, 0x4

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 341
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 342
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/nemustech/tiffany/world/TFPagePanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 343
    const v9, 0x8076

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 345
    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskOpacity:F

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 346
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10}, Lcom/nemustech/tiffany/world/TFTextures;->setTextureByIndex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 349
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 272
    .end local v1           #i:I
    .end local v8           #textureCount:I
    .restart local v5       #rotateYFirst:Z
    .restart local v6       #rotationX:F
    .restart local v7       #rotationY:F
    .restart local p2
    :cond_9
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v6, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 273
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v7, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto/16 :goto_0

    .line 296
    .end local v5           #rotateYFirst:Z
    .end local v6           #rotationX:F
    .end local v7           #rotationY:F
    .end local p2
    .restart local v1       #i:I
    .restart local v8       #textureCount:I
    :cond_a
    const/16 v9, 0x405

    goto/16 :goto_2

    .line 302
    .restart local v3       #objectY:F
    :cond_b
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v9, :cond_6

    .line 303
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFPlaceHolder;->mLocation:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    add-float/2addr v3, v9

    goto/16 :goto_3

    .line 330
    .end local v3           #objectY:F
    :cond_c
    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOpacity:F

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    goto :goto_4

    .line 332
    :cond_d
    const/16 v9, 0x404

    goto :goto_5
.end method

.method protected drawVertex(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 3
    .parameter "gl"
    .parameter "face"

    .prologue
    .line 425
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    mul-int v0, p2, v1

    .line 426
    .local v0, offset:I
    const/4 v1, 0x5

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 427
    return-void
.end method

.method getBackgroundColorArray()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getDirectionDegree()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    return v0
.end method

.method public getElapse()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickElapse:I

    return v0
.end method

.method getInterpolatorOfL([FF[FI)F
    .locals 10
    .parameter "iXYL"
    .parameter "l"
    .parameter "xy"
    .parameter "offset"

    .prologue
    const/high16 v9, 0x3f00

    .line 685
    const/4 v8, 0x0

    aget v5, p1, v8

    .line 686
    .local v5, ixPrev:F
    const/4 v8, 0x1

    aget v7, p1, v8

    .line 687
    .local v7, iyPrev:F
    const/4 v8, 0x2

    aget v3, p1, v8

    .line 690
    .local v3, ilPrev:F
    const/4 v1, 0x1

    .line 692
    .local v1, i:I
    :goto_0
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x0

    aget v4, p1, v8

    .line 693
    .local v4, ix:F
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v6, p1, v8

    .line 694
    .local v6, iy:F
    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v2, p1, v8

    .line 696
    .local v2, il:F
    cmpl-float v8, v2, p2

    if-ltz v8, :cond_2

    .line 697
    cmpg-float v8, v7, v6

    if-gez v8, :cond_0

    .line 699
    sub-float v8, v2, p2

    sub-float v9, v2, v3

    div-float v0, v8, v9

    .line 700
    .local v0, c:F
    add-int/lit8 v8, p4, 0x0

    sub-float v9, v4, v5

    mul-float/2addr v9, v0

    sub-float v9, v4, v9

    aput v9, p3, v8

    .line 701
    add-int/lit8 v8, p4, 0x1

    sub-float v9, v6, v7

    mul-float/2addr v9, v0

    sub-float v9, v6, v9

    aput v9, p3, v8

    .end local v0           #c:F
    :goto_1
    move v8, v2

    .line 725
    :goto_2
    return v8

    .line 703
    :cond_0
    sub-float v8, v4, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 705
    add-int/lit8 v8, p4, 0x0

    sub-float v9, v2, p2

    add-float/2addr v9, v4

    aput v9, p3, v8

    .line 706
    add-int/lit8 v8, p4, 0x1

    aput v6, p3, v8

    goto :goto_1

    .line 710
    :cond_1
    add-int/lit8 v8, p4, 0x0

    aput p2, p3, v8

    .line 711
    add-int/lit8 v8, p4, 0x1

    aput v6, p3, v8

    goto :goto_1

    .line 716
    :cond_2
    cmpl-float v8, v2, v9

    if-ltz v8, :cond_3

    .line 723
    add-int/lit8 v8, p4, 0x0

    aput v4, p3, v8

    .line 724
    add-int/lit8 v8, p4, 0x1

    aput v6, p3, v8

    move v8, v9

    .line 725
    goto :goto_2

    .line 718
    :cond_3
    move v5, v4

    .line 719
    move v7, v6

    .line 720
    move v3, v2

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getMaxLengthOfVertexArray()I
    .locals 2

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;->getElemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v1, 0x2

    .line 1136
    .local v0, count:I
    mul-int/lit8 v1, v0, 0x3

    return v1
.end method

.method public getPageOverInterpolator()Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    return-object v0
.end method

.method public getTimeLine()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 154
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDuration:I

    if-nez v1, :cond_0

    .line 155
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineStart:F

    .line 164
    :goto_0
    return v1

    .line 157
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTicks:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDuration:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 158
    .local v0, t:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 159
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineStart:F

    goto :goto_0

    .line 160
    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    .line 161
    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineEnd:F

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 164
    :cond_3
    sub-float v1, v3, v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineStart:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineEnd:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method getVertexArray([FI)I
    .locals 3
    .parameter "a"
    .parameter "offset"

    .prologue
    .line 1116
    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    mul-int/lit8 v1, v2, 0x3

    .line 1118
    .local v1, count:I
    if-nez p1, :cond_0

    move v2, v1

    .line 1129
    :goto_0
    return v2

    .line 1120
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, v1, :cond_1

    .line 1122
    const/4 v2, -0x1

    goto :goto_0

    .line 1126
    :cond_1
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 1127
    .local v0, b:Ljava/nio/FloatBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1128
    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move v2, v1

    .line 1129
    goto :goto_0
.end method

.method getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method getVertexCount()I
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    return v0
.end method

.method initTextureParam(I)V
    .locals 3
    .parameter "face"

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 1081
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mImageOrientation:[I

    aput v1, v0, p1

    .line 1082
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mReverseWay:[I

    aput v1, v0, p1

    .line 1083
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x0

    aput v2, v0, v1

    .line 1084
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureScale:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v2, v0, v1

    .line 1085
    return-void
.end method

.method protected isInEffectAnimation()Z
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFModel;->isInEffectAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPlaying()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTicks:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDuration:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSamePointN([FI[FII)Z
    .locals 3
    .parameter "p1"
    .parameter "p1Offset"
    .parameter "p2"
    .parameter "p2Offset"
    .parameter "n"

    .prologue
    .line 790
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 791
    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p4, v0

    aget v2, p3, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 792
    const/4 v1, 0x0

    .line 793
    :goto_1
    return v1

    .line 790
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected resizeShadowPanel(FFZZ)V
    .locals 10
    .parameter "width"
    .parameter "height"
    .parameter "updateColorBuffer"
    .parameter "updateVertexBuffer"

    .prologue
    const v9, 0x3d99999a

    const v8, -0x41e66666

    const/high16 v7, 0x3f00

    const/high16 v6, -0x4100

    const/4 v5, 0x0

    .line 1279
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    .line 1280
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    .line 1282
    if-eqz p3, :cond_0

    .line 1283
    const/16 v2, 0x20

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput v5, v0, v2

    const/4 v2, 0x1

    aput v5, v0, v2

    const/4 v2, 0x2

    aput v5, v0, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    aput v3, v0, v2

    const/4 v2, 0x4

    aput v5, v0, v2

    const/4 v2, 0x5

    aput v5, v0, v2

    const/4 v2, 0x6

    aput v5, v0, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x8

    aput v5, v0, v2

    const/16 v2, 0x9

    aput v5, v0, v2

    const/16 v2, 0xa

    aput v5, v0, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    const/high16 v4, 0x4110

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xc

    aput v5, v0, v2

    const/16 v2, 0xd

    aput v5, v0, v2

    const/16 v2, 0xe

    aput v5, v0, v2

    const/16 v2, 0xf

    aput v5, v0, v2

    const/16 v2, 0x10

    aput v5, v0, v2

    const/16 v2, 0x11

    aput v5, v0, v2

    const/16 v2, 0x12

    aput v5, v0, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    aput v3, v0, v2

    const/16 v2, 0x14

    aput v5, v0, v2

    const/16 v2, 0x15

    aput v5, v0, v2

    const/16 v2, 0x16

    aput v5, v0, v2

    const/16 v2, 0x17

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x18

    aput v5, v0, v2

    const/16 v2, 0x19

    aput v5, v0, v2

    const/16 v2, 0x1a

    aput v5, v0, v2

    const/16 v2, 0x1b

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    const/high16 v4, 0x4110

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0x1c

    aput v5, v0, v2

    const/16 v2, 0x1d

    aput v5, v0, v2

    const/16 v2, 0x1e

    aput v5, v0, v2

    const/16 v2, 0x1f

    aput v5, v0, v2

    .line 1304
    .local v0, colorBuffer:[F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    invoke-virtual {v2, v0}, Lcom/nemustech/tiffany/world/TFShadowPanel;->setColorBuffer([F)V

    .line 1307
    .end local v0           #colorBuffer:[F
    :cond_0
    if-eqz p4, :cond_1

    .line 1308
    const/16 v2, 0x18

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v7

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v5, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v8

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v7

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v9

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v5, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v7

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v7

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v5, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v5, v1, v2

    const/16 v2, 0xf

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v8

    aput v3, v1, v2

    const/16 v2, 0x10

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0x11

    aput v5, v1, v2

    const/16 v2, 0x12

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v9

    aput v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0x14

    aput v5, v1, v2

    const/16 v2, 0x15

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v3, v7

    aput v3, v1, v2

    const/16 v2, 0x16

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0x17

    aput v5, v1, v2

    .line 1340
    .local v1, vertexBuffer:[F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    invoke-virtual {v2, v1}, Lcom/nemustech/tiffany/world/TFShadowPanel;->setVertexBuffer([F)V

    .line 1342
    .end local v1           #vertexBuffer:[F
    :cond_1
    return-void
.end method

.method public reverseImage(II)V
    .locals 1
    .parameter "index"
    .parameter "reverseWay"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mReverseWay:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mReverseWay:[I

    aput p2, v0, p1

    .line 201
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildVertexAndTexCoord()V

    .line 202
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    goto :goto_0
.end method

.method scale([FIFFF)V
    .locals 2
    .parameter "xyz"
    .parameter "offset"
    .parameter "sx"
    .parameter "sy"
    .parameter "sz"

    .prologue
    .line 680
    add-int/lit8 v0, p2, 0x0

    aget v1, p1, v0

    mul-float/2addr v1, p3

    aput v1, p1, v0

    .line 681
    add-int/lit8 v0, p2, 0x1

    aget v1, p1, v0

    mul-float/2addr v1, p4

    aput v1, p1, v0

    .line 682
    add-int/lit8 v0, p2, 0x2

    aget v1, p1, v0

    mul-float/2addr v1, p5

    aput v1, p1, v0

    .line 683
    return-void
.end method

.method public setBackMaskOpacity(F)V
    .locals 0
    .parameter "opacity"

    .prologue
    .line 171
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskOpacity:F

    .line 172
    return-void
.end method

.method public setBorderShaodw(FF)V
    .locals 0
    .parameter "ratio"
    .parameter "darkAlpha"

    .prologue
    .line 1173
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowRatio:F

    .line 1174
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowDarkAlpha:F

    .line 1175
    return-void
.end method

.method public setDirectionDegree(I)Z
    .locals 1
    .parameter "degree"

    .prologue
    .line 95
    :goto_0
    if-gez p1, :cond_0

    .line 96
    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 97
    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-lt p1, v0, :cond_1

    .line 98
    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    .line 99
    :cond_1
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDirectionDegree:I

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setElapse(I)V
    .locals 0
    .parameter "msec"

    .prologue
    .line 179
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickElapse:I

    .line 180
    return-void
.end method

.method public setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 26
    .parameter "faceIndex"
    .parameter "bmp"
    .parameter "rectSet"

    .prologue
    .line 1180
    const/16 v19, 0x0

    .line 1182
    .local v19, result:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowRatio:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    if-nez p1, :cond_6

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowRatio:F

    move v7, v0

    mul-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1187
    .local v21, shadowBorderThickness:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v7, v21, 0x2

    add-int v25, v6, v7

    .line 1188
    .local v25, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v7, v21, 0x2

    add-int v16, v6, v7

    .line 1190
    .local v16, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowInflated:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 1192
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    move v6, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    move v7, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setSize(FF)V

    .line 1193
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowInflated:Z

    .line 1196
    :cond_0
    invoke-static/range {v25 .. v25}, Lcom/nemustech/tiffany/world/TFUtils;->getTextureLength(I)I

    move-result v24

    .line 1197
    .local v24, texWidth:I
    invoke-static/range {v16 .. v16}, Lcom/nemustech/tiffany/world/TFUtils;->getTextureLength(I)I

    move-result v23

    .line 1199
    .local v23, texHeight:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1202
    .local v18, inflatedFront:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1204
    new-instance v5, Landroid/graphics/Canvas;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1205
    .local v5, cvs:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 1207
    .local v10, paint:Landroid/graphics/Paint;
    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1208
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move v2, v8

    move/from16 v3, v25

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    move-object v3, v6

    invoke-super {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFModel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1209
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 1210
    :cond_1
    const/16 v19, 0x1

    .line 1212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskOpacity:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1215
    const/16 v11, 0x100

    .line 1219
    .local v11, BACK_MASK_LENGTH:I
    const/high16 v6, 0x4380

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBorderShadowRatio:F

    move v7, v0

    mul-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 1223
    const/16 v22, 0x100

    .line 1224
    .local v22, shadowBorderWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit16 v6, v6, 0x100

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int v20, v6, v7

    .line 1232
    .local v20, shadowBorderHeight:I
    :goto_0
    const-string v6, "TFPagePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shadow border width : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v6, "TFPagePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shadow border height : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v6, "TFPagePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shadow Length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/16 v6, 0x100

    const/16 v7, 0x100

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1240
    .local v13, backMask:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1241
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #cvs:Landroid/graphics/Canvas;
    invoke-direct {v5, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1244
    .restart local v5       #cvs:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    .line 1245
    .local v14, beginAlpha:I
    const/16 v15, 0xff

    .line 1248
    .local v15, endAlpha:I
    const/16 v17, 0x0

    .end local v11           #BACK_MASK_LENGTH:I
    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    .line 1250
    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1252
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1253
    const/4 v6, -0x1

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1254
    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    sub-int v8, v22, v17

    int-to-float v8, v8

    sub-int v9, v20, v17

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1248
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1228
    .end local v13           #backMask:Landroid/graphics/Bitmap;
    .end local v14           #beginAlpha:I
    .end local v15           #endAlpha:I
    .end local v17           #i:I
    .end local v20           #shadowBorderHeight:I
    .end local v22           #shadowBorderWidth:I
    .restart local v11       #BACK_MASK_LENGTH:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit16 v6, v6, 0x100

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int v22, v6, v7

    .line 1229
    .restart local v22       #shadowBorderWidth:I
    const/16 v20, 0x100

    .restart local v20       #shadowBorderHeight:I
    goto/16 :goto_0

    .line 1258
    .end local v11           #BACK_MASK_LENGTH:I
    .restart local v13       #backMask:Landroid/graphics/Bitmap;
    .restart local v14       #beginAlpha:I
    .restart local v15       #endAlpha:I
    .restart local v17       #i:I
    :cond_3
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1259
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move v6, v0

    div-int v6, v6, v21

    add-int/lit8 v12, v6, 0x0

    .line 1260
    .local v12, alpha:I
    const-string v6, "TFPagePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shadow alpha["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v10, v12, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1262
    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    sub-int v8, v22, v17

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    sub-int v9, v20, v17

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1266
    .end local v12           #alpha:I
    :cond_4
    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v7

    move v1, v8

    move v2, v9

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move-object v3, v7

    invoke-super {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFModel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1268
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1271
    .end local v13           #backMask:Landroid/graphics/Bitmap;
    .end local v14           #beginAlpha:I
    .end local v15           #endAlpha:I
    .end local v17           #i:I
    .end local v20           #shadowBorderHeight:I
    .end local v22           #shadowBorderWidth:I
    :cond_5
    const/4 v6, 0x1

    .line 1274
    .end local v5           #cvs:Landroid/graphics/Canvas;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v16           #height:I
    .end local v18           #inflatedFront:Landroid/graphics/Bitmap;
    .end local v21           #shadowBorderThickness:I
    .end local v23           #texHeight:I
    .end local v24           #texWidth:I
    .end local v25           #width:I
    :goto_3
    return v6

    :cond_6
    invoke-super/range {p0 .. p3}, Lcom/nemustech/tiffany/world/TFModel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v6

    goto :goto_3
.end method

.method public setOnUpdateVertexListener(Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mOnUpdateVertex:Lcom/nemustech/tiffany/world/TFPagePanel$OnUpdateVertexListener;

    .line 1153
    return-void
.end method

.method setPageOverInterpolator(Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    .line 1071
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;->getBufferCount()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mXYL:[F

    .line 1072
    return-void
.end method

.method public setPageShadow(FF)V
    .locals 9
    .parameter "ratio"
    .parameter "darkAlpha"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const-wide/high16 v5, 0x4000

    const/4 v4, 0x1

    .line 1161
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowAlpha:F

    .line 1162
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowRatio:F

    .line 1163
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    .line 1164
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    float-to-double v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    float-to-double v2, v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    .line 1165
    new-instance v0, Lcom/nemustech/tiffany/world/TFShadowPanel;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFShadowPanel;-><init>(FFII)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    .line 1166
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    mul-float/2addr v1, v8

    iget v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v7, v7}, Lcom/nemustech/tiffany/world/TFShadowPanel;->locate(FFF)V

    .line 1167
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowPanel:Lcom/nemustech/tiffany/world/TFShadowPanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iput-object v1, v0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 1168
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowWidth:F

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBottomShadowHeight:F

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/nemustech/tiffany/world/TFPagePanel;->resizeShadowPanel(FFZZ)V

    .line 1169
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWidth:F

    .line 79
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHeight:F

    .line 81
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mInterpolator:Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;->getElemCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v1, 0x2

    .line 82
    .local v0, count:I
    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->newBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 83
    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->newBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 84
    mul-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->newBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mBackMaskColorBuffer:Ljava/nio/FloatBuffer;

    .line 87
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildVertexAndTexCoord()V

    .line 88
    return-void
.end method

.method public setTimeLine(F)Z
    .locals 2
    .parameter "t"

    .prologue
    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p1, v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    move-result v0

    return v0
.end method

.method public setTimeLine(FFI)Z
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nemustech/tiffany/world/TFPagePanel;->setTimeLine(FFILandroid/view/animation/Interpolator;)Z

    move-result v0

    return v0
.end method

.method public setTimeLine(FFILandroid/view/animation/Interpolator;)Z
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "duration"
    .parameter "interpolator"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    cmpg-float v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v3

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 136
    :cond_1
    cmpg-float v0, p2, v2

    if-ltz v0, :cond_2

    cmpl-float v0, p2, v3

    if-lez v0, :cond_3

    :cond_2
    move v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_3
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineStart:F

    .line 140
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeLineEnd:F

    .line 141
    iput p3, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mDuration:I

    .line 142
    iput-object p4, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTimeInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    iput v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTicks:I

    .line 144
    iput v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    .line 145
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildVertexAndTexCoord()V

    .line 146
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 147
    const/4 v0, 0x1

    goto :goto_0
.end method

.method swapN([FIII)V
    .locals 4
    .parameter "m"
    .parameter "a"
    .parameter "b"
    .parameter "n"

    .prologue
    .line 782
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 783
    mul-int v2, p2, p4

    add-int/2addr v2, v0

    aget v1, p1, v2

    .line 784
    .local v1, temp:F
    mul-int v2, p2, p4

    add-int/2addr v2, v0

    mul-int v3, p3, p4

    add-int/2addr v3, v0

    aget v3, p1, v3

    aput v3, p1, v2

    .line 785
    mul-int v2, p3, p4

    add-int/2addr v2, v0

    aput v1, p1, v2

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    .end local v1           #temp:F
    :cond_0
    return-void
.end method

.method updateHitPoint()V
    .locals 23

    .prologue
    .line 359
    invoke-super/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFModel;->updateHitPoint()V

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    move v6, v0

    mul-int/lit8 v8, v6, 0x3

    .line 362
    .local v8, hitPointOffset:I
    add-int/lit8 v10, v8, 0x4

    .line 363
    .local v10, uvtOffset:I
    add-int/lit8 v12, v10, 0x3

    .line 364
    .local v12, workOffset:I
    add-int/lit8 v6, v12, 0x20

    new-array v2, v6, [F

    .line 366
    .local v2, work:[F
    const/high16 v22, 0x7f80

    .line 368
    .local v22, tMin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v8}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mVertexCount:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move/from16 v0, v21

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 373
    add-int/lit8 v6, v21, 0x0

    mul-int/lit8 v3, v6, 0x3

    .line 374
    .local v3, a:I
    add-int/lit8 v6, v21, 0x1

    mul-int/lit8 v4, v6, 0x3

    .line 375
    .local v4, b:I
    add-int/lit8 v6, v21, 0x2

    mul-int/lit8 v5, v6, 0x3

    .line 376
    .local v5, c:I
    rem-int/lit8 v6, v21, 0x2

    if-eqz v6, :cond_0

    .line 378
    move/from16 v19, v4

    .line 379
    .local v19, d:I
    move v4, v5

    .line 380
    move/from16 v5, v19

    .line 382
    .end local v19           #d:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitTestLine:[F

    move-object v6, v0

    move-object v7, v2

    move-object v9, v2

    move-object v11, v2

    invoke-static/range {v2 .. v12}, Lcom/nemustech/tiffany/world/TFModel;->doHitTestVertexTrigangle([FIII[F[FI[FI[FI)I

    move-result v20

    .line 388
    .local v20, hit:I
    if-ltz v20, :cond_1

    add-int/lit8 v6, v10, 0x2

    aget v6, v2, v6

    cmpl-float v6, v22, v6

    if-ltz v6, :cond_1

    .line 389
    add-int/lit8 v6, v10, 0x2

    aget v22, v2, v6

    .line 390
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitFace:I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitPoint:[F

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x4

    invoke-static {v2, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 394
    .end local v3           #a:I
    .end local v4           #b:I
    .end local v5           #c:I
    .end local v20           #hit:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitFace:I

    move v6, v0

    if-ltz v6, :cond_3

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitPoint:[F

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FI)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitPoint:[F

    move-object v13, v0

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mMatrix:[F

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFPagePanel;->mHitPoint:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 399
    :cond_3
    return-void
.end method

.method protected updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z
    .locals 3
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    .line 212
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickElapse:I

    if-lt v0, v1, :cond_1

    .line 213
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickElapse:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickAccum:I

    .line 214
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTicks:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTickElapse:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mTicks:I

    .line 215
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel;->buildVertexAndTexCoord()V

    .line 217
    :cond_1
    iput v2, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mEffectStatus:I

    .line 218
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    :cond_2
    :goto_1
    move v0, v2

    .line 226
    goto :goto_0

    .line 221
    :cond_3
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mEffectStatus:I

    if-ne v0, v2, :cond_2

    .line 222
    const/4 v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mEffectStatus:I

    .line 223
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    goto :goto_1
.end method

.method yOnLine2D([FI[FIF)F
    .locals 5
    .parameter "p1"
    .parameter "p1Offset"
    .parameter "p2"
    .parameter "p2Offset"
    .parameter "x"

    .prologue
    .line 731
    add-int/lit8 v2, p2, 0x0

    aget v2, p1, v2

    sub-float v2, p5, v2

    add-int/lit8 v3, p4, 0x0

    aget v3, p3, v3

    add-int/lit8 v4, p2, 0x0

    aget v4, p1, v4

    sub-float/2addr v3, v4

    div-float v0, v2, v3

    .line 732
    .local v0, t:F
    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, p4, 0x1

    aget v3, p3, v3

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 733
    .local v1, y:F
    return v1
.end method
