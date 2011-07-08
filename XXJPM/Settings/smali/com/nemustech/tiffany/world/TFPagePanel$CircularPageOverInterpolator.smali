.class public Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;
.super Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;
.source "TFPagePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFPagePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularPageOverInterpolator"
.end annotation


# static fields
.field public static final CIRCLE_N:I = 0x10

.field public static final NELEM:I = 0x3

.field public static final RADIUS:F = 0.1f

.field public static final pi:F = 3.1415927f

.field public static final pi3_2:F = 4.712389f

.field public static final pi_2:F = 1.5707964f


# instance fields
.field public final mCircleN:I

.field public final mR:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 923
    const/16 v0, 0x10

    const v1, 0x3dcccccd

    invoke-direct {p0, v0, v1}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;-><init>(IF)V

    .line 924
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .parameter "circleN"
    .parameter "radius"

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFPagePanel$PageOverInterpolator;-><init>()V

    .line 931
    iput p1, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mCircleN:I

    .line 932
    iput p2, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    .line 933
    return-void
.end method

.method protected static fcos(F)F
    .locals 2
    .parameter "rad"

    .prologue
    .line 1032
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected static fsin(F)F
    .locals 2
    .parameter "rad"

    .prologue
    .line 1029
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected static intCeil(F)I
    .locals 2
    .parameter "f"

    .prologue
    .line 1035
    float-to-int v0, p0

    .line 1036
    .local v0, i:I
    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    .line 1037
    add-int/lit8 v1, v0, 0x1

    .line 1038
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getBufferCount()I
    .locals 1

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->getElemCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getElemCount()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mCircleN:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public interpolate(F[F)I
    .locals 10
    .parameter "t"
    .parameter "xyl"

    .prologue
    .line 945
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 946
    const/4 p1, 0x0

    .line 947
    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 948
    const/high16 p1, 0x3f80

    .line 950
    :cond_1
    const v0, 0x40490fdb

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    mul-float v7, v0, v1

    .line 951
    .local v7, pi_r:F
    const/high16 v0, 0x3f80

    add-float/2addr v0, v7

    mul-float v6, p1, v0

    .line 953
    .local v6, ll:F
    const/4 v1, 0x0

    .line 955
    .local v1, pos:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->setPoint(I[FFFF)I

    move-result v1

    .line 956
    const/high16 v0, 0x3f80

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_4

    .line 957
    const/high16 v0, 0x3f80

    sub-float v3, v0, v6

    const/4 v4, 0x0

    const/high16 v0, 0x3f80

    sub-float v5, v0, v6

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->setPoint(I[FFFF)I

    move-result v1

    .line 958
    cmpl-float v0, v6, v7

    if-lez v0, :cond_3

    const v0, 0x40490fdb

    move v9, v0

    .line 959
    .local v9, theta:F
    :goto_0
    invoke-virtual {p0, v1, p2, v9}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->roll(I[FF)I

    move-result v1

    .line 960
    const/high16 v0, 0x3f80

    const/4 v2, 0x3

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    sub-float v8, v0, v2

    .line 961
    .local v8, remain:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_2

    .line 962
    const/4 v0, 0x3

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x0

    aget v0, p2, v0

    sub-float v3, v0, v8

    .line 963
    .local v3, endX:F
    const/4 v0, 0x3

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v4, p2, v0

    .line 964
    .local v4, endY:F
    const/high16 v5, 0x3f80

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->setPoint(I[FFFF)I

    move-result v1

    .line 975
    .end local v3           #endX:F
    .end local v4           #endY:F
    :cond_2
    :goto_1
    div-int/lit8 v0, v1, 0x3

    return v0

    .line 958
    .end local v8           #remain:F
    .end local v9           #theta:F
    :cond_3
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    div-float v0, v6, v0

    move v9, v0

    goto :goto_0

    .line 968
    :cond_4
    const v0, 0x40490fdb

    const/high16 v2, 0x3f80

    sub-float v2, v6, v2

    iget v3, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    div-float/2addr v2, v3

    sub-float v9, v0, v2

    .line 969
    .restart local v9       #theta:F
    invoke-virtual {p0, v1, p2, v9}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->unroll(I[FF)I

    move-result v1

    .line 970
    const/high16 v0, 0x3f80

    const/4 v2, 0x3

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x2

    aget v2, p2, v2

    sub-float v8, v0, v2

    .line 971
    .restart local v8       #remain:F
    const/4 v0, 0x3

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x0

    aget v0, p2, v0

    sub-float v3, v0, v8

    .line 972
    .restart local v3       #endX:F
    const/4 v0, 0x3

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v4, p2, v0

    .line 973
    .restart local v4       #endY:F
    const/high16 v5, 0x3f80

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->setPoint(I[FFFF)I

    move-result v1

    goto :goto_1
.end method

.method protected roll(I[FF)I
    .locals 14
    .parameter "pos"
    .parameter "xyl"
    .parameter "theta"

    .prologue
    .line 985
    const v0, 0x40490fdb

    div-float v0, p3, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mCircleN:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->intCeil(F)I

    move-result v8

    .line 986
    .local v8, count:I
    if-gtz v8, :cond_0

    move v10, p1

    .line 1001
    .end local p1
    .local v10, pos:I
    :goto_0
    return v10

    .line 989
    .end local v10           #pos:I
    .restart local p1
    :cond_0
    const/4 v0, 0x3

    sub-int v12, p1, v0

    .line 990
    .local v12, prevPos:I
    add-int/lit8 v0, v12, 0x0

    aget v6, p2, v0

    .line 991
    .local v6, centerX:F
    iget v7, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    .line 992
    .local v7, centerY:F
    add-int/lit8 v0, v12, 0x2

    aget v11, p2, v0

    .line 994
    .local v11, prevL:F
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    if-gt v9, v8, :cond_1

    .line 995
    int-to-float v0, v9

    mul-float v0, v0, p3

    int-to-float v1, v8

    div-float v13, v0, v1

    .line 996
    .local v13, rad:F
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    const v1, 0x3fc90fdb

    sub-float v1, v13, v1

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->fcos(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v3, v6, v0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    const v1, 0x3fc90fdb

    sub-float v1, v13, v1

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->fsin(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v4, v7, v0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    mul-float/2addr v0, v13

    add-float v5, v11, v0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->setPoint(I[FFFF)I

    move-result p1

    .line 994
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v13           #rad:F
    :cond_1
    move v10, p1

    .line 1001
    .end local p1
    .restart local v10       #pos:I
    goto :goto_0
.end method

.method protected setPoint(I[FFFF)I
    .locals 1
    .parameter "pos"
    .parameter "xyl"
    .parameter "x"
    .parameter "y"
    .parameter "l"

    .prologue
    .line 979
    add-int/lit8 v0, p1, 0x0

    aput p3, p2, v0

    .line 980
    add-int/lit8 v0, p1, 0x1

    aput p4, p2, v0

    .line 981
    add-int/lit8 v0, p1, 0x2

    aput p5, p2, v0

    .line 982
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method protected unroll(I[FF)I
    .locals 15
    .parameter "pos"
    .parameter "xyl"
    .parameter "theta"

    .prologue
    .line 1004
    const v0, 0x40490fdb

    div-float v0, p3, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mCircleN:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->intCeil(F)I

    move-result v8

    .line 1005
    .local v8, count:I
    if-gtz v8, :cond_0

    move/from16 v10, p1

    .line 1021
    .end local p1
    .local v10, pos:I
    :goto_0
    return v10

    .line 1008
    .end local v10           #pos:I
    .restart local p1
    :cond_0
    const/4 v0, 0x3

    sub-int v12, p1, v0

    .line 1009
    .local v12, prevPos:I
    add-int/lit8 v0, v12, 0x0

    aget v0, p2, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    const v2, 0x4096cbe4

    sub-float v2, v2, p3

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->fcos(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    .line 1010
    .local v6, centerX:F
    add-int/lit8 v0, v12, 0x1

    aget v0, p2, v0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    const v2, 0x4096cbe4

    sub-float v2, v2, p3

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->fsin(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v7, v0, v1

    .line 1011
    .local v7, centerY:F
    add-int/lit8 v0, v12, 0x2

    aget v11, p2, v0

    .line 1013
    .local v11, prevL:F
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    if-gt v9, v8, :cond_1

    .line 1014
    int-to-float v0, v9

    mul-float v0, v0, p3

    int-to-float v1, v8

    div-float v13, v0, v1

    .line 1015
    .local v13, rad:F
    const v0, 0x3fc90fdb

    sub-float v14, v0, p3

    .line 1016
    .local v14, startRad:F
    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    add-float v1, v14, v13

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->fcos(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v3, v6, v0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    add-float v1, v14, v13

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->fsin(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float v4, v7, v0

    iget v0, p0, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->mR:F

    mul-float/2addr v0, v13

    add-float v5, v11, v0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFPagePanel$CircularPageOverInterpolator;->setPoint(I[FFFF)I

    move-result p1

    .line 1013
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v13           #rad:F
    .end local v14           #startRad:F
    :cond_1
    move/from16 v10, p1

    .line 1021
    .end local p1
    .restart local v10       #pos:I
    goto :goto_0
.end method
