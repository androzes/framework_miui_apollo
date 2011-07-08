.class public Lcom/nemustech/tiffany/world/TFRippleEffect;
.super Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;
.source "TFRippleEffect.java"


# static fields
.field static final RIPPLE_AMPLITUDE:F = 0.125f

.field static final RIPPLE_COUNT:I = 0x8

.field static final RIPPLE_CYCLES:I = 0x18

.field static final RIPPLE_LENGTH:I = 0x800

.field static final RIPPLE_SCALE:I = 0x400

.field static final RIPPLE_STEP:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TFRippleEffect"


# instance fields
.field mAmplitude:[F

.field mCX:[I

.field mCY:[I

.field final mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

.field mIdentityTexCoord:[F

.field mMax:[I

.field final mMeshH:I

.field final mMeshW:I

.field mT:[I

.field final mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

.field mVectorL:[[I

.field mVectorX:[[F

.field mVectorY:[[F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFCustomPanel;)V
    .locals 2
    .parameter "customPanel"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Blender;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    .line 17
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getMeshWidth()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    .line 18
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getMeshHeight()I

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    .line 19
    new-instance v0, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    .line 20
    iget v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mIdentityTexCoord:[F

    .line 21
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mIdentityTexCoord:[F

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityTexCoord([F)V

    .line 22
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->initializeRipple()V

    .line 23
    return-void
.end method

.method static getDistance(FFFF)F
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 203
    sub-float v0, p2, p0

    .line 204
    .local v0, dx:F
    sub-float v1, p3, p1

    .line 205
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method static getMaxDistance(FF)F
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 208
    cmpl-float v2, p0, v4

    if-lez v2, :cond_0

    move v0, v3

    .line 209
    .local v0, x:F
    :goto_0
    cmpl-float v2, p1, v4

    if-lez v2, :cond_1

    move v1, v3

    .line 210
    .local v1, y:F
    :goto_1
    invoke-static {v0, v1, p0, p1}, Lcom/nemustech/tiffany/world/TFRippleEffect;->getDistance(FFFF)F

    move-result v2

    return v2

    .end local v0           #x:F
    .end local v1           #y:F
    :cond_0
    move v0, v5

    .line 208
    goto :goto_0

    .restart local v0       #x:F
    :cond_1
    move v1, v5

    .line 209
    goto :goto_1
.end method


# virtual methods
.method public addRippleWithModelCoord(FF)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/high16 v1, 0x3f00

    .line 181
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getWidth()F

    move-result v0

    div-float v0, p1, v0

    add-float p1, v0, v1

    .line 182
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getHeight()F

    move-result v0

    div-float v0, p2, v0

    add-float p2, v0, v1

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFRippleEffect;->addRippleWithTexCoord(FF)V

    .line 184
    return-void
.end method

.method public addRippleWithTexCoord(FF)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/high16 v3, 0x3f00

    .line 191
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->findRippleEnded()I

    move-result v0

    .line 192
    .local v0, k:I
    if-gez v0, :cond_0

    .line 193
    const-string v1, "TFRippleEffect"

    const-string v2, "NO FREE RIPPLE SLOT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCX:[I

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 197
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCY:[I

    iget v2, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 198
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mT:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 199
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMax:[I

    invoke-static {p1, p2}, Lcom/nemustech/tiffany/world/TFRippleEffect;->getMaxDistance(FF)F

    move-result v2

    const/high16 v3, 0x4480

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit16 v2, v2, 0xa0

    aput v2, v1, v0

    goto :goto_0
.end method

.method findRippleEnded()I
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->hasRippleEnded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 135
    :goto_1
    return v1

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public hasEnded()Z
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->hasRippleEnded(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_1
    return v1

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method hasRippleEnded(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mT:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMax:[I

    aget v1, v1, p1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initializeRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 76
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->precalcAmplitude()V

    .line 77
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->precalcVector()V

    .line 79
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCX:[I

    .line 80
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCY:[I

    .line 81
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mT:[I

    .line 82
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMax:[I

    .line 83
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 84
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCX:[I

    aput v4, v1, v0

    .line 85
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCY:[I

    aput v4, v1, v0

    .line 86
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mT:[I

    const/16 v2, 0x800

    aput v2, v1, v0

    .line 87
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMax:[I

    aput v4, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getTexCoord()[F

    move-result-object v0

    .line 39
    .local v0, texCoord:[F
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1, v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->loadIdentityTexCoord([F)V

    .line 40
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFCustomPanel;->requestUpdateTexCoord()V

    .line 41
    return-void
.end method

.method public onFrame(I)V
    .locals 1
    .parameter "tick"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    invoke-virtual {v0, p1}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->update(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFRippleEffect;->updateRipple()V

    .line 34
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;->requestUpdateTexCoord()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 26
    const/16 v0, 0x1e

    .line 27
    .local v0, elapse:I
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mTime:Lcom/nemustech/tiffany/world/TFCustomPanel$Time;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lcom/nemustech/tiffany/world/TFCustomPanel$Time;->start(II)V

    .line 28
    return-void
.end method

.method precalcAmplitude()V
    .locals 12

    .prologue
    const/16 v11, 0x800

    const/high16 v10, 0x3f00

    .line 91
    const/16 v2, 0x18

    .line 92
    .local v2, cycles:I
    const/high16 v1, 0x3e00

    .line 94
    .local v1, amplitude:F
    new-array v7, v11, [F

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mAmplitude:[F

    .line 95
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v11, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, a:F
    if-lez v3, :cond_0

    .line 98
    const/high16 v7, 0x3f80

    int-to-float v8, v3

    const v9, 0x44ffe000

    div-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 99
    .local v4, t:F
    const/high16 v7, 0x4000

    mul-float/2addr v7, v4

    const v8, 0x40490fdb

    mul-float/2addr v7, v8

    const/high16 v8, 0x41c0

    mul-float v6, v7, v8

    .line 100
    .local v6, theta:F
    mul-float v5, v4, v4

    .line 101
    .local v5, t8:F
    mul-float/2addr v5, v5

    .line 102
    mul-float/2addr v5, v5

    .line 103
    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    neg-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v7, v10

    const/high16 v8, 0x3e00

    mul-float/2addr v7, v8

    mul-float v0, v7, v5

    .line 105
    .end local v4           #t:F
    .end local v5           #t8:F
    .end local v6           #theta:F
    :cond_0
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mAmplitude:[F

    aput v0, v7, v3

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v0           #a:F
    :cond_1
    return-void
.end method

.method precalcVector()V
    .locals 7

    .prologue
    .line 109
    iget v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    add-int/lit8 v6, v6, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorX:[[F

    .line 110
    iget v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    add-int/lit8 v6, v6, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorY:[[F

    .line 111
    iget v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    add-int/lit8 v6, v6, 0x1

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorL:[[I

    .line 113
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    iget v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    if-gt v3, v5, :cond_2

    .line 114
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    if-gt v2, v5, :cond_1

    .line 115
    int-to-float v5, v2

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 116
    .local v0, dx:F
    int-to-float v5, v3

    iget v6, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 117
    .local v1, dy:F
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 118
    .local v4, l:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 119
    div-float/2addr v0, v4

    .line 120
    div-float/2addr v1, v4

    .line 122
    :cond_0
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorX:[[F

    aget-object v5, v5, v3

    aput v0, v5, v2

    .line 123
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorY:[[F

    aget-object v5, v5, v3

    aput v1, v5, v2

    .line 124
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorL:[[I

    aget-object v5, v5, v3

    const/high16 v6, 0x4480

    mul-float/2addr v6, v4

    float-to-int v6, v6

    aput v6, v5, v2

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v4           #l:F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method updateRipple()V
    .locals 24

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCustomPanel:Lcom/nemustech/tiffany/world/TFCustomPanel;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/nemustech/tiffany/world/TFCustomPanel;->getTexCoord()[F

    move-result-object v17

    .line 139
    .local v17, texCoord:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mIdentityTexCoord:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mIdentityTexCoord:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    const/4 v13, 0x0

    .local v13, k:I
    :goto_0
    const/16 v20, 0x8

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 141
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFRippleEffect;->hasRippleEnded(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 140
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mT:[I

    move-object/from16 v20, v0

    aget v21, v20, v13

    add-int/lit8 v21, v21, 0x10

    aput v21, v20, v13

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCX:[I

    move-object/from16 v20, v0

    aget v6, v20, v13

    .line 146
    .local v6, cx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mCY:[I

    move-object/from16 v20, v0

    aget v7, v20, v13

    .line 147
    .local v7, cy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mT:[I

    move-object/from16 v20, v0

    aget v16, v20, v13

    .line 149
    .local v16, t:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshH:I

    move/from16 v20, v0

    move v0, v12

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    mul-int v20, v20, v12

    mul-int/lit8 v11, v20, 0x2

    .line 151
    .local v11, index:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mMeshW:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 152
    if-le v10, v6, :cond_5

    sub-int v20, v10, v6

    move/from16 v18, v20

    .line 153
    .local v18, vx:I
    :goto_3
    if-le v12, v7, :cond_6

    sub-int v20, v12, v7

    move/from16 v19, v20

    .line 154
    .local v19, vy:I
    :goto_4
    if-le v10, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorX:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    aget v20, v20, v18

    move/from16 v8, v20

    .line 155
    .local v8, dx:F
    :goto_5
    if-le v12, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorY:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    aget v20, v20, v18

    move/from16 v9, v20

    .line 156
    .local v9, dy:F
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorL:[[I

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    aget v14, v20, v18

    .line 157
    .local v14, l:I
    sub-int v15, v16, v14

    .line 158
    .local v15, r:I
    if-gez v15, :cond_2

    .line 159
    const/4 v15, 0x0

    .line 160
    :cond_2
    const/16 v20, 0x800

    move v0, v15

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 161
    const/16 v15, 0x7ff

    .line 162
    :cond_3
    const/high16 v20, 0x3f80

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4500

    div-float v21, v21, v22

    sub-float v5, v20, v21

    .line 163
    .local v5, amp:F
    const/16 v20, 0x0

    cmpg-float v20, v5, v20

    if-gez v20, :cond_4

    .line 164
    const/4 v5, 0x0

    .line 165
    :cond_4
    mul-float v20, v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mAmplitude:[F

    move-object/from16 v21, v0

    aget v21, v21, v15

    mul-float v5, v20, v21

    .line 167
    add-int/lit8 v20, v11, 0x0

    aget v21, v17, v20

    mul-float v22, v8, v5

    add-float v21, v21, v22

    aput v21, v17, v20

    .line 168
    add-int/lit8 v20, v11, 0x1

    aget v21, v17, v20

    mul-float v22, v9, v5

    add-float v21, v21, v22

    aput v21, v17, v20

    .line 169
    add-int/lit8 v11, v11, 0x2

    .line 151
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 152
    .end local v5           #amp:F
    .end local v8           #dx:F
    .end local v9           #dy:F
    .end local v14           #l:I
    .end local v15           #r:I
    .end local v18           #vx:I
    .end local v19           #vy:I
    :cond_5
    sub-int v20, v6, v10

    move/from16 v18, v20

    goto :goto_3

    .line 153
    .restart local v18       #vx:I
    :cond_6
    sub-int v20, v7, v12

    move/from16 v19, v20

    goto :goto_4

    .line 154
    .restart local v19       #vy:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorX:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    aget v20, v20, v18

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v8, v20

    goto :goto_5

    .line 155
    .restart local v8       #dx:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFRippleEffect;->mVectorY:[[F

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    aget v20, v20, v18

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v9, v20

    goto :goto_6

    .line 149
    .end local v8           #dx:F
    .end local v18           #vx:I
    .end local v19           #vy:I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 173
    .end local v6           #cx:I
    .end local v7           #cy:I
    .end local v10           #i:I
    .end local v11           #index:I
    .end local v12           #j:I
    .end local v16           #t:I
    :cond_a
    return-void
.end method
