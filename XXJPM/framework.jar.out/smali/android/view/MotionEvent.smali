.class public final Landroid/view/MotionEvent;
.super Ljava/lang/Object;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_UP:I = 0x1

.field public static final BASE_AVAIL_POINTERS:I = 0x5

.field private static final BASE_AVAIL_SAMPLES:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG_POINTERS:Z = false

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field private static final MAX_RECYCLED:I = 0xa

.field public static final NUM_SAMPLE_DATA:I = 0x4

.field public static final SAMPLE_PRESSURE:I = 0x2

.field public static final SAMPLE_SIZE:I = 0x3

.field public static final SAMPLE_X:I = 0x0

.field public static final SAMPLE_Y:I = 0x1

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mDataSamples:[F

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTimeNano:J

.field private mMetaState:I

.field private mNext:Landroid/view/MotionEvent;

.field private mNumPointers:I

.field private mNumSamples:I

.field private mPointerIdentifiers:[I

.field private mRawX:F

.field private mRawY:F

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field private mTimeSamples:[J

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 219
    const/4 v0, 0x0

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1202
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 253
    const/16 v0, 0xa0

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 254
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 255
    return-void
.end method

.method static synthetic access$000()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/MotionEvent;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/MotionEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 4

    .prologue
    .line 258
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v2, :cond_0

    .line 260
    new-instance v2, Landroid/view/MotionEvent;

    invoke-direct {v2}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v1

    move-object v1, v2

    .line 267
    :goto_0
    return-object v1

    .line 262
    :cond_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 263
    .local v0, ev:Landroid/view/MotionEvent;
    iget-object v2, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 264
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 265
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/MotionEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 266
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 267
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 268
    .end local v0           #ev:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 1
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 385
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 386
    .local v0, ev:Landroid/view/MotionEvent;
    iput p12, v0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 387
    iput p13, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 388
    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTime:J

    .line 389
    const-wide/32 p0, 0xf4240

    mul-long/2addr p0, p2

    iput-wide p0, v0, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 390
    .end local p0
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 391
    iput p9, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 392
    iput p10, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 393
    iput p11, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 395
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 396
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 397
    iget-object p0, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 398
    .local p0, pointerIds:[I
    const/4 p1, 0x0

    const/4 p4, 0x0

    aput p4, p0, p1

    .line 399
    .end local p4
    iget-object p0, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 400
    .local p0, data:[F
    const/4 p1, 0x0

    iput p5, v0, Landroid/view/MotionEvent;->mRawX:F

    aput p5, p0, p1

    .line 401
    const/4 p1, 0x1

    iput p6, v0, Landroid/view/MotionEvent;->mRawY:F

    aput p6, p0, p1

    .line 402
    const/4 p1, 0x2

    aput p7, p0, p1

    .line 403
    const/4 p1, 0x3

    aput p8, p0, p1

    .line 404
    iget-object p0, v0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .end local p0           #data:[F
    const/4 p1, 0x0

    aput-wide p2, p0, p1

    .line 406
    return-object v0
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 8
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 488
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 489
    .local v1, ev:Landroid/view/MotionEvent;
    iput v5, v1, Landroid/view/MotionEvent;->mDeviceId:I

    .line 490
    iput v5, v1, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 491
    iput-wide p0, v1, Landroid/view/MotionEvent;->mDownTime:J

    .line 492
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p2

    iput-wide v3, v1, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 493
    iput p4, v1, Landroid/view/MotionEvent;->mAction:I

    .line 494
    iput v7, v1, Landroid/view/MotionEvent;->mNumPointers:I

    .line 495
    iput p7, v1, Landroid/view/MotionEvent;->mMetaState:I

    .line 496
    iput v6, v1, Landroid/view/MotionEvent;->mXPrecision:F

    .line 497
    iput v6, v1, Landroid/view/MotionEvent;->mYPrecision:F

    .line 499
    iput v7, v1, Landroid/view/MotionEvent;->mNumPointers:I

    .line 500
    iput v7, v1, Landroid/view/MotionEvent;->mNumSamples:I

    .line 501
    iget-object v2, v1, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 502
    .local v2, pointerIds:[I
    aput v5, v2, v5

    .line 503
    iget-object v0, v1, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 504
    .local v0, data:[F
    iput p5, v1, Landroid/view/MotionEvent;->mRawX:F

    aput p5, v0, v5

    .line 505
    iput p6, v1, Landroid/view/MotionEvent;->mRawY:F

    aput p6, v0, v7

    .line 506
    const/4 v3, 0x2

    aput v6, v0, v3

    .line 507
    const/4 v3, 0x3

    aput v6, v0, v3

    .line 508
    iget-object v3, v1, Landroid/view/MotionEvent;->mTimeSamples:[J

    aput-wide p2, v3, v5

    .line 510
    return-object v1
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 1
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointers"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 444
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 445
    .local v0, ev:Landroid/view/MotionEvent;
    iput p13, v0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 446
    iput p14, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 447
    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTime:J

    .line 448
    const-wide/32 p0, 0xf4240

    mul-long/2addr p0, p2

    iput-wide p0, v0, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 449
    .end local p0
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 450
    iput p5, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 451
    iput p10, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 452
    iput p11, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 453
    iput p12, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 455
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 456
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 457
    iget-object p0, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 458
    .local p0, pointerIds:[I
    const/4 p1, 0x0

    const/4 p4, 0x0

    aput p4, p0, p1

    .line 459
    .end local p4
    iget-object p0, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 460
    .local p0, data:[F
    const/4 p1, 0x0

    iput p6, v0, Landroid/view/MotionEvent;->mRawX:F

    aput p6, p0, p1

    .line 461
    const/4 p1, 0x1

    iput p7, v0, Landroid/view/MotionEvent;->mRawY:F

    aput p7, p0, p1

    .line 462
    const/4 p1, 0x2

    aput p8, p0, p1

    .line 463
    const/4 p1, 0x3

    aput p9, p0, p1

    .line 464
    iget-object p0, v0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .end local p0           #data:[F
    const/4 p1, 0x0

    aput-wide p2, p0, p1

    .line 466
    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 537
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v3

    .line 538
    .local v3, ev:Landroid/view/MotionEvent;
    iget v4, p0, Landroid/view/MotionEvent;->mDeviceId:I

    iput v4, v3, Landroid/view/MotionEvent;->mDeviceId:I

    .line 539
    iget v4, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v4, v3, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 540
    iget-wide v4, p0, Landroid/view/MotionEvent;->mDownTime:J

    iput-wide v4, v3, Landroid/view/MotionEvent;->mDownTime:J

    .line 541
    iget-wide v4, p0, Landroid/view/MotionEvent;->mEventTimeNano:J

    iput-wide v4, v3, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 542
    iget v4, p0, Landroid/view/MotionEvent;->mAction:I

    iput v4, v3, Landroid/view/MotionEvent;->mAction:I

    .line 543
    iget v4, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v4, v3, Landroid/view/MotionEvent;->mNumPointers:I

    .line 544
    iget v4, p0, Landroid/view/MotionEvent;->mRawX:F

    iput v4, v3, Landroid/view/MotionEvent;->mRawX:F

    .line 545
    iget v4, p0, Landroid/view/MotionEvent;->mRawY:F

    iput v4, v3, Landroid/view/MotionEvent;->mRawY:F

    .line 546
    iget v4, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v4, v3, Landroid/view/MotionEvent;->mMetaState:I

    .line 547
    iget v4, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v4, v3, Landroid/view/MotionEvent;->mXPrecision:F

    .line 548
    iget v4, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v4, v3, Landroid/view/MotionEvent;->mYPrecision:F

    .line 550
    iget v2, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iput v2, v3, Landroid/view/MotionEvent;->mNumSamples:I

    .line 551
    .local v2, NS:I
    iget-object v4, v3, Landroid/view/MotionEvent;->mTimeSamples:[J

    array-length v4, v4

    if-lt v4, v2, :cond_0

    .line 552
    iget-object v4, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    iget-object v5, v3, Landroid/view/MotionEvent;->mTimeSamples:[J

    invoke-static {v4, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    :goto_0
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v1, v3, Landroid/view/MotionEvent;->mNumPointers:I

    .line 558
    .local v1, NP:I
    iget-object v4, v3, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    array-length v4, v4

    if-lt v4, v1, :cond_1

    .line 559
    iget-object v4, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    iget-object v5, v3, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-static {v4, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    :goto_1
    mul-int v4, v1, v2

    mul-int/lit8 v0, v4, 0x4

    .line 565
    .local v0, ND:I
    iget-object v4, v3, Landroid/view/MotionEvent;->mDataSamples:[F

    array-length v4, v4

    if-lt v4, v0, :cond_2

    .line 566
    iget-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget-object v5, v3, Landroid/view/MotionEvent;->mDataSamples:[F

    invoke-static {v4, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    .end local p0
    :goto_2
    return-object v3

    .line 554
    .end local v0           #ND:I
    .end local v1           #NP:I
    .restart local p0
    :cond_0
    iget-object v4, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    invoke-virtual {v4}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    check-cast v4, [J

    iput-object v4, v3, Landroid/view/MotionEvent;->mTimeSamples:[J

    goto :goto_0

    .line 561
    .restart local v1       #NP:I
    :cond_1
    iget-object v4, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, v3, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    goto :goto_1

    .line 568
    .restart local v0       #ND:I
    :cond_2
    iget-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [F

    check-cast p0, [F

    iput-object p0, v3, Landroid/view/MotionEvent;->mDataSamples:[F

    goto :goto_2
.end method

.method public static obtainNano(JJJII[I[FIFFII)Landroid/view/MotionEvent;
    .locals 1
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "eventTimeNano"
    .parameter "action"
    .parameter "pointers"
    .parameter "inPointerIds"
    .parameter "inData"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 304
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 305
    .local v0, ev:Landroid/view/MotionEvent;
    iput p13, v0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 306
    iput p14, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 307
    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTime:J

    .line 308
    iput-wide p4, v0, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 309
    iput p6, v0, Landroid/view/MotionEvent;->mAction:I

    .line 310
    iput p10, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 311
    const/4 p0, 0x0

    aget p0, p9, p0

    .end local p0
    iput p0, v0, Landroid/view/MotionEvent;->mRawX:F

    .line 312
    const/4 p0, 0x1

    aget p0, p9, p0

    iput p0, v0, Landroid/view/MotionEvent;->mRawY:F

    .line 313
    iput p11, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 314
    iput p12, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 315
    iput p7, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 316
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 318
    iget-object p0, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 319
    .local p0, pointerIdentifiers:[I
    array-length p1, p0

    if-ge p1, p7, :cond_0

    .line 320
    new-array p0, p7, [I

    iput-object p0, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 322
    :cond_0
    const/4 p1, 0x0

    const/4 p4, 0x0

    invoke-static {p8, p1, p0, p4, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    .end local p4
    mul-int/lit8 p0, p7, 0x4

    .line 325
    .local p0, ND:I
    iget-object p1, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 326
    .local p1, dataSamples:[F
    array-length p4, p1

    if-ge p4, p0, :cond_1

    .line 327
    new-array p1, p0, [F

    iput-object p1, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 329
    :cond_1
    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-static {p9, p4, p1, p5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    iget-object p0, v0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .end local p0           #ND:I
    const/4 p1, 0x0

    aput-wide p2, p0, p1

    .line 348
    .end local p1           #dataSamples:[F
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 579
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v2

    .line 580
    .local v2, ev:Landroid/view/MotionEvent;
    iget v3, p0, Landroid/view/MotionEvent;->mDeviceId:I

    iput v3, v2, Landroid/view/MotionEvent;->mDeviceId:I

    .line 581
    iget v3, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v3, v2, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 582
    iget-wide v3, p0, Landroid/view/MotionEvent;->mDownTime:J

    iput-wide v3, v2, Landroid/view/MotionEvent;->mDownTime:J

    .line 583
    iget-wide v3, p0, Landroid/view/MotionEvent;->mEventTimeNano:J

    iput-wide v3, v2, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 584
    iget v3, p0, Landroid/view/MotionEvent;->mAction:I

    iput v3, v2, Landroid/view/MotionEvent;->mAction:I

    .line 585
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v3, v2, Landroid/view/MotionEvent;->mNumPointers:I

    .line 586
    iget v3, p0, Landroid/view/MotionEvent;->mRawX:F

    iput v3, v2, Landroid/view/MotionEvent;->mRawX:F

    .line 587
    iget v3, p0, Landroid/view/MotionEvent;->mRawY:F

    iput v3, v2, Landroid/view/MotionEvent;->mRawY:F

    .line 588
    iget v3, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v3, v2, Landroid/view/MotionEvent;->mMetaState:I

    .line 589
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v3, v2, Landroid/view/MotionEvent;->mXPrecision:F

    .line 590
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v3, v2, Landroid/view/MotionEvent;->mYPrecision:F

    .line 592
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/MotionEvent;->mNumSamples:I

    .line 593
    iget-object v3, v2, Landroid/view/MotionEvent;->mTimeSamples:[J

    iget-object v4, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    aget-wide v4, v4, v6

    aput-wide v4, v3, v6

    .line 595
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v1, v2, Landroid/view/MotionEvent;->mNumPointers:I

    .line 596
    .local v1, NP:I
    iget-object v3, v2, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    array-length v3, v3

    if-lt v3, v1, :cond_0

    .line 597
    iget-object v3, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    iget-object v4, v2, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-static {v3, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    :goto_0
    mul-int/lit8 v0, v1, 0x4

    .line 603
    .local v0, ND:I
    iget-object v3, v2, Landroid/view/MotionEvent;->mDataSamples:[F

    array-length v3, v3

    if-lt v3, v0, :cond_1

    .line 604
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget-object v4, v2, Landroid/view/MotionEvent;->mDataSamples:[F

    invoke-static {v3, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    .end local p0
    :goto_1
    return-object v2

    .line 599
    .end local v0           #ND:I
    .restart local p0
    :cond_0
    iget-object v3, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    iput-object v3, v2, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    goto :goto_0

    .line 606
    .restart local v0       #ND:I
    :cond_1
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [F

    check-cast p0, [F

    iput-object p0, v2, Landroid/view/MotionEvent;->mDataSamples:[F

    goto :goto_1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .parameter "in"

    .prologue
    .line 1254
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/view/MotionEvent;->mDownTime:J

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/view/MotionEvent;->mEventTimeNano:J

    .line 1256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mAction:I

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mRawX:F

    .line 1259
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mRawY:F

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1261
    .local v2, NP:I
    iput v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1263
    .local v3, NS:I
    iput v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1264
    mul-int v1, v2, v3

    .line 1265
    .local v1, NI:I
    if-lez v1, :cond_6

    .line 1266
    iget-object v6, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1267
    .local v6, ids:[I
    array-length v8, v6

    if-ge v8, v2, :cond_0

    .line 1268
    new-array v6, v2, [I

    iput-object v6, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1270
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 1271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    aput v8, v6, v5

    .line 1270
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1273
    :cond_1
    iget-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1274
    .local v4, history:[F
    mul-int/lit8 v0, v1, 0x4

    .line 1275
    .local v0, ND:I
    array-length v8, v4

    if-ge v8, v0, :cond_2

    .line 1276
    new-array v4, v0, [F

    iput-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1278
    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 1279
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v4, v5

    .line 1278
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1281
    :cond_3
    iget-object v7, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 1282
    .local v7, times:[J
    if-eqz v7, :cond_4

    array-length v8, v7

    if-ge v8, v3, :cond_5

    .line 1283
    :cond_4
    new-array v7, v3, [J

    iput-object v7, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 1285
    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_6

    .line 1286
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    aput-wide v8, v7, v5

    .line 1285
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1289
    .end local v0           #ND:I
    .end local v4           #history:[F
    .end local v5           #i:I
    .end local v6           #ids:[I
    .end local v7           #times:[J
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 1290
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 1291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mDeviceId:I

    .line 1292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 1293
    return-void
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 15
    .parameter "eventTime"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"

    .prologue
    .line 1095
    iget-object v8, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1096
    .local v8, data:[F
    iget-object v12, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 1098
    .local v12, times:[J
    iget v6, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1099
    .local v6, NP:I
    iget v7, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1100
    .local v7, NS:I
    mul-int v5, v6, v7

    .line 1101
    .local v5, NI:I
    mul-int/lit8 v2, v5, 0x4

    .line 1102
    .local v2, ND:I
    array-length v13, v8

    if-gt v13, v2, :cond_0

    .line 1103
    mul-int/lit8 v13, v6, 0x20

    add-int v3, v2, v13

    .line 1104
    .local v3, NEW_ND:I
    new-array v9, v3, [F

    .line 1105
    .local v9, newData:[F
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v8, v13, v9, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    move-object v8, v9

    iput-object v9, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1108
    .end local v3           #NEW_ND:I
    .end local v9           #newData:[F
    :cond_0
    array-length v13, v12

    if-gt v13, v7, :cond_1

    .line 1109
    add-int/lit8 v4, v7, 0x8

    .line 1110
    .local v4, NEW_NS:I
    new-array v10, v4, [J

    .line 1111
    .local v10, newHistoryTimes:[J
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v10, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1112
    move-object v12, v10

    iput-object v10, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 1115
    .end local v4           #NEW_NS:I
    .end local v10           #newHistoryTimes:[J
    :cond_1
    const/4 v13, 0x0

    aget-wide v13, v12, v13

    aput-wide v13, v12, v7

    .line 1116
    const/4 v13, 0x0

    aput-wide p1, v12, v13

    .line 1118
    mul-int/lit8 v11, v7, 0x4

    .line 1119
    .local v11, pos:I
    add-int/lit8 v13, v11, 0x0

    const/4 v14, 0x0

    aget v14, v8, v14

    aput v14, v8, v13

    .line 1120
    add-int/lit8 v13, v11, 0x1

    const/4 v14, 0x1

    aget v14, v8, v14

    aput v14, v8, v13

    .line 1121
    add-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    aget v14, v8, v14

    aput v14, v8, v13

    .line 1122
    add-int/lit8 v13, v11, 0x3

    const/4 v14, 0x3

    aget v14, v8, v14

    aput v14, v8, v13

    .line 1123
    const/4 v13, 0x0

    aput p3, v8, v13

    .line 1124
    const/4 v13, 0x1

    aput p4, v8, v13

    .line 1125
    const/4 v13, 0x2

    aput p5, v8, v13

    .line 1126
    const/4 v13, 0x3

    aput p6, v8, v13

    .line 1127
    add-int/lit8 v13, v7, 0x1

    iput v13, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1129
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mRawX:F

    .line 1130
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mRawY:F

    .line 1131
    iget v13, p0, Landroid/view/MotionEvent;->mMetaState:I

    or-int v13, v13, p7

    iput v13, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 1132
    return-void
.end method

.method public final addBatch(J[FI)V
    .locals 18
    .parameter "eventTime"
    .parameter "inData"
    .parameter "metaState"

    .prologue
    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    move-object v11, v0

    .line 1147
    .local v11, data:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/MotionEvent;->mTimeSamples:[J

    move-object v14, v0

    .line 1149
    .local v14, times:[J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNumPointers:I

    move v9, v0

    .line 1150
    .local v9, NP:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNumSamples:I

    move v10, v0

    .line 1151
    .local v10, NS:I
    mul-int v8, v9, v10

    .line 1152
    .local v8, NI:I
    mul-int/lit8 v5, v8, 0x4

    .line 1153
    .local v5, ND:I
    array-length v15, v11

    mul-int/lit8 v16, v9, 0x4

    add-int v16, v16, v5

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1154
    mul-int/lit8 v15, v9, 0x20

    add-int v6, v5, v15

    .line 1155
    .local v6, NEW_ND:I
    new-array v12, v6, [F

    .line 1156
    .local v12, newData:[F
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v11

    move v1, v15

    move-object v2, v12

    move/from16 v3, v16

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1157
    move-object v11, v12

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1159
    .end local v6           #NEW_ND:I
    .end local v12           #newData:[F
    :cond_0
    array-length v15, v14

    add-int/lit8 v16, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 1160
    add-int/lit8 v7, v10, 0x8

    .line 1161
    .local v7, NEW_NS:I
    new-array v13, v7, [J

    .line 1162
    .local v13, newHistoryTimes:[J
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object v2, v13

    move/from16 v3, v16

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    move-object v14, v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 1166
    .end local v7           #NEW_NS:I
    .end local v13           #newHistoryTimes:[J
    :cond_1
    const/4 v15, 0x0

    aget-wide v15, v14, v15

    aput-wide v15, v14, v10

    .line 1167
    const/4 v15, 0x0

    aput-wide p1, v14, v15

    .line 1169
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNumPointers:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x4

    move-object v0, v11

    move v1, v15

    move-object v2, v11

    move v3, v5

    move/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1170
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNumPointers:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x4

    move-object/from16 v0, p3

    move v1, v15

    move-object v2, v11

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1172
    add-int/lit8 v15, v10, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1174
    const/4 v15, 0x0

    aget v15, p3, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mRawX:F

    .line 1175
    const/4 v15, 0x1

    aget v15, p3, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mRawY:F

    .line 1176
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mMetaState:I

    move v15, v0

    or-int v15, v15, p4

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/MotionEvent;->mMetaState:I

    .line 1192
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x0

    return v0
.end method

.method public final findPointerIndex(I)I
    .locals 2
    .parameter "pointerId"

    .prologue
    .line 759
    iget v0, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 760
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 761
    add-int/lit8 v0, v0, -0x1

    .line 762
    iget-object v1, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 766
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .prologue
    .line 670
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Landroid/view/MotionEvent;->mDeviceId:I

    return v0
.end method

.method public final getDownTime()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Landroid/view/MotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    return v0
.end method

.method public final getEventTime()J
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 2

    .prologue
    .line 695
    iget-wide v0, p0, Landroid/view/MotionEvent;->mEventTimeNano:J

    return-wide v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 903
    iget-object v0, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final getHistoricalPressure(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 927
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 3
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 988
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 935
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 3
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 911
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 3
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 952
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 919
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 3
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 970
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    add-int/lit8 v1, p2, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, v2

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getHistorySize()I
    .locals 2

    .prologue
    .line 889
    iget v0, p0, Landroid/view/MotionEvent;->mNumSamples:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    return v0
.end method

.method public final getPointerCount()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Landroid/view/MotionEvent;->mNumPointers:I

    return v0
.end method

.method public final getPointerId(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 747
    iget-object v0, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getPressure()F
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getPressure(I)F
    .locals 2
    .parameter "pointerIndex"

    .prologue
    .line 807
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getRawX()F
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Landroid/view/MotionEvent;->mRawX:F

    return v0
.end method

.method public final getRawY()F
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Landroid/view/MotionEvent;->mRawY:F

    return v0
.end method

.method public final getSize()F
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getSize(I)F
    .locals 2
    .parameter "pointerIndex"

    .prologue
    .line 823
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getX()F
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getX(I)F
    .locals 2
    .parameter "pointerIndex"

    .prologue
    .line 779
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getXPrecision()F
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Landroid/view/MotionEvent;->mXPrecision:F

    return v0
.end method

.method public final getY()F
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getY(I)F
    .locals 2
    .parameter "pointerIndex"

    .prologue
    .line 792
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getYPrecision()F
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Landroid/view/MotionEvent;->mYPrecision:F

    return v0
.end method

.method public final offsetLocation(FF)V
    .locals 5
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 1057
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    mul-int/2addr v3, v4

    mul-int/lit8 v0, v3, 0x4

    .line 1058
    .local v0, N:I
    iget-object v2, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1059
    .local v2, pos:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1060
    add-int/lit8 v3, v1, 0x0

    aget v4, v2, v3

    add-float/2addr v4, p1

    aput v4, v2, v3

    .line 1061
    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    add-float/2addr v4, p2

    aput v4, v2, v3

    .line 1059
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 1063
    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 623
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 630
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 631
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 632
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 633
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 635
    :cond_1
    monitor-exit v0

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scale(F)V
    .locals 5
    .parameter "scale"

    .prologue
    .line 519
    iget v3, p0, Landroid/view/MotionEvent;->mRawX:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mRawX:F

    .line 520
    iget v3, p0, Landroid/view/MotionEvent;->mRawY:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mRawY:F

    .line 521
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 522
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 523
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 524
    .local v0, history:[F
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 525
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 526
    add-int/lit8 v3, v1, 0x0

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 527
    add-int/lit8 v3, v1, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 529
    add-int/lit8 v3, v1, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 525
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 531
    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1048
    iput p1, p0, Landroid/view/MotionEvent;->mAction:I

    .line 1049
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 1041
    iput p1, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 1042
    return-void
.end method

.method public final setLocation(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 1073
    iget-object v2, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float v0, p1, v2

    .line 1074
    .local v0, deltaX:F
    iget-object v2, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float v1, p2, v2

    .line 1075
    .local v1, deltaY:F
    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_1

    .line 1076
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1078
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1197
    .local v0, nIdx:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pressure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1220
    iget-wide v8, p0, Landroid/view/MotionEvent;->mDownTime:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1221
    iget-wide v8, p0, Landroid/view/MotionEvent;->mEventTimeNano:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1222
    iget v8, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget v8, p0, Landroid/view/MotionEvent;->mMetaState:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    iget v8, p0, Landroid/view/MotionEvent;->mRawX:F

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1225
    iget v8, p0, Landroid/view/MotionEvent;->mRawY:F

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1226
    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1227
    .local v2, NP:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1229
    .local v3, NS:I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    mul-int v1, v2, v3

    .line 1231
    .local v1, NI:I
    if-lez v1, :cond_2

    .line 1233
    iget-object v6, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1234
    .local v6, state:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 1235
    aget v8, v6, v5

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    mul-int/lit8 v0, v1, 0x4

    .line 1238
    .local v0, ND:I
    iget-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1239
    .local v4, history:[F
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 1240
    aget v8, v4, v5

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1239
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1242
    :cond_1
    iget-object v7, p0, Landroid/view/MotionEvent;->mTimeSamples:[J

    .line 1243
    .local v7, times:[J
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    .line 1244
    aget-wide v8, v7, v5

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1243
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1247
    .end local v0           #ND:I
    .end local v4           #history:[F
    .end local v5           #i:I
    .end local v6           #state:[I
    .end local v7           #times:[J
    :cond_2
    iget v8, p0, Landroid/view/MotionEvent;->mXPrecision:F

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1248
    iget v8, p0, Landroid/view/MotionEvent;->mYPrecision:F

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1249
    iget v8, p0, Landroid/view/MotionEvent;->mDeviceId:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget v8, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    return-void
.end method
