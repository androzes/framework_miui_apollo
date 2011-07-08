.class public Lcom/nemustech/tiffany/world/TFModel;
.super Lcom/nemustech/tiffany/world/TFObject;
.source "TFModel.java"


# static fields
.field static final MAX_NUM_RESERVED_PARAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TFModel"


# instance fields
.field protected mBeautyReflection:Z

.field mFacingFront:Z

.field protected mFadeTargetOpacity:F

.field mHitFace:I

.field mHitPoint:[F

.field mHitTestLine:[F

.field protected mHolder:Lcom/nemustech/tiffany/world/TFHolder;

.field mItemIndex:I

.field private mLockImageCache:Z

.field protected mOpacity:F

.field protected mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

.field mReservedParam:[I

.field mResources:Landroid/content/res/Resources;

.field mShouldDraw:Z

.field protected mShowBackFace:Z

.field mTapAbsX:F

.field mTapAbsY:F

.field mTextureBuffer:Ljava/nio/FloatBuffer;

.field mTextureFilter:[I

.field protected mTextures:Lcom/nemustech/tiffany/world/TFTextures;

.field protected mTouchedIndex:I

.field protected mTranslucentMode:Z

.field mUnMVBuffer:[F

.field mVertexBuffer:Ljava/nio/FloatBuffer;

.field mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 23
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFObject;-><init>()V

    .line 847
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    .line 848
    iput v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitFace:I

    .line 849
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    .line 850
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mUnMVBuffer:[F

    .line 856
    iput v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    .line 866
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mReservedParam:[I

    .line 24
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    .line 25
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mFacingFront:Z

    .line 27
    new-instance v0, Lcom/nemustech/tiffany/world/TFTextures;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/world/TFTextures;-><init>(Lcom/nemustech/tiffany/world/TFModel;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    .line 28
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    .line 29
    return-void
.end method

.method private applyOpacity(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 8
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    const-wide/16 v6, 0x0

    .line 34
    iget-wide v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_1

    .line 36
    iget-wide v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    iget-wide v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeInitialTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 38
    iput-wide v6, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeInitialTime:J

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 66
    :cond_1
    return-void

    .line 43
    :cond_2
    iget v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    iget v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeTargetOpacity:F

    iget v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    sub-float/2addr v2, v3

    int-to-float v3, p2

    iget-wide v4, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 44
    .local v0, newOpacity:F
    iget-wide v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    int-to-long v3, p2

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    .line 46
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 48
    const/high16 v0, 0x3f80

    .line 49
    iput-wide v6, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    .line 59
    :cond_3
    :goto_1
    iput v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    .line 61
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFModel;->isInEffectAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x2

    iput v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mEffectStatus:I

    goto :goto_0

    .line 51
    :cond_4
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 53
    const/4 v0, 0x0

    .line 54
    iput-wide v6, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    goto :goto_1
.end method

.method static doHitTestVertexTrigangle([FIII[F[FI[FI[FI)I
    .locals 23
    .parameter "vertex"
    .parameter "v0Offset"
    .parameter "v1Offset"
    .parameter "v2Offset"
    .parameter "hitTestLine"
    .parameter "hitPoint"
    .parameter "hitPointOffset"
    .parameter "uvt"
    .parameter "uvtOffset"
    .parameter "workBuffer"
    .parameter "workOffset"

    .prologue
    .line 793
    add-int/lit8 v16, p10, 0x0

    .line 794
    .local v16, _v0:I
    add-int/lit8 v22, p10, 0x4

    .line 795
    .local v22, _v1_0:I
    add-int/lit8 v10, p10, 0x8

    .line 796
    .local v10, _v2_0:I
    add-int/lit8 v14, p10, 0xc

    .line 797
    .local v14, _p0:I
    add-int/lit8 v8, p10, 0x10

    .line 798
    .local v8, _p1_0:I
    add-int/lit8 v6, p10, 0x14

    .line 799
    .local v6, _pvec:I
    add-int/lit8 v18, p10, 0x18

    .line 800
    .local v18, _qvec:I
    add-int/lit8 v12, p10, 0x1c

    .line 801
    .local v12, _tvec:I
    move-object/from16 v5, p9

    .line 802
    .local v5, m:[F
    const p9, 0x358637bd

    .line 807
    .local p9, EPSILON:F
    move-object v0, v5

    move/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 808
    move-object v0, v5

    move/from16 v1, v22

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 809
    move-object v0, v5

    move/from16 v1, v22

    move-object v2, v5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI)V

    .line 810
    move-object v0, v5

    move v1, v10

    move-object/from16 v2, p0

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 811
    move-object v0, v5

    move v1, v10

    move-object v2, v5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI)V

    .line 812
    const/16 p0, 0x0

    move-object v0, v5

    move v1, v14

    move-object/from16 v2, p4

    move/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 813
    .end local p0
    const/16 p0, 0x4

    move-object v0, v5

    move v1, v8

    move-object/from16 v2, p4

    move/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FI[FI)V

    .line 814
    invoke-static {v5, v8, v5, v14}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI)V

    move-object v7, v5

    move-object v9, v5

    .line 816
    invoke-static/range {v5 .. v10}, Lcom/nemustech/tiffany/world/TFVector3D;->cross([FI[FI[FI)V

    .line 817
    move-object v0, v5

    move/from16 v1, v22

    move-object v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result p0

    .line 818
    .local p0, det:F
    const p1, -0x4a79c843

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    .end local p1
    const p1, 0x358637bd

    cmpg-float p1, p0, p1

    if-gez p1, :cond_0

    .line 819
    const/16 p0, -0x1

    .line 843
    .end local p0           #det:F
    .end local p2
    .end local p3
    .end local p4
    .end local p9           #EPSILON:F
    :goto_0
    return p0

    .line 820
    .restart local p0       #det:F
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p9       #EPSILON:F
    :cond_0
    const/high16 p1, 0x3f80

    div-float p1, p1, p0

    .local p1, inv_det:F
    move-object v11, v5

    move-object v13, v5

    move-object v15, v5

    .line 822
    invoke-static/range {v11 .. v16}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI[FI)V

    .line 823
    invoke-static {v5, v12, v5, v6}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result p2

    .end local p2
    mul-float p2, p2, p1

    .line 824
    .local p2, u:F
    const/16 p3, 0x0

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_1

    .end local p3
    const/high16 p3, 0x3f80

    cmpl-float p3, p2, p3

    if-lez p3, :cond_2

    .line 825
    :cond_1
    const/16 p0, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v17, v5

    move-object/from16 v19, v5

    move/from16 v20, v12

    move-object/from16 v21, v5

    .line 827
    invoke-static/range {v17 .. v22}, Lcom/nemustech/tiffany/world/TFVector3D;->cross([FI[FI[FI)V

    .line 828
    move-object v0, v5

    move v1, v8

    move-object v2, v5

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result p3

    mul-float p3, p3, p1

    .line 829
    .local p3, v:F
    const/16 p4, 0x0

    cmpg-float p4, p3, p4

    if-ltz p4, :cond_3

    .end local p4
    add-float p4, p2, p3

    const/high16 p9, 0x3f80

    cmpl-float p4, p4, p9

    if-lez p4, :cond_4

    .line 830
    .end local p9           #EPSILON:F
    :cond_3
    const/16 p0, -0x1

    goto :goto_0

    .line 832
    :cond_4
    move-object v0, v5

    move v1, v10

    move-object v2, v5

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result p4

    mul-float p1, p1, p4

    .line 833
    .local p1, t:F
    if-eqz p5, :cond_5

    .line 834
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object v2, v5

    move v3, v8

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/world/TFVector3D;->mul([FI[FIF)V

    .line 835
    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object v2, v5

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Lcom/nemustech/tiffany/world/TFVector3D;->add([FI[FI)V

    .line 837
    :cond_5
    if-eqz p7, :cond_6

    .line 838
    add-int/lit8 p4, p8, 0x0

    aput p2, p7, p4

    .line 839
    add-int/lit8 p2, p8, 0x1

    aput p3, p7, p2

    .line 840
    .end local p2           #u:F
    add-int/lit8 p2, p8, 0x2

    aput p1, p7, p2

    .line 843
    :cond_6
    const/16 p1, 0x0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_7

    .end local p0           #det:F
    .end local p1           #t:F
    const/16 p0, 0x0

    goto :goto_0

    :cond_7
    const/16 p0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method adjustTextureCoordination(Landroid/graphics/Rect;III)V
    .locals 0
    .parameter "rectTexture"
    .parameter "index"
    .parameter "textureWidth"
    .parameter "textureHeight"

    .prologue
    .line 332
    return-void
.end method

.method public attachTo(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;
    .locals 3
    .parameter "holder"

    .prologue
    .line 126
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    .line 128
    .local v0, error:Lcom/nemustech/tiffany/world/TFError;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFModel;->detachFrom(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v1, :cond_1

    .line 136
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ALREADY_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

    .line 137
    const-string v1, "TFModel"

    const-string v2, "Tried to attach to a holder but already attached."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFHolder;->getModelCount()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Lcom/nemustech/tiffany/world/TFHolder;->addModel(Lcom/nemustech/tiffany/world/TFModel;I)V

    goto :goto_0
.end method

.method public attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;
    .locals 3
    .parameter "world"

    .prologue
    .line 101
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    .line 102
    .local v0, error:Lcom/nemustech/tiffany/world/TFError;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v1, :cond_0

    .line 105
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ALREADY_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

    .line 106
    const-string v1, "TFModel"

    const-string v2, "Tried to attach to the world but already attached."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 111
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v1, p0}, Lcom/nemustech/tiffany/world/TFRenderer;->add(Lcom/nemustech/tiffany/world/TFModel;)V

    goto :goto_0
.end method

.method public banChiselFringe(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureFilter:[I

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureFilter:[I

    .line 635
    if-eqz p1, :cond_1

    .line 636
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureFilter:[I

    const/16 v1, 0x2600

    aput v1, v0, v2

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextureFilter:[I

    const/16 v1, 0x2601

    aput v1, v0, v2

    goto :goto_0
.end method

.method public convertModelCoord([FI[FI[FI)V
    .locals 17
    .parameter "modelCoord"
    .parameter "modelCoordOffset"
    .parameter "worldCoord"
    .parameter "worldCoordOffset"
    .parameter "screenCoord"
    .parameter "screenCoordOffset"

    .prologue
    .line 739
    const/16 v2, 0x8

    new-array v1, v2, [F

    .line 740
    .local v1, buf:[F
    const/4 v11, 0x0

    .line 741
    .local v11, v0:I
    const/4 v12, 0x4

    .line 743
    .local v12, v1:I
    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x0

    aget v3, p1, v3

    aput v3, v1, v2

    .line 744
    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget v3, p1, v3

    aput v3, v1, v2

    .line 745
    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    aget v3, p1, v3

    aput v3, v1, v2

    .line 746
    const/4 v2, 0x3

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    .line 747
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mMatrix:[F

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 749
    if-eqz p3, :cond_0

    .line 750
    add-int/lit8 v2, p4, 0x0

    const/4 v3, 0x4

    aget v3, v1, v3

    aput v3, p3, v2

    .line 751
    add-int/lit8 v2, p4, 0x1

    const/4 v3, 0x5

    aget v3, v1, v3

    aput v3, p3, v2

    .line 752
    add-int/lit8 v2, p4, 0x2

    const/4 v3, 0x6

    aget v3, v1, v3

    aput v3, p3, v2

    .line 754
    :cond_0
    if-eqz p5, :cond_1

    .line 755
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFCamera;->mMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v5, v1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 757
    const/high16 v2, 0x3f80

    const/4 v3, 0x3

    aget v3, v1, v3

    div-float v9, v2, v3

    .line 758
    .local v9, rw:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mLeft:I

    int-to-float v8, v2

    .line 759
    .local v8, left:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mTop:I

    int-to-float v10, v2

    .line 760
    .local v10, top:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mWidth:I

    int-to-float v14, v2

    .line 761
    .local v14, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    iget v2, v2, Lcom/nemustech/tiffany/world/TFRenderer;->mHeight:I

    int-to-float v7, v2

    .line 762
    .local v7, height:F
    const/4 v2, 0x0

    aget v2, v1, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    mul-float/2addr v2, v14

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float v15, v8, v2

    .line 763
    .local v15, x:F
    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    aget v3, v1, v3

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    mul-float/2addr v2, v7

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float v16, v10, v2

    .line 764
    .local v16, y:F
    const/4 v2, 0x2

    aget v2, v1, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    const/high16 v3, 0x3f00

    mul-float v13, v2, v3

    .line 765
    .local v13, w:F
    add-int/lit8 v2, p6, 0x0

    aput v15, p5, v2

    .line 766
    add-int/lit8 v2, p6, 0x1

    aput v16, p5, v2

    .line 767
    add-int/lit8 v2, p6, 0x2

    aput v13, p5, v2

    .line 769
    .end local v7           #height:F
    .end local v8           #left:F
    .end local v9           #rw:F
    .end local v10           #top:F
    .end local v13           #w:F
    .end local v14           #width:F
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_1
    return-void
.end method

.method public deleteAllImageResource()V
    .locals 3

    .prologue
    .line 449
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFTextures;->getMaxTextureIndex()I

    move-result v1

    .line 451
    .local v1, maxTextureIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFModel;->deleteImageResource(I)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method public deleteImageResource(I)V
    .locals 1
    .parameter "faceIndex"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFTextures;->deleteImageResource(I)V

    .line 434
    return-void
.end method

.method public detachFrom(Lcom/nemustech/tiffany/world/TFHolder;)Lcom/nemustech/tiffany/world/TFError;
    .locals 1
    .parameter "holder"

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->detachFrom(Lcom/nemustech/tiffany/world/TFHolder;Z)Lcom/nemustech/tiffany/world/TFError;

    move-result-object v0

    return-object v0
.end method

.method public detachFrom(Lcom/nemustech/tiffany/world/TFHolder;Z)Lcom/nemustech/tiffany/world/TFError;
    .locals 4
    .parameter "holder"
    .parameter "bClonePlaceHolder"

    .prologue
    const/4 v3, 0x0

    const-string v2, "TFModel"

    .line 195
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    .line 197
    .local v0, error:Lcom/nemustech/tiffany/world/TFError;
    if-eqz p1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-nez v1, :cond_0

    .line 199
    const-string v1, "TFModel"

    const-string v1, "Model not attached to any holder. Nothing will happen."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->NOT_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

    .line 215
    :goto_0
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    .line 216
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 222
    :goto_1
    return-object v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eq v1, p1, :cond_1

    .line 203
    const-string v1, "TFModel"

    const-string v1, "Model not attached to the holder attempting to detach from. Nothing will happen."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->INVALID_PARAM:Lcom/nemustech/tiffany/world/TFError;

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v2, p0}, Lcom/nemustech/tiffany/world/TFHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFHolder;->removeModel(I)Lcom/nemustech/tiffany/world/TFModel;

    .line 208
    if-eqz p2, :cond_2

    .line 209
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFHolder;->clone()Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    goto :goto_0

    .line 212
    :cond_2
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    goto :goto_0

    .line 219
    :cond_3
    const-string v1, "TFModel"

    const-string v1, "Arg 1(holder to detach from) is null. Nothing will happen."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->INVALID_PARAM:Lcom/nemustech/tiffany/world/TFError;

    goto :goto_1
.end method

.method public detachFrom(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;
    .locals 4
    .parameter "world"

    .prologue
    const/4 v3, 0x0

    .line 247
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    .line 248
    .local v0, error:Lcom/nemustech/tiffany/world/TFError;
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v2, p0}, Lcom/nemustech/tiffany/world/TFHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nemustech/tiffany/world/TFHolder;->removeModel(I)Lcom/nemustech/tiffany/world/TFModel;

    .line 250
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v1, v1, Lcom/nemustech/tiffany/world/TFWorld;->mRenderer:Lcom/nemustech/tiffany/world/TFRenderer;

    invoke-virtual {v1, p0}, Lcom/nemustech/tiffany/world/TFRenderer;->remove(Lcom/nemustech/tiffany/world/TFModel;)V

    .line 255
    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 261
    :goto_0
    return-object v0

    .line 258
    :cond_1
    const-string v1, "TFModel"

    const-string v2, "Tried to detach a model which is already detached."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->NOT_ATTACHED:Lcom/nemustech/tiffany/world/TFError;

    goto :goto_0
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    const/16 v4, 0xb44

    .line 344
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/nemustech/tiffany/world/TFPlaceHolder;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    .line 347
    :cond_0
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    invoke-virtual {p0, p1, p2, v2}, Lcom/nemustech/tiffany/world/TFModel;->updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->applyOpacity(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v2, v2, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-nez v2, :cond_2

    .line 352
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v1, v0

    .line 353
    .local v1, gl2:Lcom/nemustech/tiffany/world/TFGL;
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 355
    .end local v1           #gl2:Lcom/nemustech/tiffany/world/TFGL;
    :cond_2
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    if-eqz v2, :cond_3

    .line 356
    iget-boolean v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mShowBackFace:Z

    if-eqz v2, :cond_4

    .line 357
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 363
    :cond_3
    :goto_0
    return-void

    .line 359
    :cond_4
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 360
    const/16 v2, 0x405

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    goto :goto_0
.end method

.method public fade(FJ)V
    .locals 1
    .parameter "targetOpacity"
    .parameter "durationTime"

    .prologue
    .line 77
    iput-wide p2, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeInitialTime:J

    .line 78
    iput-wide p2, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    .line 79
    iput p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeTargetOpacity:F

    .line 80
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 81
    :cond_0
    return-void
.end method

.method genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 1
    .parameter "gl"
    .parameter "bForce"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/TFTextures;->genTextures(Ljavax/microedition/khronos/opengles/GL10;Z)V

    .line 367
    return-void
.end method

.method public getFaceImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "faceIndex"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/TFTextures;->getTextureInfo(I)Lcom/nemustech/tiffany/world/TFTextureInfo;

    move-result-object v0

    .line 285
    .local v0, texInfo:Lcom/nemustech/tiffany/world/TFTextureInfo;
    if-eqz v0, :cond_0

    .line 286
    iget-object v1, v0, Lcom/nemustech/tiffany/world/TFTextureInfo;->bmp:Landroid/graphics/Bitmap;

    .line 288
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHitFace([F)I
    .locals 4
    .parameter "near"

    .prologue
    const/4 v3, 0x0

    .line 687
    const/high16 v1, -0x80

    aput v1, p1, v3

    .line 689
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    const/4 v1, -0x1

    .line 693
    :goto_1
    return v1

    .line 689
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, p1, v3

    .line 693
    iget v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitFace:I

    goto :goto_1
.end method

.method public getHitPoint([FI)V
    .locals 3
    .parameter "result"
    .parameter "rOffset"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    return-void
.end method

.method public getHitPointOnModel([FI)V
    .locals 3
    .parameter "result"
    .parameter "rOffset"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    return-void
.end method

.method public getHitPointOnWorld([FI)V
    .locals 2
    .parameter "result"
    .parameter "rOffset"

    .prologue
    const/4 v1, 0x4

    .line 716
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    invoke-static {v0, v1, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    return-void
.end method

.method public getHitTestLineOnModel([FI)V
    .locals 3
    .parameter "result"
    .parameter "rOffset"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    return-void
.end method

.method public getHolder()Lcom/nemustech/tiffany/world/TFHolder;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    return-object v0
.end method

.method public getImageCacheLockStatus()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mLockImageCache:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/world/TFHolder;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    .line 305
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld;->getModelIndex(Lcom/nemustech/tiffany/world/TFModel;)I

    move-result v0

    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mItemIndex:I

    return v0
.end method

.method public getLockStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 489
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->getLockStatus()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 492
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFObject;->getLockStatus()Z

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    return v0
.end method

.method public getPlaceHolder()Lcom/nemustech/tiffany/world/TFHolder;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    return-object v0
.end method

.method public getTapAbsX()F
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTapAbsX:F

    return v0
.end method

.method public getTapAbsY()F
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTapAbsY:F

    return v0
.end method

.method handleDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->onTouchDown(FF)V

    .line 541
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
    .line 548
    invoke-virtual/range {p0 .. p5}, Lcom/nemustech/tiffany/world/TFModel;->onTouchDrag(FFFFI)V

    .line 549
    return-void
.end method

.method handleTap(I)V
    .locals 2
    .parameter "selectedIndex"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mSelectListener:Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;

    invoke-interface {v0, p0, p1}, Lcom/nemustech/tiffany/world/TFWorld$OnSelectListener;->onSelected(Lcom/nemustech/tiffany/world/TFModel;I)Z

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    const-string v0, "TFModel"

    const-string v1, "Got handleTap but locked or no listener registered or this model has been detached already."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleUp(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFModel;->onTouchUp(FF)V

    .line 545
    return-void
.end method

.method public isDrawable()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mShouldDraw:Z

    return v0
.end method

.method isGoingToStop()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFObject;->isGoingToStop()Z

    move-result v0

    .line 339
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/nemustech/tiffany/world/TFObject;->isGoingToStop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFHolder;->isGoingToStop()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    return v0
.end method

.method loadTextures(Z)V
    .locals 2
    .parameter "bForce"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, p1}, Lcom/nemustech/tiffany/world/TFTextures;->loadTextures(Landroid/content/res/Resources;Z)V

    .line 497
    return-void
.end method

.method public lockImageCache()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mLockImageCache:Z

    .line 438
    return-void
.end method

.method protected onTouchDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 509
    return-void
.end method

.method protected onTouchDrag(FFFFI)V
    .locals 2
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mActOnDrag:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-super/range {p0 .. p5}, Lcom/nemustech/tiffany/world/TFObject;->calcForce(FFFFI)V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    iput v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mForceFromHead:F

    .line 524
    iput v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mForceFromSide:F

    goto :goto_0
.end method

.method protected onTouchUp(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 512
    return-void
.end method

.method public setBackFaceVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mShowBackFace:Z

    .line 328
    return-void
.end method

.method public setBeautyReflection(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mBeautyReflection:Z

    .line 574
    return-void
.end method

.method public setFaceFront(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mFacingFront:Z

    .line 561
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 562
    :cond_0
    return-void
.end method

.method public setImageResource(ILandroid/content/res/Resources;I)Lcom/nemustech/tiffany/world/TFError;
    .locals 1
    .parameter "faceIndex"
    .parameter "resources"
    .parameter "resource_id"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFTextures;->setImageResource(ILandroid/content/res/Resources;I)V

    .line 395
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFModel;->mResources:Landroid/content/res/Resources;

    .line 396
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    return-object v0
.end method

.method public setImageResource(ILjava/lang/String;)Lcom/nemustech/tiffany/world/TFError;
    .locals 1
    .parameter "faceIndex"
    .parameter "fileName"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/TFTextures;->setImageResource(ILjava/lang/String;)V

    .line 380
    sget-object v0, Lcom/nemustech/tiffany/world/TFError;->ERROR_NONE:Lcom/nemustech/tiffany/world/TFError;

    return-object v0
.end method

.method public setImageResource(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "faceIndex"
    .parameter "bmp"

    .prologue
    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nemustech/tiffany/world/TFModel;->setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setImageResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "faceIndex"
    .parameter "bmp"
    .parameter "rectSet"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mTextures:Lcom/nemustech/tiffany/world/TFTextures;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFTextures;->setBitmapResource(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setItemIndex(I)V
    .locals 0
    .parameter "itemIndex"

    .prologue
    .line 319
    iput p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mItemIndex:I

    .line 320
    return-void
.end method

.method public setOpacity(F)V
    .locals 2
    .parameter "opacity"

    .prologue
    .line 618
    iput p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mOpacity:F

    .line 619
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mFadeRemainingTime:J

    .line 620
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 621
    :cond_0
    return-void
.end method

.method public setPlaceHolder(Lcom/nemustech/tiffany/world/TFHolder;)V
    .locals 1
    .parameter "placeHolder"

    .prologue
    .line 484
    invoke-virtual {p1}, Lcom/nemustech/tiffany/world/TFHolder;->clone()Lcom/nemustech/tiffany/world/TFPlaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mPlaceHolder:Lcom/nemustech/tiffany/world/TFPlaceHolder;

    .line 485
    return-void
.end method

.method setTouchedIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 552
    iput p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mTouchedIndex:I

    .line 553
    return-void
.end method

.method public setTranslulcent(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mTranslucentMode:Z

    .line 578
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 588
    :cond_0
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFModel;->mVisible:Z

    .line 589
    return-void
.end method

.method public showEffect(II)V
    .locals 0
    .parameter "effectID"
    .parameter "faceIndex"

    .prologue
    .line 506
    return-void
.end method

.method public unlockImageCache()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mLockImageCache:Z

    .line 442
    return-void
.end method

.method updateHitPoint()V
    .locals 3

    .prologue
    .line 677
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitPoint:[F

    const/high16 v2, 0x7fc0

    aput v2, v1, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitFace:I

    .line 680
    return-void
.end method

.method updateHitTestLine([F)V
    .locals 11
    .parameter "hitTestLine"

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 664
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFModel;->mUnMVBuffer:[F

    .line 665
    .local v2, m:[F
    const/4 v9, 0x0

    .line 667
    .local v9, _invertMV:I
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mMatrix:[F

    invoke-static {v2, v1, v0, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 668
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 669
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFModel;->mHitTestLine:[F

    move v4, v10

    move-object v5, v2

    move v6, v1

    move-object v7, p1

    move v8, v10

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 670
    return-void
.end method
