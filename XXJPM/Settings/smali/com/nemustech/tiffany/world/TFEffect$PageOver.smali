.class public Lcom/nemustech/tiffany/world/TFEffect$PageOver;
.super Lcom/nemustech/tiffany/world/TFFlexiblePanel$IdentityPointBlender;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageOver"
.end annotation


# static fields
.field public static final BOTTOM_TO_TOP:I = 0x3

.field public static final LEFT_TO_RIGHT:I = 0x1

.field private static final N:I = 0x8

.field public static final RIGHT_TO_LEFT:I = 0x0

.field public static final TOP_TO_BOTTOM:I = 0x2

.field private static final circleN:I = 0x2

.field private static final mEllapse:I


# instance fields
.field public mDirection:I

.field private mFrame:I

.field public mReverse:Z

.field private mTicks:I

.field private points:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2090
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$IdentityPointBlender;-><init>()V

    .line 2209
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    .line 2091
    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mDirection:I

    .line 2092
    iput-boolean v1, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mReverse:Z

    .line 2093
    return-void
.end method


# virtual methods
.method public calcXYZ(II[F)V
    .locals 8
    .parameter "s"
    .parameter "t"
    .parameter "xyz"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x4100

    .line 2097
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mDirection:I

    packed-switch v0, :pswitch_data_0

    .line 2100
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    aput v0, p3, v4

    .line 2101
    int-to-float v0, p2

    div-float/2addr v0, v3

    aput v0, p3, v5

    .line 2102
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    aput v0, p3, v6

    .line 2120
    :goto_0
    return-void

    .line 2105
    :pswitch_0
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    sub-int v2, v7, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    aput v0, p3, v4

    .line 2106
    int-to-float v0, p2

    div-float/2addr v0, v3

    aput v0, p3, v5

    .line 2107
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    sub-int v1, v7, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    aput v0, p3, v6

    goto :goto_0

    .line 2110
    :pswitch_1
    int-to-float v0, p1

    div-float/2addr v0, v3

    aput v0, p3, v4

    .line 2111
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    aput v0, p3, v5

    .line 2112
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    aput v0, p3, v6

    goto :goto_0

    .line 2115
    :pswitch_2
    int-to-float v0, p1

    div-float/2addr v0, v3

    aput v0, p3, v4

    .line 2116
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    sub-int v2, v7, p2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    aput v0, p3, v5

    .line 2117
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    sub-int v1, v7, p2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    aput v0, p3, v6

    goto :goto_0

    .line 2097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isNextAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2191
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mReverse:Z

    if-eqz v0, :cond_1

    .line 2192
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    if-ltz v0, :cond_0

    move v0, v3

    .line 2194
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2192
    goto :goto_0

    .line 2194
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 2188
    return-void
.end method

.method public onFrame(I)Z
    .locals 15
    .parameter "tick"

    .prologue
    .line 2128
    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mTicks:I

    add-int v10, v10, p1

    iput v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mTicks:I

    .line 2134
    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mTicks:I

    if-gez v10, :cond_0

    .line 2135
    const/4 v10, 0x0

    .line 2184
    :goto_0
    return v10

    .line 2136
    :cond_0
    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mTicks:I

    const/4 v11, 0x0

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mTicks:I

    .line 2139
    const v7, 0x40490fdb

    .line 2140
    .local v7, pi:F
    const/high16 v5, 0x4100

    .line 2141
    .local v5, f_N:F
    const/high16 v9, 0x42b4

    .line 2142
    .local v9, step:F
    const v0, 0x3da2f983

    .line 2146
    .local v0, R:F
    const/4 v6, 0x0

    .line 2148
    .local v6, i:I
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 2149
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 2150
    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    const/16 v11, 0x8

    if-gt v10, v11, :cond_3

    .line 2151
    const/16 v10, 0x8

    iget v11, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    sub-int v1, v10, v11

    .line 2152
    .local v1, c:I
    const/16 v10, 0x8

    iget v11, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x4100

    div-float v3, v10, v11

    .line 2153
    .local v3, cx:F
    const v4, 0x3da2f983

    .line 2154
    .local v4, cy:F
    const/4 v6, 0x1

    :goto_1
    if-gt v6, v1, :cond_1

    .line 2155
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v13, 0x1

    sub-int v13, v6, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3e00

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 2156
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v13, 0x1

    sub-int v13, v6, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 2154
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2158
    :cond_1
    :goto_2
    const/16 v10, 0x8

    if-gt v6, v10, :cond_2

    add-int/lit8 v10, v1, 0x2

    if-gt v6, v10, :cond_2

    .line 2159
    const/high16 v10, -0x3d4c

    sub-int v11, v6, v1

    int-to-float v11, v11

    const/high16 v12, 0x42b4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const v11, 0x40490fdb

    mul-float/2addr v10, v11

    const/high16 v11, 0x4334

    div-float v8, v10, v11

    .line 2160
    .local v8, rad:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x0

    const v12, 0x3da2f983

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v12, v3

    aput v12, v10, v11

    .line 2161
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    const v12, 0x3da2f983

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v12, v4

    aput v12, v10, v11

    .line 2158
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2163
    .end local v8           #rad:F
    :cond_2
    :goto_3
    const/16 v10, 0x8

    if-gt v6, v10, :cond_5

    .line 2164
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v13, 0x1

    sub-int v13, v6, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3e00

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 2165
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v13, 0x1

    sub-int v13, v6, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 2163
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2169
    .end local v1           #c:I
    .end local v3           #cx:F
    .end local v4           #cy:F
    :cond_3
    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    const/16 v11, 0x8

    sub-int v1, v10, v11

    .line 2170
    .restart local v1       #c:I
    const/high16 v10, 0x42b4

    const/high16 v11, 0x42b4

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const v11, 0x40490fdb

    mul-float/2addr v10, v11

    const/high16 v11, 0x4334

    div-float v2, v10, v11

    .line 2171
    .local v2, center_rad:F
    const v10, 0x3da2f983

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v3, v10, v11

    .line 2172
    .restart local v3       #cx:F
    const v10, 0x3da2f983

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v4, v10, v11

    .line 2173
    .restart local v4       #cy:F
    const/4 v6, 0x1

    :goto_4
    const/4 v10, 0x2

    sub-int/2addr v10, v1

    if-gt v6, v10, :cond_4

    .line 2174
    const/high16 v10, -0x3d4c

    add-int v11, v1, v6

    int-to-float v11, v11

    const/high16 v12, 0x42b4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const v11, 0x40490fdb

    mul-float/2addr v10, v11

    const/high16 v11, 0x4334

    div-float v8, v10, v11

    .line 2175
    .restart local v8       #rad:F
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x0

    const v12, 0x3da2f983

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v12, v3

    aput v12, v10, v11

    .line 2176
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    const v12, 0x3da2f983

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v12, v4

    aput v12, v10, v11

    .line 2173
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2178
    .end local v8           #rad:F
    :cond_4
    :goto_5
    const/16 v10, 0x8

    if-gt v6, v10, :cond_5

    .line 2179
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v13, 0x1

    sub-int v13, v6, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x0

    aget v12, v12, v13

    const/high16 v13, 0x3e00

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 2180
    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->points:[F

    const/4 v13, 0x1

    sub-int v13, v6, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 2178
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2183
    .end local v2           #center_rad:F
    :cond_5
    iget v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    iget-boolean v11, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mReverse:Z

    if-eqz v11, :cond_6

    const/4 v11, -0x1

    :goto_6
    add-int/2addr v10, v11

    iput v10, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    .line 2184
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2183
    :cond_6
    const/4 v11, 0x1

    goto :goto_6
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2123
    iput v1, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mTicks:I

    .line 2124
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mReverse:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/nemustech/tiffany/world/TFEffect$PageOver;->mFrame:I

    .line 2125
    return-void

    :cond_0
    move v0, v1

    .line 2124
    goto :goto_0
.end method
