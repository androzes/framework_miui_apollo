.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0xa

.field static final TAG:Ljava/lang/String; = "VelocityTracker"

.field static final localLOGV:Z

.field static final mPool:[Landroid/view/VelocityTracker;

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastTouch:I

.field private mNext:Landroid/view/VelocityTracker;

.field final mPastTime:[[J

.field final mPastX:[[F

.field final mPastY:[[F

.field mXVelocity:[F

.field mYVelocity:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/VelocityTracker;

    sput-object v0, Landroid/view/VelocityTracker;->mPool:[Landroid/view/VelocityTracker;

    .line 44
    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPastX:[[F

    .line 59
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPastY:[[F

    .line 60
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPastTime:[[J

    .line 62
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/VelocityTracker;->mYVelocity:[F

    .line 63
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/VelocityTracker;->mXVelocity:[F

    .line 103
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "ev"

    .prologue
    const-wide/high16 v12, -0x8000

    const/4 v11, 0x5

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 129
    .local v0, N:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 130
    .local v4, pointerCount:I
    iget v8, p0, Landroid/view/VelocityTracker;->mLastTouch:I

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v7, v8, 0xa

    .line 131
    .local v7, touchIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 132
    const/4 v2, 0x0

    .local v2, id:I
    :goto_1
    if-ge v2, v11, :cond_0

    .line 133
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastTime:[[J

    aget-object v8, v8, v2

    aput-wide v12, v8, v7

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_0
    const/4 v3, 0x0

    .local v3, p:I
    :goto_2
    if-ge v3, v4, :cond_1

    .line 136
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 137
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastX:[[F

    aget-object v8, v8, v2

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    aput v9, v8, v7

    .line 138
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastY:[[F

    aget-object v8, v8, v2

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v9

    aput v9, v8, v7

    .line 139
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastTime:[[J

    aget-object v8, v8, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    :cond_1
    add-int/lit8 v8, v7, 0x1

    rem-int/lit8 v7, v8, 0xa

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v2           #id:I
    .end local v3           #p:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #id:I
    :goto_3
    if-ge v2, v11, :cond_3

    .line 148
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastTime:[[J

    aget-object v8, v8, v2

    aput-wide v12, v8, v7

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 150
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 151
    .local v5, time:J
    const/4 v3, 0x0

    .restart local v3       #p:I
    :goto_4
    if-ge v3, v4, :cond_4

    .line 152
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 153
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastX:[[F

    aget-object v8, v8, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    aput v9, v8, v7

    .line 154
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastY:[[F

    aget-object v8, v8, v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    aput v9, v8, v7

    .line 155
    iget-object v8, p0, Landroid/view/VelocityTracker;->mPastTime:[[J

    aget-object v8, v8, v2

    aput-wide v5, v8, v7

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 158
    :cond_4
    iput v7, p0, Landroid/view/VelocityTracker;->mLastTouch:I

    .line 159
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 110
    iget-object v2, p0, Landroid/view/VelocityTracker;->mPastTime:[[J

    .line 111
    .local v2, pastTime:[[J
    const/4 v1, 0x0

    .local v1, p:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 113
    aget-object v3, v2, v1

    const-wide/high16 v4, -0x8000

    aput-wide v4, v3, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .parameter "units"

    .prologue
    .line 168
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 169
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 26
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    .line 185
    const/16 v20, 0x0

    .local v20, pos:I
    :goto_0
    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPastX:[[F

    move-object/from16 v22, v0

    aget-object v18, v22, v20

    .line 187
    .local v18, pastX:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPastY:[[F

    move-object/from16 v22, v0

    aget-object v19, v22, v20

    .line 188
    .local v19, pastY:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPastTime:[[J

    move-object/from16 v22, v0

    aget-object v17, v22, v20

    .line 189
    .local v17, pastTime:[J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouch:I

    move v10, v0

    .line 192
    .local v10, lastTouch:I
    move v14, v10

    .line 193
    .local v14, oldestTouch:I
    aget-wide v22, v17, v10

    const-wide/high16 v24, -0x8000

    cmp-long v22, v22, v24

    if-eqz v22, :cond_0

    .line 194
    aget-wide v22, v17, v10

    const-wide/16 v24, 0xc8

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move v3, v0

    .line 195
    .local v3, acceptableTime:F
    add-int/lit8 v22, v14, 0xa

    const/16 v23, 0x1

    sub-int v22, v22, v23

    rem-int/lit8 v11, v22, 0xa

    .line 197
    .local v11, nextOldestTouch:I
    :goto_1
    aget-wide v22, v17, v11

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v22, v3

    if-ltz v22, :cond_0

    if-eq v11, v10, :cond_0

    .line 198
    move v14, v11

    .line 199
    add-int/lit8 v22, v14, 0xa

    const/16 v23, 0x1

    sub-int v22, v22, v23

    rem-int/lit8 v11, v22, 0xa

    goto :goto_1

    .line 204
    .end local v3           #acceptableTime:F
    .end local v11           #nextOldestTouch:I
    :cond_0
    aget v15, v18, v14

    .line 205
    .local v15, oldestX:F
    aget v16, v19, v14

    .line 206
    .local v16, oldestY:F
    aget-wide v12, v17, v14

    .line 207
    .local v12, oldestTime:J
    const/4 v4, 0x0

    .line 208
    .local v4, accumX:F
    const/4 v5, 0x0

    .line 209
    .local v5, accumY:F
    sub-int v22, v10, v14

    add-int/lit8 v22, v22, 0xa

    rem-int/lit8 v22, v22, 0xa

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move v2, v0

    .line 211
    .local v2, N:F
    const/high16 v22, 0x4040

    cmpl-float v22, v2, v22

    if-lez v22, :cond_1

    const/high16 v22, 0x3f80

    sub-float v2, v2, v22

    .line 213
    :cond_1
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    move v0, v8

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v22, v2

    if-gez v22, :cond_5

    .line 214
    add-int v22, v14, v8

    rem-int/lit8 v9, v22, 0xa

    .line 215
    .local v9, j:I
    aget-wide v22, v17, v9

    sub-long v22, v22, v12

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v7, v0

    .line 216
    .local v7, dur:I
    if-nez v7, :cond_2

    .line 213
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 217
    :cond_2
    aget v22, v18, v9

    sub-float v6, v22, v15

    .line 218
    .local v6, dist:F
    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v6, v22

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v21, v22, v23

    .line 219
    .local v21, vel:F
    const/16 v22, 0x0

    cmpl-float v22, v4, v22

    if-nez v22, :cond_3

    move/from16 v4, v21

    .line 221
    :goto_4
    aget v22, v19, v9

    sub-float v6, v22, v16

    .line 222
    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v6, v22

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v21, v22, v23

    .line 223
    const/16 v22, 0x0

    cmpl-float v22, v5, v22

    if-nez v22, :cond_4

    move/from16 v5, v21

    :goto_5
    goto :goto_3

    .line 219
    :cond_3
    add-float v22, v4, v21

    const/high16 v23, 0x3f00

    mul-float v22, v22, v23

    move/from16 v4, v22

    goto :goto_4

    .line 223
    :cond_4
    add-float v22, v5, v21

    const/high16 v23, 0x3f00

    mul-float v22, v22, v23

    move/from16 v5, v22

    goto :goto_5

    .line 226
    .end local v6           #dist:F
    .end local v7           #dur:I
    .end local v9           #j:I
    .end local v21           #vel:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mXVelocity:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v23, v4, v23

    if-gez v23, :cond_6

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v23, v0

    move v0, v4

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    :goto_6
    aput v23, v22, v20

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mYVelocity:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    cmpg-float v23, v5, v23

    if-gez v23, :cond_7

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v23, v0

    move v0, v5

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    :goto_7
    aput v23, v22, v20

    .line 185
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 226
    :cond_6
    move v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    goto :goto_6

    .line 228
    :cond_7
    move v0, v5

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    goto :goto_7

    .line 234
    .end local v2           #N:F
    .end local v4           #accumX:F
    .end local v5           #accumY:F
    .end local v8           #i:I
    .end local v10           #lastTouch:I
    .end local v12           #oldestTime:J
    .end local v14           #oldestTouch:I
    .end local v15           #oldestX:F
    .end local v16           #oldestY:F
    .end local v17           #pastTime:[J
    .end local v18           #pastX:[F
    .end local v19           #pastY:[F
    :cond_8
    return-void
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/view/VelocityTracker;->mXVelocity:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getXVelocity(I)F
    .locals 1
    .parameter "id"

    .prologue
    .line 264
    iget-object v0, p0, Landroid/view/VelocityTracker;->mXVelocity:[F

    aget v0, v0, p1

    return v0
.end method

.method public getYVelocity()F
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/view/VelocityTracker;->mYVelocity:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getYVelocity(I)F
    .locals 1
    .parameter "id"

    .prologue
    .line 275
    iget-object v0, p0, Landroid/view/VelocityTracker;->mYVelocity:[F

    aget v0, v0, p1

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 86
    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 92
    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    .line 93
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method
