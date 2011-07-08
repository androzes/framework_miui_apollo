.class public Lcom/nemustech/tiffany/world/TFUtils;
.super Ljava/lang/Object;
.source "TFUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFUtils$1;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TITLE_SIZE:I = 0x19

.field static final DPI_120:I = 0x78

.field static final DPI_160:I = 0xa0

.field static final DPI_240:I = 0xf0

.field private static final HEADER_SIZE:I = 0xc

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.nemustech.tiffany.world"

.field static final PANEL_SCREEN_SIZE_128:I = 0x80

.field static final PANEL_SCREEN_SIZE_256:I = 0x100

.field static final PANEL_SCREEN_SIZE_512:I = 0x200

.field static final PANEL_SCREEN_SIZE_64:I = 0x40

.field static final PANEL_SCREEN_SIZE_MAX:I = 0x200

.field private static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "TFUtils"

.field private static final TITLE_BAR_HEIGHT:I = 0x19

.field static gInfoBuf:[I

.field public static mPixel:Ljava/nio/FloatBuffer;

.field static matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

.field private static rDst:[I

.field private static rSrc:[I

.field private static rSrcCopy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 57
    new-array v0, v1, [I

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    .line 58
    new-array v0, v1, [I

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    .line 59
    new-array v0, v1, [I

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    .line 980
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->gInfoBuf:[I

    .line 981
    new-instance v0, Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/MatrixStack;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static calcMovingSpeed(Lcom/nemustech/tiffany/world/TFObject;FFFFI)F
    .locals 9
    .parameter "object"
    .parameter "destinationX"
    .parameter "destinationY"
    .parameter "destinationZ"
    .parameter "speed"
    .parameter "axisOfSpeed"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, maxDistance:F
    new-array v0, v8, [F

    .line 148
    .local v0, distance:[F
    invoke-virtual {p0, v5}, Lcom/nemustech/tiffany/world/TFObject;->getLocation(I)F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v0, v5

    .line 149
    invoke-virtual {p0, v6}, Lcom/nemustech/tiffany/world/TFObject;->getLocation(I)F

    move-result v4

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v0, v6

    .line 150
    invoke-virtual {p0, v7}, Lcom/nemustech/tiffany/world/TFObject;->getLocation(I)F

    move-result v4

    sub-float/2addr v4, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aput v4, v0, v7

    .line 152
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 154
    aget v4, v0, v2

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    .line 156
    aget v3, v0, v2

    .line 152
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    mul-float v4, p4, v3

    aget v5, v0, p5

    div-float v1, v4, v5

    .line 161
    .local v1, finalSpeed:F
    return v1
.end method

.method public static calcRealWorldFactor(Lcom/nemustech/tiffany/world/TFWorld;IIF)F
    .locals 18
    .parameter "world"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "distance"

    .prologue
    .line 914
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 915
    .local v17, win:[F
    const/16 v3, 0x8

    new-array v15, v3, [F

    .line 916
    .local v15, v:[F
    const/16 v3, 0x8

    move v0, v3

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 922
    .local v16, vertex:[F
    const/16 v3, 0x10

    new-array v13, v3, [F

    .line 923
    .local v13, modelView:[F
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadIdentity()V

    .line 924
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Lcom/nemustech/tiffany/world/MatrixStack;->getMatrix([FI)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v10

    .line 928
    .local v10, camera:Lcom/nemustech/tiffany/world/TFCamera;
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadIdentity()V

    .line 929
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p1, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v3, v0

    div-float v5, p1, v3

    .line 930
    .local v5, ratio:F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getHeight()F

    .end local p1
    move-result p1

    const/high16 v3, 0x4000

    div-float v7, p1, v3

    .line 931
    .local v7, h:F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getWidth()F

    move-result p1

    const/high16 v3, 0x4000

    div-float v6, p1, v3

    .line 932
    .local v6, w:F
    const/16 p1, 0x3

    move/from16 v0, p1

    new-array v0, v0, [F

    move-object/from16 p1, v0

    .line 933
    .local p1, cameraPosition:[F
    const/16 v3, 0x10

    new-array v14, v3, [F

    .line 935
    .local v14, projectView:[F
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    neg-float v4, v6

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    mul-float/2addr v4, v8

    mul-float/2addr v4, v5

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    mul-float/2addr v6, v8

    mul-float/2addr v5, v6

    neg-float v6, v7

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    .end local v5           #ratio:F
    .end local v6           #w:F
    mul-float/2addr v6, v8

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    mul-float/2addr v7, v8

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    .end local v7           #h:F
    iget v9, v10, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getDepth()F

    move-result p0

    .end local p0
    add-float v9, v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/nemustech/tiffany/world/MatrixStack;->glFrustumf(FFFFFF)V

    .line 942
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCamera;->getLocation([F)V

    .line 944
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    const/16 p0, 0x0

    aget v4, p1, p0

    const/16 p0, 0x1

    aget v5, p1, p0

    const/16 p0, 0x2

    aget v6, p1, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/nemustech/tiffany/world/TFUtils;->gluLookAt(Lcom/nemustech/tiffany/world/MatrixStack;FFFFFFFFF)V

    .line 952
    .end local v10           #camera:Lcom/nemustech/tiffany/world/TFCamera;
    sget-object p0, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/MatrixStack;->getMatrix([FI)V

    .line 955
    const/16 p0, 0x10

    move/from16 v0, p0

    new-array v0, v0, [F

    move-object v3, v0

    .line 956
    .local v3, mvp:[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v14

    move-object v7, v13

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 959
    const/16 p0, 0x0

    .local p0, i:I
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, p0

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 961
    mul-int/lit8 v5, p0, 0x4

    const/4 v7, 0x0

    mul-int/lit8 v9, p0, 0x4

    move-object v4, v15

    move-object v6, v3

    move-object/from16 v8, v16

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 963
    const/high16 v4, 0x3f80

    mul-int/lit8 v5, p0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, v15, v5

    div-float/2addr v4, v5

    .line 965
    .local v4, rw:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    mul-int/lit8 v6, p0, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v6, v15, v6

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f80

    add-float/2addr v4, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    aput v4, v17, p0

    .line 959
    .end local v4           #rw:F
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 972
    :cond_0
    const/16 p0, 0x2

    aget p0, p1, p0

    .end local p0           #i:I
    const/16 p1, 0x0

    aget p1, v17, p1

    .end local p1           #cameraPosition:[F
    const/16 p2, 0x1

    aget p2, v17, p2

    .end local p2
    sub-float p1, p1, p2

    mul-float p0, p0, p1

    .line 973
    .local p0, d:F
    div-float p0, p0, p3

    .line 976
    .local p0, rasterizedLength:F
    const-string p1, "TFUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Calculated rasterizedLength: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/high16 p1, 0x3f80

    div-float p0, p1, p0

    .end local p0           #rasterizedLength:F
    return p0

    .line 916
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static calcZ(Lcom/nemustech/tiffany/world/TFWorld;IIIF)F
    .locals 18
    .parameter "world"
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "rasterizedLength"
    .parameter "length"

    .prologue
    .line 832
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 833
    .local v17, win:[F
    const/16 v3, 0x8

    new-array v15, v3, [F

    .line 834
    .local v15, v:[F
    const/16 v3, 0x8

    move v0, v3

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v16, v3

    const/4 v3, 0x1

    aput p4, v16, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v16, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f80

    aput v4, v16, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v16, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v16, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v4, v16, v3

    const/4 v3, 0x7

    const/high16 v4, 0x3f80

    aput v4, v16, v3

    .line 840
    .local v16, vertex:[F
    const/16 v3, 0x10

    new-array v13, v3, [F

    .line 841
    .local v13, modelView:[F
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadIdentity()V

    .line 842
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4}, Lcom/nemustech/tiffany/world/MatrixStack;->getMatrix([FI)V

    .line 845
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getCamera()Lcom/nemustech/tiffany/world/TFCamera;

    move-result-object v10

    .line 846
    .local v10, camera:Lcom/nemustech/tiffany/world/TFCamera;
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadIdentity()V

    .line 847
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p1, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v3, v0

    div-float v5, p1, v3

    .line 848
    .local v5, ratio:F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getHeight()F

    .end local p1
    move-result p1

    const/high16 v3, 0x4000

    div-float v7, p1, v3

    .line 849
    .local v7, h:F
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getWidth()F

    move-result p1

    const/high16 v3, 0x4000

    div-float v6, p1, v3

    .line 850
    .local v6, w:F
    const/16 p1, 0x3

    move/from16 v0, p1

    new-array v0, v0, [F

    move-object/from16 p1, v0

    .line 851
    .local p1, cameraPosition:[F
    const/16 v3, 0x10

    new-array v14, v3, [F

    .line 853
    .local v14, projectView:[F
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    neg-float v4, v6

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    mul-float/2addr v4, v8

    mul-float/2addr v4, v5

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    mul-float/2addr v6, v8

    mul-float/2addr v5, v6

    neg-float v6, v7

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    .end local v5           #ratio:F
    .end local v6           #w:F
    mul-float/2addr v6, v8

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mWideScale:F

    mul-float/2addr v7, v8

    iget v8, v10, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    .end local v7           #h:F
    iget v9, v10, Lcom/nemustech/tiffany/world/TFCamera;->mNear:F

    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFWorld;->getDepth()F

    move-result p0

    .end local p0
    add-float v9, v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/nemustech/tiffany/world/MatrixStack;->glFrustumf(FFFFFF)V

    .line 860
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCamera;->getLocation([F)V

    .line 862
    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    const/16 p0, 0x0

    aget v4, p1, p0

    const/16 p0, 0x1

    aget v5, p1, p0

    const/16 p0, 0x2

    aget v6, p1, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/nemustech/tiffany/world/TFUtils;->gluLookAt(Lcom/nemustech/tiffany/world/MatrixStack;FFFFFFFFF)V

    .line 870
    .end local v10           #camera:Lcom/nemustech/tiffany/world/TFCamera;
    sget-object p0, Lcom/nemustech/tiffany/world/TFUtils;->matrixSimulator:Lcom/nemustech/tiffany/world/MatrixStack;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/MatrixStack;->getMatrix([FI)V

    .line 873
    const/16 p0, 0x10

    move/from16 v0, p0

    new-array v0, v0, [F

    move-object v3, v0

    .line 874
    .local v3, mvp:[F
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, v14

    move-object v7, v13

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 877
    const/16 p0, 0x0

    .local p0, i:I
    :goto_0
    const/4 v4, 0x2

    move/from16 v0, p0

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 879
    mul-int/lit8 v5, p0, 0x4

    const/4 v7, 0x0

    mul-int/lit8 v9, p0, 0x4

    move-object v4, v15

    move-object v6, v3

    move-object/from16 v8, v16

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 881
    const/high16 v4, 0x3f80

    mul-int/lit8 v5, p0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, v15, v5

    div-float/2addr v4, v5

    .line 883
    .local v4, rw:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    mul-int/lit8 v6, p0, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v6, v15, v6

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f80

    add-float/2addr v4, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    aput v4, v17, p0

    .line 877
    .end local v4           #rw:F
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 890
    :cond_0
    const/16 p0, 0x2

    aget p0, p1, p0

    .end local p0           #i:I
    const/16 p2, 0x0

    aget p2, v17, p2

    .end local p2
    const/4 v3, 0x1

    aget v3, v17, v3

    .end local v3           #mvp:[F
    sub-float p2, p2, v3

    mul-float p0, p0, p2

    div-float p0, p0, p4

    .line 891
    .local p0, d:F
    const/16 p2, 0x2

    aget p1, p1, p2

    .end local p1           #cameraPosition:[F
    mul-float p2, p4, p0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p3, v0

    div-float p2, p2, p3

    sub-float p1, p1, p2

    .line 894
    .local p1, z:F
    const-string p2, "TFUtils"

    .end local p3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Calculated d:"

    .end local p4
    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #d:F
    const-string p3, " Z:"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return p1
.end method

.method public static checkGLError(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 1172
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 1173
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 1174
    const-string v1, "checkGLError"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_0
    return-void
.end method

.method public static convertRGBAtoARGB(II[ILandroid/graphics/Rect;)[I
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "bufRGBA"
    .parameter "rectResult"

    .prologue
    const/4 v2, 0x0

    .line 407
    mul-int v1, p0, p1

    new-array v0, v1, [I

    .line 410
    .local v0, bufARGB:[I
    invoke-static {p0, p1, v0, p2, v2}, Lcom/nemustech/tiffany/world/TFJniUtils;->extract(II[I[IZ)V

    .line 412
    invoke-virtual {p3, v2, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 414
    return-object v0
.end method

.method public static convertValueByDPI(III)I
    .locals 5
    .parameter "value"
    .parameter "srcDpi"
    .parameter "dstDpi"

    .prologue
    .line 1022
    const/4 v3, 0x0

    .line 1023
    .local v3, result:I
    mul-int v4, p0, p2

    int-to-float v0, v4

    .line 1024
    .local v0, a:F
    int-to-float v4, p1

    div-float v1, v0, v4

    .line 1025
    .local v1, b:F
    const/high16 v4, 0x3f00

    add-float v2, v1, v4

    .line 1026
    .local v2, c:F
    float-to-int v3, v2

    .line 1028
    return v3
.end method

.method public static copyBuffer([I[BLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "bufSrc"
    .parameter "bufDst"
    .parameter "rectSrc"
    .parameter "rectSrcCopy"
    .parameter "rectResult"

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 432
    new-array v1, v0, [I

    .line 433
    .local v1, rDst:[I
    new-array v3, v0, [I

    .line 434
    .local v3, rSrc:[I
    new-array v4, v0, [I

    .line 436
    .local v4, rSrcCopy:[I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 437
    .local v9, copy_width:I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 439
    .local v8, copy_height:I
    aput v5, v1, v5

    .line 440
    aput v5, v1, v2

    .line 441
    aput v9, v1, v6

    .line 442
    aput v8, v1, v7

    .line 444
    iget v0, p2, Landroid/graphics/Rect;->left:I

    aput v0, v3, v5

    .line 445
    iget v0, p2, Landroid/graphics/Rect;->top:I

    aput v0, v3, v2

    .line 446
    iget v0, p2, Landroid/graphics/Rect;->right:I

    aput v0, v3, v6

    .line 447
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    aput v0, v3, v7

    .line 449
    iget v0, p3, Landroid/graphics/Rect;->left:I

    aput v0, v4, v5

    .line 450
    iget v0, p3, Landroid/graphics/Rect;->top:I

    aput v0, v4, v2

    .line 451
    iget v0, p3, Landroid/graphics/Rect;->right:I

    aput v0, v4, v6

    .line 452
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    aput v0, v4, v7

    move-object v0, p1

    move-object v2, p0

    move v6, v5

    move v7, v5

    .line 454
    invoke-static/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFJniUtils;->copy_buffer([B[I[I[I[IIIZ)V

    .line 455
    invoke-virtual {p4, v5, v5, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    return-void
.end method

.method public static copyBufferToCenter([I[BLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 8
    .parameter "bufSrc"
    .parameter "bufDst"
    .parameter "rectSrc"
    .parameter "rectSrcCopy"
    .parameter "rectResult"
    .parameter "bufferWidth"
    .parameter "bufferHeight"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 545
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput v7, v0, v7

    .line 546
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput v7, v0, v2

    .line 547
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput p5, v0, v3

    .line 548
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput p6, v0, v4

    .line 550
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    aput v1, v0, v7

    .line 551
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    aput v1, v0, v2

    .line 552
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    aput v1, v0, v3

    .line 553
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    aput v1, v0, v4

    .line 555
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    aput v1, v0, v7

    .line 556
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    aput v1, v0, v2

    .line 557
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    aput v1, v0, v3

    .line 558
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    aput v1, v0, v4

    .line 560
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt p5, v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge p6, v0, :cond_1

    .line 561
    :cond_0
    const-string v0, "TFUtils"

    const-string v1, "ERROR !!! The panel size must greater than rectSrcCopy width or height"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 565
    :cond_1
    sget-object v1, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    sget-object v4, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    sub-int v0, p5, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v5, v0, 0x2

    sub-int v0, p6, v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v6, v0, 0x2

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFJniUtils;->copy_buffer([B[I[I[I[IIIZ)V

    .line 568
    invoke-virtual {p4, v7, v7, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static copyBufferToTopLeft([I[BLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 8
    .parameter "bufSrc"
    .parameter "bufDst"
    .parameter "rectSrc"
    .parameter "rectSrcCopy"
    .parameter "rectResult"
    .parameter "bufferWidth"
    .parameter "bufferHeight"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 642
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput v5, v0, v5

    .line 643
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput v5, v0, v2

    .line 644
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput p5, v0, v3

    .line 645
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    aput p6, v0, v4

    .line 647
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    aput v1, v0, v5

    .line 648
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    aput v1, v0, v2

    .line 649
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    aput v1, v0, v3

    .line 650
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    aput v1, v0, v4

    .line 652
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    aput v1, v0, v5

    .line 653
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    aput v1, v0, v2

    .line 654
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    aput v1, v0, v3

    .line 655
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    aput v1, v0, v4

    .line 657
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt p5, v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge p6, v0, :cond_1

    .line 658
    :cond_0
    const-string v0, "TFUtils"

    const-string v1, "ERROR !!! The panel size must greater than rectSrcCopy width or height"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_1
    sget-object v1, Lcom/nemustech/tiffany/world/TFUtils;->rDst:[I

    sget-object v3, Lcom/nemustech/tiffany/world/TFUtils;->rSrc:[I

    sget-object v4, Lcom/nemustech/tiffany/world/TFUtils;->rSrcCopy:[I

    move-object v0, p1

    move-object v2, p0

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFJniUtils;->copy_buffer([B[I[I[I[IIIZ)V

    .line 663
    invoke-virtual {p4, v5, v5, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static cropyBuffer([I[ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "srcBuf"
    .parameter "dstBuf"
    .parameter "rectSrc"
    .parameter "rectSrcCopy"

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    new-array v0, v2, [I

    .line 203
    .local v0, rSrc:[I
    new-array v1, v2, [I

    .line 205
    .local v1, rSrcCopy:[I
    iget v2, p2, Landroid/graphics/Rect;->left:I

    aput v2, v0, v3

    .line 206
    iget v2, p2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v4

    .line 207
    iget v2, p2, Landroid/graphics/Rect;->right:I

    aput v2, v0, v5

    .line 208
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    aput v2, v0, v6

    .line 210
    iget v2, p3, Landroid/graphics/Rect;->left:I

    aput v2, v1, v3

    .line 211
    iget v2, p3, Landroid/graphics/Rect;->top:I

    aput v2, v1, v4

    .line 212
    iget v2, p3, Landroid/graphics/Rect;->right:I

    aput v2, v1, v5

    .line 213
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, v6

    .line 215
    invoke-static {p1, p0, v0, v1}, Lcom/nemustech/tiffany/world/TFJniUtils;->crop_buffer([I[I[I[I)V

    .line 228
    return-void
.end method

.method static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 370
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static decodeFile(Ljava/lang/String;[I)Ljava/nio/ByteBuffer;
    .locals 5
    .parameter "fileName"
    .parameter "info"

    .prologue
    .line 359
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .local v1, iStream:Ljava/io/FileInputStream;
    invoke-static {v1, p0, p1}, Lcom/nemustech/tiffany/world/TFUtils;->decodeStream(Ljava/io/InputStream;Ljava/lang/String;[I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .end local v1           #iStream:Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 360
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 361
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TFUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File open error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resources"
    .parameter "resId"

    .prologue
    .line 392
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 393
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 394
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    .local v0, bmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method static decodeResource(Landroid/content/res/Resources;I[I)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "resources"
    .parameter "resId"
    .parameter "info"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, strPath:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 377
    .local v0, iStream:Ljava/io/InputStream;
    invoke-static {v0, v1, p2}, Lcom/nemustech/tiffany/world/TFUtils;->decodeStream(Ljava/io/InputStream;Ljava/lang/String;[I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method private static decodeStream(Ljava/io/InputStream;Ljava/lang/String;[I)Ljava/nio/ByteBuffer;
    .locals 11
    .parameter "iStream"
    .parameter "fileName"
    .parameter "info"

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, bmpbuf:[B
    const/4 v0, 0x0

    .line 305
    .local v0, bb:Ljava/nio/ByteBuffer;
    const/16 v10, 0x2e

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, strExt:Ljava/lang/String;
    const-string v10, ".tex"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    .line 310
    invoke-static {p0, p2}, Lcom/nemustech/tiffany/world/TFUtils;->decodeTex(Ljava/io/InputStream;[I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, ".jpeg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 312
    :cond_2
    const/4 v3, 0x0

    .line 313
    .local v3, jpgbuf:[B
    const/4 v4, 0x0

    .line 316
    .local v4, jpgbuf_size:I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 317
    new-array v3, v4, [B

    .line 318
    const/4 v10, 0x0

    invoke-virtual {p0, v3, v10, v4}, Ljava/io/InputStream;->read([BII)I

    .line 319
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    invoke-static {v3, v4}, Lcom/nemustech/tiffany/world/TFJniUtils;->get_jpeg_data_size([BI)I

    move-result v8

    .line 326
    .local v8, size:I
    new-array v1, v8, [B

    .line 327
    invoke-static {v3, v4, p2, v1}, Lcom/nemustech/tiffany/world/TFJniUtils;->load_jpeg_mem([BI[I[B)I

    move-result v7

    .line 329
    .local v7, ret:I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 330
    goto :goto_0

    .line 320
    .end local v7           #ret:I
    .end local v8           #size:I
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 321
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v2           #e1:Ljava/io/IOException;
    .end local v3           #jpgbuf:[B
    .end local v4           #jpgbuf_size:I
    :cond_3
    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 331
    const/4 v5, 0x0

    .line 332
    .local v5, pngbuf:[B
    const/4 v6, 0x0

    .line 335
    .local v6, pngbuf_size:I
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 336
    new-array v5, v6, [B

    .line 337
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_2
    invoke-static {v5}, Lcom/nemustech/tiffany/world/TFJniUtils;->get_png_data_size([B)I

    move-result v8

    .line 344
    .restart local v8       #size:I
    new-array v1, v8, [B

    .line 346
    invoke-static {v5, p2, v1}, Lcom/nemustech/tiffany/world/TFJniUtils;->load_png_mem([B[I[B)I

    move-result v7

    .line 348
    .restart local v7       #ret:I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 338
    .end local v7           #ret:I
    .end local v8           #size:I
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 339
    .restart local v2       #e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static decodeTex(Ljava/io/InputStream;[I)Ljava/nio/ByteBuffer;
    .locals 11
    .parameter "stream"
    .parameter "info"

    .prologue
    .line 267
    const/4 v10, 0x0

    .line 270
    .local v10, ret:Ljava/nio/ByteBuffer;
    const/16 v0, 0xc

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    .local v0, header:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p1, v1

    .line 273
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p1, v1

    .line 274
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 275
    .local v1, dataSize:I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .end local v0           #header:Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 276
    .local v0, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 278
    .local v2, readSize:I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .end local p0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .end local v1           #dataSize:I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 279
    .local p0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .end local v0           #data:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFJniUtils;->decompress([BII[BII)I

    move-result v0

    .line 280
    .local v0, uncompSize:I
    if-gez v0, :cond_0

    .line 281
    new-instance p0, Ljava/io/IOException;

    .end local p0           #buf:Ljava/nio/ByteBuffer;
    const-string p1, "Uncompressing failed"

    .end local p1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0           #uncompSize:I
    .end local v2           #readSize:I
    :catch_0
    move-exception p0

    .line 296
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v10

    .line 299
    .end local v10           #ret:Ljava/nio/ByteBuffer;
    .local p0, ret:Ljava/nio/ByteBuffer;
    :goto_0
    return-object p1

    .line 283
    .restart local v0       #uncompSize:I
    .restart local v2       #readSize:I
    .restart local v10       #ret:Ljava/nio/ByteBuffer;
    .local p0, buf:Ljava/nio/ByteBuffer;
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    aget v0, p1, v0

    .end local v0           #uncompSize:I
    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->getTextureLength(I)I

    move-result v2

    .line 284
    .local v2, tex_width:I
    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->getTextureLength(I)I

    move-result v1

    .line 285
    .local v1, tex_height:I
    const/4 v0, 0x0

    aget v0, p1, v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    aget v0, p1, v0

    if-eq v1, v0, :cond_2

    .line 286
    :cond_1
    mul-int/lit8 v0, v2, 0x4

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 287
    .local v0, expand:Ljava/nio/ByteBuffer;
    const/4 v3, 0x4

    new-array v6, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v6, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v6, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aget v4, p1, v4

    mul-int/lit8 v4, v4, 0x4

    aput v4, v6, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    aget p1, p1, v4

    .end local p1
    aput p1, v6, v3

    .line 288
    .local v6, rectSrc:[I
    const/4 p1, 0x4

    new-array v4, p1, [I

    const/4 p1, 0x0

    const/4 v3, 0x0

    aput v3, v4, p1

    const/4 p1, 0x1

    const/4 v3, 0x0

    aput v3, v4, p1

    const/4 p1, 0x2

    mul-int/lit8 v2, v2, 0x4

    aput v2, v4, p1

    .end local v2           #tex_width:I
    const/4 p1, 0x3

    aput v1, v4, p1

    .line 289
    .local v4, rectDst:[I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v6

    invoke-static/range {v3 .. v9}, Lcom/nemustech/tiffany/world/TFJniUtils;->copy_raw_buffer([B[I[B[I[III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    move-object p0, v0

    .end local v0           #expand:Ljava/nio/ByteBuffer;
    .end local v4           #rectDst:[I
    .end local v6           #rectSrc:[I
    .end local v10           #ret:Ljava/nio/ByteBuffer;
    .local p0, ret:Ljava/nio/ByteBuffer;
    :goto_1
    move-object p1, p0

    .line 299
    goto :goto_0

    .line 293
    .restart local v2       #tex_width:I
    .restart local v10       #ret:Ljava/nio/ByteBuffer;
    .local p0, buf:Ljava/nio/ByteBuffer;
    .restart local p1
    :cond_2
    move-object p0, p0

    .end local v10           #ret:Ljava/nio/ByteBuffer;
    .local p0, ret:Ljava/nio/ByteBuffer;
    goto :goto_1
.end method

.method static defragSparseHolderArray(Landroid/util/SparseArray;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/world/TFHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, arrayModel:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/world/TFHolder;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 593
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 595
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 596
    .local v2, id:I
    if-eq v2, v1, :cond_0

    .line 598
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFHolder;

    .line 599
    .local v3, model:Lcom/nemustech/tiffany/world/TFHolder;
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 600
    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 593
    .end local v3           #model:Lcom/nemustech/tiffany/world/TFHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v2           #id:I
    :cond_1
    return-void
.end method

.method static defragSparseModelArray(Landroid/util/SparseArray;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/world/TFModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, arrayModel:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/nemustech/tiffany/world/TFModel;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 576
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 578
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 579
    .local v2, id:I
    if-eq v2, v1, :cond_0

    .line 581
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nemustech/tiffany/world/TFModel;

    .line 582
    .local v3, model:Lcom/nemustech/tiffany/world/TFModel;
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 583
    invoke-virtual {p0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 576
    .end local v3           #model:Lcom/nemustech/tiffany/world/TFModel;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v2           #id:I
    :cond_1
    return-void
.end method

.method public static diffAngle(FF)F
    .locals 3
    .parameter "degreeA"
    .parameter "degreeB"

    .prologue
    const/high16 v2, 0x43b4

    .line 174
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    rem-float v0, v1, v2

    .line 176
    .local v0, gap:F
    const/high16 v1, 0x4334

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    move v1, v0

    .line 179
    :goto_0
    return v1

    :cond_0
    sub-float v1, v2, v0

    goto :goto_0
.end method

.method public static drawLine(Ljavax/microedition/khronos/opengles/GL10;FFFFFF)V
    .locals 4
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "x2"
    .parameter "y2"
    .parameter "z2"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 1002
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 1003
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    .line 1004
    :cond_0
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1005
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1006
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1007
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1008
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1009
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1010
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1011
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1013
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1014
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1015
    invoke-interface {p0, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 1016
    const/4 v0, 0x3

    const/16 v1, 0x1406

    sget-object v2, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-interface {p0, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1017
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {p0, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1018
    return-void
.end method

.method public static drawPixel(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 4
    .parameter "gl"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "size"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 986
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 987
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    .line 988
    :cond_0
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 989
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 990
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 991
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 992
    sget-object v0, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 994
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 995
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 996
    invoke-interface {p0, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 997
    invoke-interface {p0, p4}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 998
    const/4 v0, 0x3

    const/16 v1, 0x1406

    sget-object v2, Lcom/nemustech/tiffany/world/TFUtils;->mPixel:Ljava/nio/FloatBuffer;

    invoke-interface {p0, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 999
    const/4 v0, 0x1

    invoke-interface {p0, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1000
    return-void
.end method

.method public static dumpFreeMemory(Ljava/lang/String;)V
    .locals 7
    .parameter "comment"

    .prologue
    .line 1213
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 1214
    .local v0, memoryInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 1215
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    .line 1216
    .local v2, totalPrivate:I
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    .line 1217
    .local v1, totalPSS:I
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    .line 1218
    .local v3, totalShared:I
    const-string v4, "TFUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### Memory Usage on \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' - private : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", PSS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shared:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return-void
.end method

.method static extractJni(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 11
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 250
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 251
    .local v7, height:I
    mul-int v0, v7, v3

    new-array v8, v0, [I

    .line 252
    .local v8, arr:[I
    mul-int v0, v7, v3

    new-array v1, v0, [I

    .line 253
    .local v1, pixels:[I
    mul-int v0, v7, v3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 254
    .local v9, bb:Ljava/nio/ByteBuffer;
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    .local v10, ib:Ljava/nio/IntBuffer;
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 257
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 258
    const/4 v0, 0x1

    invoke-static {v3, v7, v8, v1, v0}, Lcom/nemustech/tiffany/world/TFJniUtils;->extract(II[I[IZ)V

    .line 260
    invoke-virtual {v10, v8}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 261
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    return-object v9
.end method

.method public static filterAngle(F)F
    .locals 3
    .parameter "angle"

    .prologue
    const/high16 v2, 0x43b4

    .line 80
    move v0, p0

    .line 82
    .local v0, filteredAngle:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    rem-float v1, v0, v2

    add-float v0, v1, v2

    .line 83
    :cond_0
    rem-float/2addr v0, v2

    .line 85
    return v0
.end method

.method public static getBitmapPixels(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I
    .locals 8
    .parameter "bmp"
    .parameter "rectResult"

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 239
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 240
    .local v7, height:I
    mul-int v0, v7, v3

    new-array v1, v0, [I

    .local v1, pixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 242
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 243
    invoke-virtual {p1, v2, v2, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 245
    return-object v1
.end method

.method public static getModelWorldLocation(Lcom/nemustech/tiffany/world/TFModel;[F)V
    .locals 8
    .parameter "model"
    .parameter "location"

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1142
    new-array v2, v3, [F

    .line 1143
    .local v2, modelLocation:[F
    new-array v1, v3, [F

    .line 1145
    .local v1, holderLocation:[F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFModel;->getHolder()Lcom/nemustech/tiffany/world/TFHolder;

    move-result-object v0

    .line 1146
    .local v0, holder:Lcom/nemustech/tiffany/world/TFHolder;
    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFHolder;->getLocation([F)V

    .line 1149
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nemustech/tiffany/world/TFModel;->getLocation([F)V

    .line 1151
    aget v3, v1, v5

    aget v4, v2, v5

    add-float/2addr v3, v4

    aput v3, p1, v5

    .line 1152
    aget v3, v1, v6

    aget v4, v2, v6

    add-float/2addr v3, v4

    aput v3, p1, v6

    .line 1153
    aget v3, v1, v7

    aget v4, v2, v7

    add-float/2addr v3, v4

    aput v3, p1, v7

    .line 1154
    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 1049
    const/16 v0, 0x1901

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    return v0
.end method

.method public static getTextureLength(I)I
    .locals 4
    .parameter "length"

    .prologue
    .line 519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xb

    if-gt v0, v2, :cond_1

    .line 521
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 522
    .local v1, tl:I
    if-lt v1, p0, :cond_0

    move v2, v1

    .line 525
    .end local v1           #tl:I
    :goto_1
    return v2

    .line 519
    .restart local v1       #tl:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    .end local v1           #tl:I
    :cond_1
    const-string v2, "TFUtils"

    const-string v3, "Too big texture size"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTiffanyContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter "context"

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1056
    .local v0, c:Landroid/content/Context;
    :try_start_0
    const-string v2, "com.nemustech.tiffany.world"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1061
    :goto_0
    return-object v0

    .line 1057
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1058
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTitleBarHeight(I)I
    .locals 2
    .parameter "currentDPI"

    .prologue
    .line 1035
    const/16 v0, 0x19

    const/16 v1, 0xa0

    invoke-static {v0, v1, p0}, Lcom/nemustech/tiffany/world/TFUtils;->convertValueByDPI(III)I

    move-result v0

    return v0
.end method

.method static gluLookAt(Lcom/nemustech/tiffany/world/MatrixStack;FFFFFFFFF)V
    .locals 5
    .parameter "gl"
    .parameter "eyeX"
    .parameter "eyeY"
    .parameter "eyeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "centerZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 686
    sub-float/2addr p4, p1

    .line 687
    .local p4, fx:F
    sub-float/2addr p5, p2

    .line 688
    .local p5, fy:F
    sub-float/2addr p6, p3

    .line 691
    .local p6, fz:F
    const/high16 v0, 0x3f80

    invoke-static {p4, p5, p6}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    div-float/2addr v0, v1

    .line 692
    .local v0, rlf:F
    mul-float/2addr p4, v0

    .line 693
    mul-float/2addr p5, v0

    .line 694
    mul-float/2addr p6, v0

    .line 697
    const/high16 v0, 0x3f80

    invoke-static {p7, p8, p9}, Landroid/opengl/Matrix;->length(FFF)F

    .end local v0           #rlf:F
    move-result v1

    div-float/2addr v0, v1

    .line 698
    .local v0, rlup:F
    mul-float/2addr p7, v0

    .line 699
    mul-float/2addr p8, v0

    .line 700
    mul-float/2addr p9, v0

    .line 704
    mul-float v0, p5, p9

    mul-float v1, p6, p8

    sub-float/2addr v0, v1

    .line 705
    .local v0, sx:F
    mul-float v1, p6, p7

    mul-float/2addr p9, p4

    sub-float p9, v1, p9

    .line 706
    .local p9, sy:F
    mul-float/2addr p8, p4

    mul-float/2addr p7, p5

    sub-float/2addr p8, p7

    .line 709
    .local p8, sz:F
    mul-float p7, p9, p6

    mul-float v1, p8, p5

    sub-float v1, p7, v1

    .line 710
    .local v1, ux:F
    mul-float p7, p8, p4

    mul-float v2, v0, p6

    sub-float v2, p7, v2

    .line 711
    .local v2, uy:F
    mul-float p7, v0, p5

    mul-float v3, p9, p4

    sub-float v3, p7, v3

    .line 713
    .local v3, uz:F
    const/16 p7, 0x10

    new-array p7, p7, [F

    .line 714
    .local p7, m:[F
    const/4 v4, 0x0

    aput v0, p7, v4

    .line 715
    const/4 v0, 0x1

    aput v1, p7, v0

    .line 716
    .end local v0           #sx:F
    const/4 v0, 0x2

    neg-float p4, p4

    aput p4, p7, v0

    .line 717
    .end local p4           #fx:F
    const/4 p4, 0x3

    const/4 v0, 0x0

    aput v0, p7, p4

    .line 719
    const/4 p4, 0x4

    aput p9, p7, p4

    .line 720
    const/4 p4, 0x5

    aput v2, p7, p4

    .line 721
    const/4 p4, 0x6

    neg-float p5, p5

    aput p5, p7, p4

    .line 722
    .end local p5           #fy:F
    const/4 p4, 0x7

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 724
    const/16 p4, 0x8

    aput p8, p7, p4

    .line 725
    const/16 p4, 0x9

    aput v3, p7, p4

    .line 726
    const/16 p4, 0xa

    neg-float p5, p6

    aput p5, p7, p4

    .line 727
    const/16 p4, 0xb

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 729
    const/16 p4, 0xc

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 730
    const/16 p4, 0xd

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 731
    const/16 p4, 0xe

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 732
    const/16 p4, 0xf

    const/high16 p5, 0x3f80

    aput p5, p7, p4

    .line 734
    const/4 p4, 0x0

    invoke-virtual {p0, p7, p4}, Lcom/nemustech/tiffany/world/MatrixStack;->glMultMatrixf([FI)V

    .line 735
    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/MatrixStack;->glTranslatef(FFF)V

    .line 736
    .end local p1
    .end local p2
    .end local p3
    return-void
.end method

.method static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 5
    .parameter "gl"
    .parameter "eyeX"
    .parameter "eyeY"
    .parameter "eyeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "centerZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 757
    sub-float/2addr p4, p1

    .line 758
    .local p4, fx:F
    sub-float/2addr p5, p2

    .line 759
    .local p5, fy:F
    sub-float/2addr p6, p3

    .line 762
    .local p6, fz:F
    const/high16 v0, 0x3f80

    invoke-static {p4, p5, p6}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    div-float/2addr v0, v1

    .line 763
    .local v0, rlf:F
    mul-float/2addr p4, v0

    .line 764
    mul-float/2addr p5, v0

    .line 765
    mul-float/2addr p6, v0

    .line 768
    const/high16 v0, 0x3f80

    invoke-static {p7, p8, p9}, Landroid/opengl/Matrix;->length(FFF)F

    .end local v0           #rlf:F
    move-result v1

    div-float/2addr v0, v1

    .line 769
    .local v0, rlup:F
    mul-float/2addr p7, v0

    .line 770
    mul-float/2addr p8, v0

    .line 771
    mul-float/2addr p9, v0

    .line 775
    mul-float v0, p5, p9

    mul-float v1, p6, p8

    sub-float/2addr v0, v1

    .line 776
    .local v0, sx:F
    mul-float v1, p6, p7

    mul-float/2addr p9, p4

    sub-float p9, v1, p9

    .line 777
    .local p9, sy:F
    mul-float/2addr p8, p4

    mul-float/2addr p7, p5

    sub-float/2addr p8, p7

    .line 780
    .local p8, sz:F
    mul-float p7, p9, p6

    mul-float v1, p8, p5

    sub-float v1, p7, v1

    .line 781
    .local v1, ux:F
    mul-float p7, p8, p4

    mul-float v2, v0, p6

    sub-float v2, p7, v2

    .line 782
    .local v2, uy:F
    mul-float p7, v0, p5

    mul-float v3, p9, p4

    sub-float v3, p7, v3

    .line 784
    .local v3, uz:F
    const/16 p7, 0x10

    new-array p7, p7, [F

    .line 785
    .local p7, m:[F
    const/4 v4, 0x0

    aput v0, p7, v4

    .line 786
    const/4 v0, 0x1

    aput v1, p7, v0

    .line 787
    .end local v0           #sx:F
    const/4 v0, 0x2

    neg-float p4, p4

    aput p4, p7, v0

    .line 788
    .end local p4           #fx:F
    const/4 p4, 0x3

    const/4 v0, 0x0

    aput v0, p7, p4

    .line 790
    const/4 p4, 0x4

    aput p9, p7, p4

    .line 791
    const/4 p4, 0x5

    aput v2, p7, p4

    .line 792
    const/4 p4, 0x6

    neg-float p5, p5

    aput p5, p7, p4

    .line 793
    .end local p5           #fy:F
    const/4 p4, 0x7

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 795
    const/16 p4, 0x8

    aput p8, p7, p4

    .line 796
    const/16 p4, 0x9

    aput v3, p7, p4

    .line 797
    const/16 p4, 0xa

    neg-float p5, p6

    aput p5, p7, p4

    .line 798
    const/16 p4, 0xb

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 800
    const/16 p4, 0xc

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 801
    const/16 p4, 0xd

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 802
    const/16 p4, 0xe

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 803
    const/16 p4, 0xf

    const/high16 p5, 0x3f80

    aput p5, p7, p4

    .line 805
    const/4 p4, 0x0

    invoke-interface {p0, p7, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 806
    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 807
    .end local p1
    .end local p2
    .end local p3
    return-void
.end method

.method public static isBetweenAngle(FFFZ)Z
    .locals 6
    .parameter "rangeDegreeA"
    .parameter "rangeDegreeB"
    .parameter "targetAngle"
    .parameter "bIncludeBoundary"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-static {p0, p1}, Lcom/nemustech/tiffany/world/TFUtils;->diffAngle(FF)F

    move-result v2

    .line 121
    .local v2, range:F
    invoke-static {p0, p2}, Lcom/nemustech/tiffany/world/TFUtils;->diffAngle(FF)F

    move-result v0

    .line 122
    .local v0, diffA:F
    invoke-static {p1, p2}, Lcom/nemustech/tiffany/world/TFUtils;->diffAngle(FF)F

    move-result v1

    .line 124
    .local v1, diffB:F
    if-eqz p3, :cond_1

    cmpl-float v3, v0, v4

    if-eqz v3, :cond_0

    cmpl-float v3, v1, v4

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 125
    :goto_0
    return v3

    :cond_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isEmulator()Z
    .locals 2

    .prologue
    .line 107
    const-string v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "path"

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1120
    .local v3, fs:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v2, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #fs:Ljava/io/FileInputStream;
    .local v4, fs:Ljava/io/FileInputStream;
    move-object v3, v4

    .line 1129
    .end local v4           #fs:Ljava/io/FileInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1132
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1138
    :goto_1
    return-object v0

    .line 1124
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1125
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1131
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 1132
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1135
    :goto_2
    throw v5

    .line 1133
    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method public static loadBitmapFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "packageName"
    .parameter "filename"

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFUtils;->loadBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadLibrary()V
    .locals 1

    .prologue
    .line 191
    const-string v0, "tfutils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private static makeUnsignedShort(B)I
    .locals 1
    .parameter "signedByte"

    .prologue
    .line 66
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "count"

    .prologue
    .line 1163
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

.method public static overlap(Lcom/nemustech/tiffany/world/TFModel;Lcom/nemustech/tiffany/world/TFModel;J)V
    .locals 2
    .parameter "fromModel"
    .parameter "toModel"
    .parameter "animationTime"

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFModel;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 618
    .local v0, world:Lcom/nemustech/tiffany/world/TFWorld;
    invoke-virtual {p1, v1}, Lcom/nemustech/tiffany/world/TFModel;->setOpacity(F)V

    .line 619
    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFModel;->attachTo(Lcom/nemustech/tiffany/world/TFWorld;)Lcom/nemustech/tiffany/world/TFError;

    .line 620
    invoke-virtual {p0, v1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->fade(FJ)V

    .line 621
    const/high16 v1, 0x3f80

    invoke-virtual {p1, v1, p2, p3}, Lcom/nemustech/tiffany/world/TFModel;->fade(FJ)V

    .line 622
    return-void
.end method

.method public static panelIInternalHitTest(Lcom/nemustech/tiffany/world/TFPanel;FFFF)Z
    .locals 2
    .parameter "panel"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getWidth()F

    move-result v0

    mul-float/2addr p1, v0

    .line 1193
    .local p1, targetLeft:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getWidth()F

    move-result v0

    mul-float v1, p3, v0

    .line 1194
    .local v1, targetWidth:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getHeight()F

    move-result p3

    .end local p3
    mul-float/2addr p2, p3

    .line 1195
    .local p2, targetTop:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getHeight()F

    move-result p3

    mul-float/2addr p3, p4

    .line 1197
    .local p3, targetHeight:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getWidth()F

    move-result p4

    .end local p4
    const/high16 v0, 0x4000

    div-float/2addr p4, v0

    sub-float p4, p1, p4

    .line 1198
    .end local p1           #targetLeft:F
    .local p4, targetLeft:F
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getHeight()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFPanel;->getHeight()F

    move-result p2

    .end local p2           #targetTop:F
    const/high16 v0, 0x4000

    div-float/2addr p2, v0

    sub-float v0, p1, p2

    .line 1200
    .local v0, targetTop:F
    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 1201
    .local p1, hitPoint:[F
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFPanel;->getHitPointOnModel([FI)V

    .line 1202
    const/4 p0, 0x0

    aget p2, p1, p0

    .line 1203
    .end local p0
    .local p2, hitX:F
    const/4 p0, 0x1

    aget p1, p1, p0

    .line 1204
    .local p1, hitY:F
    const/4 p0, 0x0

    .line 1205
    .local p0, hitPoint:[F
    cmpg-float p0, p4, p2

    if-gtz p0, :cond_0

    .end local p0           #hitPoint:[F
    add-float p0, p4, v1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    .line 1206
    sub-float p0, v0, p3

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    .line 1207
    const/4 p0, 0x1

    .line 1209
    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static saveBitmapToFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 5
    .parameter "context"
    .parameter "filename"
    .parameter "bitmap"
    .parameter "saveFormat"
    .parameter "mode"

    .prologue
    .line 1066
    const/4 v2, 0x0

    .line 1067
    .local v2, result:Z
    const/4 v1, 0x0

    .line 1070
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0, p1, p4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1075
    :goto_0
    const/16 v3, 0x64

    invoke-virtual {p2, p3, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1076
    const/4 v2, 0x1

    .line 1080
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1085
    :goto_1
    return v2

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1081
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1082
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 7
    .parameter "path"
    .parameter "bitmap"
    .parameter "saveFormat"
    .parameter "mode"

    .prologue
    .line 1089
    const/4 v4, 0x0

    .line 1090
    .local v4, result:Z
    const/4 v2, 0x0

    .line 1091
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v1, f:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1099
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    const/16 v5, 0x64

    invoke-virtual {p1, p2, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1100
    const/4 v4, 0x1

    .line 1104
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1109
    :goto_1
    return v4

    .line 1095
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1096
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1105
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveBitmapToTextureFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 472
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 473
    .local v0, conf:Landroid/graphics/Bitmap$Config;
    sget-object v1, Lcom/nemustech/tiffany/world/TFUtils$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    .end local v0           #conf:Landroid/graphics/Bitmap$Config;
    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 477
    new-instance p0, Ljava/io/IOException;

    .end local p0
    const-string p1, "Invalid Bitmap config"

    .end local p1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :catch_0
    move-exception p0

    .line 504
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    .end local p0           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 480
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 481
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 482
    .local v1, height:I
    mul-int/lit8 v0, v3, 0x4

    mul-int v2, v0, v1

    .line 483
    .local v2, size:I
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 484
    .local v7, header:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 485
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 488
    .local v6, comp:Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 490
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 491
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 492
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .end local v0           #buf:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .end local v1           #height:I
    .end local v2           #size:I
    move-result-object v3

    .end local v3           #width:I
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFJniUtils;->compress([BII[BII)I

    move-result p0

    .line 493
    .local p0, comp_size:I
    if-gez p0, :cond_0

    .line 494
    new-instance p0, Ljava/io/IOException;

    .end local p0           #comp_size:I
    const-string p1, "Compressing failed"

    .end local p1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    .restart local p0       #comp_size:I
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    const-string v1, ".tex"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, out:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 499
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 500
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 501
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
