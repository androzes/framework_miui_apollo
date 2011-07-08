.class public Lcom/nemustech/tiffany/world/TFVector3D;
.super Ljava/lang/Object;
.source "TFVector3D.java"


# static fields
.field public static final EPSILON:F = 1.0E-6f

.field public static final W:I = 0x3

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([FI[FI)V
    .locals 6
    .parameter "v1"
    .parameter "v1Offset"
    .parameter "v2"
    .parameter "v2Offset"

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFVector3D;->add([FI[FI[FI)V

    .line 130
    return-void
.end method

.method public static add([FI[FI[FI)V
    .locals 3
    .parameter "result"
    .parameter "rOffset"
    .parameter "v1"
    .parameter "v1Offset"
    .parameter "v2"
    .parameter "v2Offset"

    .prologue
    .line 65
    add-int/lit8 v0, p1, 0x0

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x0

    aget v2, p4, v2

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 66
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x1

    aget v2, p4, v2

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 67
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 68
    return-void
.end method

.method public static cross([FI[FI[FI)V
    .locals 6
    .parameter "result"
    .parameter "rOffset"
    .parameter "v1"
    .parameter "v1Offset"
    .parameter "v2"
    .parameter "v2Offset"

    .prologue
    .line 116
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x2

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 117
    .local v0, i:F
    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x0

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 118
    .local v1, j:F
    add-int/lit8 v3, p3, 0x0

    aget v3, p2, v3

    add-int/lit8 v4, p5, 0x1

    aget v4, p4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 119
    .local v2, k:F
    add-int/lit8 v3, p1, 0x0

    aput v0, p0, v3

    .line 120
    add-int/lit8 v3, p1, 0x1

    aput v1, p0, v3

    .line 121
    add-int/lit8 v3, p1, 0x2

    aput v2, p0, v3

    .line 122
    return-void
.end method

.method public static dot([FI[FI)F
    .locals 5
    .parameter "v1"
    .parameter "v1Offset"
    .parameter "v2"
    .parameter "v2Offset"

    .prologue
    .line 101
    add-int/lit8 v3, p1, 0x0

    aget v3, p0, v3

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    mul-float v0, v3, v4

    .line 102
    .local v0, x:F
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    mul-float v1, v3, v4

    .line 103
    .local v1, y:F
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    mul-float v2, v3, v4

    .line 104
    .local v2, z:F
    add-float v3, v0, v1

    add-float/2addr v3, v2

    return v3
.end method

.method public static dotWithAxis([FI[FII)F
    .locals 2
    .parameter "p1"
    .parameter "p1Offset"
    .parameter "p2"
    .parameter "p2Offset"
    .parameter "whichAxis"

    .prologue
    .line 226
    packed-switch p4, :pswitch_data_0

    .line 236
    add-int/lit8 v0, p3, 0x2

    aget v0, p2, v0

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    sub-float/2addr v0, v1

    :goto_0
    return v0

    .line 229
    :pswitch_0
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 232
    :pswitch_1
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPointOnLine([FI[FI[FIFI)F
    .locals 7
    .parameter "point"
    .parameter "pointOffset"
    .parameter "p1"
    .parameter "p1Offset"
    .parameter "p2"
    .parameter "p2Offset"
    .parameter "value"
    .parameter "whichAxis"

    .prologue
    .line 160
    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move v3, p5

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI[FI)V

    .line 162
    if-ltz p7, :cond_0

    const/4 v0, 0x2

    if-le p7, v0, :cond_1

    .line 163
    :cond_0
    const/4 p7, 0x2

    .line 164
    :cond_1
    add-int v0, p3, p7

    aget v0, p2, v0

    sub-float v0, p6, v0

    aget v1, p0, p7

    div-float v6, v0, v1

    .line 165
    .local v6, t:F
    invoke-static {p0, p1, v6}, Lcom/nemustech/tiffany/world/TFVector3D;->mul([FIF)V

    .line 166
    invoke-static {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFVector3D;->add([FI[FI)V

    .line 167
    return v6
.end method

.method public static getPointOnLine([FI[FI[FIF)V
    .locals 6
    .parameter "point"
    .parameter "pointOffset"
    .parameter "p1"
    .parameter "p1Offset"
    .parameter "p2"
    .parameter "p2Offset"
    .parameter "t"

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move v3, p5

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI[FI)V

    .line 181
    invoke-static {p0, p1, p6}, Lcom/nemustech/tiffany/world/TFVector3D;->mul([FIF)V

    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFVector3D;->add([FI[FI)V

    .line 183
    return-void
.end method

.method public static getTOfPointOnLine([FI[FI[FI)F
    .locals 4
    .parameter "point"
    .parameter "pointOffset"
    .parameter "p1"
    .parameter "p1Offset"
    .parameter "p2"
    .parameter "p2Offset"

    .prologue
    .line 198
    add-int/lit8 v0, p5, 0x0

    aget v0, p4, v0

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    sub-float/2addr v0, v1

    .line 199
    .local v0, dir_x:F
    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    sub-float/2addr v1, v2

    .line 200
    .local v1, dir_y:F
    add-int/lit8 p5, p5, 0x2

    aget p4, p4, p5

    .end local p4
    .end local p5
    add-int/lit8 p5, p3, 0x2

    aget p5, p2, p5

    sub-float/2addr p4, p5

    .line 201
    .local p4, dir_z:F
    add-int/lit8 p5, p1, 0x0

    aget p5, p0, p5

    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    sub-float/2addr p5, v2

    .line 202
    .local p5, p_x:F
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    sub-float/2addr v2, v3

    .line 203
    .local v2, p_y:F
    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    .end local p0
    .end local p1
    add-int/lit8 p1, p3, 0x2

    aget p1, p2, p1

    sub-float/2addr p0, p1

    .line 205
    .local p0, p_z:F
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/nemustech/tiffany/world/TFVector3D;->isEqual(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x7fc0

    .line 206
    .local p1, t_x:F
    :goto_0
    const/4 p2, 0x0

    invoke-static {v1, p2}, Lcom/nemustech/tiffany/world/TFVector3D;->isEqual(FF)Z

    .end local p2
    move-result p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x7fc0

    .line 207
    .local p2, t_y:F
    :goto_1
    const/4 p3, 0x0

    invoke-static {p4, p3}, Lcom/nemustech/tiffany/world/TFVector3D;->isEqual(FF)Z

    .end local p3
    move-result p3

    if-eqz p3, :cond_4

    const/high16 p0, 0x7fc0

    .line 208
    .local p0, t_z:F
    :goto_2
    invoke-static {p1, p2}, Lcom/nemustech/tiffany/world/TFVector3D;->isEqual(FF)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2, p0}, Lcom/nemustech/tiffany/world/TFVector3D;->isEqual(FF)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lcom/nemustech/tiffany/world/TFVector3D;->isEqual(FF)Z

    move-result p3

    if-nez p3, :cond_5

    .line 209
    :cond_0
    const/high16 p0, 0x7fc0

    .line 215
    .end local p0           #t_z:F
    .end local p1           #t_x:F
    :cond_1
    :goto_3
    return p0

    .line 205
    .local p0, p_z:F
    .local p2, p1:[F
    .restart local p3
    :cond_2
    div-float p1, p5, v0

    goto :goto_0

    .line 206
    .end local p2           #p1:[F
    .restart local p1       #t_x:F
    :cond_3
    div-float p2, v2, v1

    goto :goto_1

    .line 207
    .end local p3
    .local p2, t_y:F
    :cond_4
    div-float/2addr p0, p4

    goto :goto_2

    .line 211
    .local p0, t_z:F
    :cond_5
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_6

    move p0, p1

    .line 212
    goto :goto_3

    .line 213
    :cond_6
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    .end local p1           #t_x:F
    if-nez p1, :cond_1

    move p0, p2

    .line 214
    goto :goto_3
.end method

.method public static isEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 246
    sub-float v0, p1, p0

    .line 247
    .local v0, diff:F
    const v1, 0x358637bd

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, -0x4a79c843

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static length([FI)F
    .locals 2
    .parameter "v"
    .parameter "vOffset"

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/nemustech/tiffany/world/TFVector3D;->lengthSquare([FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lengthSquare([FI)F
    .locals 1
    .parameter "v"
    .parameter "vOffset"

    .prologue
    .line 46
    invoke-static {p0, p1, p0, p1}, Lcom/nemustech/tiffany/world/TFVector3D;->dot([FI[FI)F

    move-result v0

    return v0
.end method

.method public static mul([FIF)V
    .locals 0
    .parameter "v"
    .parameter "vOffset"
    .parameter "scalar"

    .prologue
    .line 143
    invoke-static {p0, p1, p0, p1, p2}, Lcom/nemustech/tiffany/world/TFVector3D;->mul([FI[FIF)V

    .line 144
    return-void
.end method

.method public static mul([FI[FIF)V
    .locals 2
    .parameter "result"
    .parameter "rOffset"
    .parameter "v"
    .parameter "vOffset"
    .parameter "scalar"

    .prologue
    .line 89
    add-int/lit8 v0, p1, 0x0

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    mul-float/2addr v1, p4

    aput v1, p0, v0

    .line 90
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    mul-float/2addr v1, p4

    aput v1, p0, v0

    .line 91
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    mul-float/2addr v1, p4

    aput v1, p0, v0

    .line 92
    return-void
.end method

.method public static set([FIFFF)V
    .locals 1
    .parameter "v"
    .parameter "vOffset"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 11
    add-int/lit8 v0, p1, 0x0

    aput p2, p0, v0

    .line 12
    add-int/lit8 v0, p1, 0x1

    aput p3, p0, v0

    .line 13
    add-int/lit8 v0, p1, 0x2

    aput p4, p0, v0

    .line 14
    return-void
.end method

.method public static set([FILjava/nio/FloatBuffer;I)V
    .locals 3
    .parameter "v"
    .parameter "vOffset"
    .parameter "src"
    .parameter "srcOffset"

    .prologue
    .line 22
    add-int/lit8 v0, p3, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-int/lit8 v2, p3, 0x2

    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/nemustech/tiffany/world/TFVector3D;->set([FIFFF)V

    .line 23
    return-void
.end method

.method public static set([FI[FI)V
    .locals 1
    .parameter "v"
    .parameter "vOffset"
    .parameter "src"
    .parameter "srcOffset"

    .prologue
    .line 19
    const/4 v0, 0x3

    invoke-static {p2, p3, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    return-void
.end method

.method public static setW([FI)V
    .locals 1
    .parameter "v"
    .parameter "vOffset"

    .prologue
    .line 38
    const/high16 v0, 0x3f80

    invoke-static {p0, p1, v0}, Lcom/nemustech/tiffany/world/TFVector3D;->setW([FIF)V

    .line 39
    return-void
.end method

.method public static setW([FIF)V
    .locals 1
    .parameter "v"
    .parameter "vOffset"
    .parameter "w"

    .prologue
    .line 31
    add-int/lit8 v0, p1, 0x3

    aput p2, p0, v0

    .line 32
    return-void
.end method

.method public static sub([FI[FI)V
    .locals 6
    .parameter "v1"
    .parameter "v1Offset"
    .parameter "v2"
    .parameter "v2Offset"

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFVector3D;->sub([FI[FI[FI)V

    .line 137
    return-void
.end method

.method public static sub([FI[FI[FI)V
    .locals 3
    .parameter "result"
    .parameter "rOffset"
    .parameter "v1"
    .parameter "v1Offset"
    .parameter "v2"
    .parameter "v2Offset"

    .prologue
    .line 77
    add-int/lit8 v0, p1, 0x0

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x0

    aget v2, p4, v2

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 78
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x1

    aget v2, p4, v2

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 79
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x2

    aget v1, p2, v1

    add-int/lit8 v2, p5, 0x2

    aget v2, p4, v2

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 80
    return-void
.end method
