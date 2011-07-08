.class final Landroid/view/ViewRoot$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final MAX_ACCELERATION:F = 20.0f


# instance fields
.field absPosition:F

.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 3051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3074
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3075
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8
    .parameter "off"
    .parameter "time"
    .parameter "axis"

    .prologue
    .line 3100
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 3101
    const/high16 v6, 0x4316

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 3102
    .local v3, normTime:J
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    if-gez v6, :cond_0

    .line 3104
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3105
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3106
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3107
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3109
    :cond_0
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    .line 3127
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 3128
    iget-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 3129
    .local v1, delta:J
    iput-wide p2, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3130
    iget v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3131
    .local v0, acc:F
    cmp-long v6, v1, v3

    if-gez v6, :cond_7

    .line 3133
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 3134
    .local v5, scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    mul-float/2addr v0, v5

    .line 3138
    :cond_1
    const/high16 v6, 0x41a0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    move v6, v0

    :goto_1
    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3149
    .end local v0           #acc:F
    .end local v1           #delta:J
    .end local v5           #scale:F
    :cond_2
    :goto_2
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3150
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    return v6

    .line 3110
    .end local v3           #normTime:J
    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 3111
    neg-float v6, p1

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 3112
    .restart local v3       #normTime:J
    iget v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    if-lez v6, :cond_4

    .line 3114
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3115
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3116
    const/high16 v6, 0x3f80

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3117
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3119
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    goto :goto_0

    .line 3121
    .end local v3           #normTime:J
    :cond_5
    const-wide/16 v3, 0x0

    .restart local v3       #normTime:J
    goto :goto_0

    .line 3138
    .restart local v0       #acc:F
    .restart local v1       #delta:J
    .restart local v5       #scale:F
    :cond_6
    const/high16 v6, 0x41a0

    goto :goto_1

    .line 3141
    .end local v5           #scale:F
    :cond_7
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd

    mul-float v5, v6, v7

    .line 3142
    .restart local v5       #scale:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8

    div-float/2addr v0, v5

    .line 3146
    :cond_8
    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-lez v6, :cond_9

    move v6, v0

    :goto_3
    iput v6, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_2

    :cond_9
    const/high16 v6, 0x3f80

    goto :goto_3
.end method

.method generate(F)I
    .locals 8
    .parameter "precision"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 3165
    const/4 v2, 0x0

    .line 3166
    .local v2, movement:I
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3168
    :goto_0
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v1, v7

    .line 3169
    .local v1, dir:I
    :goto_1
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_0

    .line 3202
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 3203
    :cond_0
    return v2

    .line 3168
    .end local v1           #dir:I
    :cond_1
    const/4 v3, -0x1

    move v1, v3

    goto :goto_1

    .line 3174
    .restart local v1       #dir:I
    :pswitch_0
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 3177
    add-int/2addr v2, v1

    .line 3178
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3179
    iput v7, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    goto :goto_0

    .line 3185
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_0

    .line 3188
    add-int/2addr v2, v1

    .line 3189
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->nonAccelMovement:I

    .line 3190
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    if-lez v1, :cond_2

    const/high16 v4, -0x4000

    :goto_2
    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3191
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    .line 3192
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    goto :goto_0

    :cond_2
    move v4, v6

    .line 3190
    goto :goto_2

    .line 3205
    :cond_3
    add-int/2addr v2, v1

    .line 3206
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    if-ltz v1, :cond_4

    const/high16 v4, -0x4080

    :goto_3
    add-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3207
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->absPosition:F

    .line 3208
    iget v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3209
    .local v0, acc:F
    const v3, 0x3f8ccccd

    mul-float/2addr v0, v3

    .line 3210
    const/high16 v3, 0x41a0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    move v3, v0

    :goto_4
    iput v3, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_0

    .end local v0           #acc:F
    :cond_4
    move v4, v5

    .line 3206
    goto :goto_3

    .line 3210
    .restart local v0       #acc:F
    :cond_5
    iget v3, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    goto :goto_4

    .line 3169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .parameter "_step"

    .prologue
    .line 3081
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->position:F

    .line 3082
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    .line 3083
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot$TrackballAxis;->lastMoveTime:J

    .line 3084
    iput p1, p0, Landroid/view/ViewRoot$TrackballAxis;->step:I

    .line 3085
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRoot$TrackballAxis;->dir:I

    .line 3086
    return-void
.end method
