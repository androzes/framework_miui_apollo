.class Lcom/android/server/InputDevice$MotionState;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotionState"
.end annotation


# static fields
.field static final HISTORY_SIZE:I = 0x5


# instance fields
.field changed:Z

.field currentMove:Landroid/view/MotionEvent;

.field everChanged:Z

.field mAddingPointerOffset:I

.field final mAveragedData:[I

.field final mDown:[Z

.field mDownTime:J

.field final mDroppedBadPoint:[Z

.field final mHistoryData:[I

.field mHistoryDataEnd:[I

.field mHistoryDataStart:[I

.field private mJumpyPointsDropped:I

.field final mLast2Next:[I

.field final mLastData:[I

.field mLastNumPointers:I

.field final mNext2Last:[I

.field final mNext2LastDistance:[J

.field final mNextData:[I

.field mNextNumPointers:I

.field mPointerIds:[I

.field final mReportData:[F

.field mSkipLastPointers:Z

.field xMoveScale:F

.field xPrecision:I

.field yMoveScale:F

.field yPrecision:I


# direct methods
.method constructor <init>(II)V
    .locals 7
    .parameter "mx"
    .parameter "my"

    .prologue
    const/16 v6, 0x14

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 88
    iput-boolean v4, p0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/server/InputDevice$MotionState;->everChanged:Z

    .line 90
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    .line 93
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    .line 98
    iput v4, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 99
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    .line 106
    iput v4, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 107
    const/16 v1, 0x18

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    .line 112
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mDroppedBadPoint:[Z

    .line 115
    iput v4, p0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    .line 120
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataStart:[I

    .line 121
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataEnd:[I

    .line 122
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    .line 124
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    .line 127
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mLast2Next:[I

    .line 128
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mNext2Last:[I

    .line 129
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mNext2LastDistance:[J

    .line 132
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mReportData:[F

    .line 135
    iput v4, p0, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    .line 136
    new-array v1, v3, [Z

    iput-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mDown:[Z

    .line 189
    iput p1, p0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    .line 190
    iput p2, p0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    .line 191
    if-eqz p1, :cond_0

    int-to-float v1, p1

    div-float v1, v5, v1

    :goto_0
    iput v1, p0, Lcom/android/server/InputDevice$MotionState;->xMoveScale:F

    .line 192
    if-eqz p2, :cond_1

    int-to-float v1, p2

    div-float v1, v5, v1

    :goto_1
    iput v1, p0, Lcom/android/server/InputDevice$MotionState;->yMoveScale:F

    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    aput v0, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_0
    move v1, v5

    .line 191
    goto :goto_0

    :cond_1
    move v1, v5

    .line 192
    goto :goto_1

    .line 196
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method private assignPointer(IZ)Z
    .locals 31
    .parameter "nextIndex"
    .parameter "allowOverlap"

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move/from16 v16, v0

    .line 541
    .local v16, lastNumPointers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNext2Last:[I

    move-object/from16 v18, v0

    .line 542
    .local v18, next2Last:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNext2LastDistance:[J

    move-object/from16 v19, v0

    .line 543
    .local v19, next2LastDistance:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLast2Next:[I

    move-object v14, v0

    .line 544
    .local v14, last2Next:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object v15, v0

    .line 545
    .local v15, lastData:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object/from16 v20, v0

    .line 546
    .local v20, nextData:[I
    mul-int/lit8 v7, p1, 0x4

    .line 553
    .local v7, id:I
    sget-boolean v25, Lcom/android/server/KeyInputQueue;->mUseFingerID:Z

    if-eqz v25, :cond_6

    .line 554
    add-int/lit8 v25, v7, 0x3

    aget v25, v20, v25

    shr-int/lit8 v9, v25, 0x8

    .line 556
    .local v9, idNext:I
    const/4 v4, -0x1

    .line 557
    .local v4, bestIndex:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 558
    mul-int/lit8 v11, v10, 0x4

    .line 559
    .local v11, jd:I
    add-int/lit8 v25, v11, 0x3

    aget v25, v15, v25

    shr-int/lit8 v8, v25, 0x8

    .line 560
    .local v8, idLast:I
    if-ne v8, v9, :cond_1

    .line 562
    move v4, v10

    .line 568
    .end local v8           #idLast:I
    .end local v11           #jd:I
    :cond_0
    aput v4, v18, p1

    .line 570
    if-gez v4, :cond_2

    .line 573
    const/16 v25, 0x0

    .line 640
    .end local v9           #idNext:I
    :goto_1
    return v25

    .line 557
    .restart local v8       #idLast:I
    .restart local v9       #idNext:I
    .restart local v11       #jd:I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 576
    .end local v8           #idLast:I
    .end local v11           #jd:I
    :cond_2
    aget v25, v14, v4

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 577
    aput p1, v14, v4

    .line 596
    :cond_3
    const/16 v25, 0x0

    goto :goto_1

    .line 581
    :cond_4
    const-string v25, "InputDevice"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'s Old index "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object/from16 v27, v0

    aget v27, v27, v4

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " has multiple best new pointers!\n\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 586
    move/from16 v17, v16

    .line 589
    .local v17, nMax:I
    :goto_2
    const/4 v12, 0x0

    .local v12, k:I
    :goto_3
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 591
    mul-int/lit8 v13, v12, 0x4

    .line 592
    .local v13, kd:I
    const-string v25, "InputDevice"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "id["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v13, 0x3

    aget v27, v15, v27

    shr-int/lit8 v27, v27, 0x8

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "=>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v13, 0x3

    aget v27, v20, v27

    shr-int/lit8 v27, v27, 0x8

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 588
    .end local v12           #k:I
    .end local v13           #kd:I
    .end local v17           #nMax:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v17, v0

    .restart local v17       #nMax:I
    goto :goto_2

    .line 599
    .end local v4           #bestIndex:I
    .end local v9           #idNext:I
    .end local v10           #j:I
    .end local v17           #nMax:I
    :cond_6
    add-int/lit8 v25, v7, 0x0

    aget v21, v20, v25

    .line 600
    .local v21, x1:I
    add-int/lit8 v25, v7, 0x1

    aget v23, v20, v25

    .line 602
    .local v23, y1:I
    const-wide/16 v2, -0x1

    .line 603
    .local v2, bestDistance:J
    const/4 v4, -0x1

    .line 604
    .restart local v4       #bestIndex:I
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_4
    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 608
    if-nez p2, :cond_8

    aget v25, v14, v10

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 604
    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 611
    :cond_8
    mul-int/lit8 v11, v10, 0x4

    .line 612
    .restart local v11       #jd:I
    add-int/lit8 v25, v11, 0x0

    aget v25, v15, v25

    sub-int v22, v25, v21

    .line 613
    .local v22, xd:I
    add-int/lit8 v25, v11, 0x1

    aget v25, v15, v25

    sub-int v24, v25, v23

    .line 614
    .local v24, yd:I
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v27, v0

    mul-long v25, v25, v27

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v29, v0

    mul-long v27, v27, v29

    add-long v5, v25, v27

    .line 615
    .local v5, distance:J
    const-wide/16 v25, -0x1

    cmp-long v25, v2, v25

    if-eqz v25, :cond_9

    cmp-long v25, v5, v2

    if-gez v25, :cond_7

    .line 616
    :cond_9
    move-wide v2, v5

    .line 617
    move v4, v10

    goto :goto_5

    .line 624
    .end local v5           #distance:J
    .end local v11           #jd:I
    .end local v22           #xd:I
    .end local v24           #yd:I
    :cond_a
    aput v4, v18, p1

    .line 625
    aput-wide v2, v19, p1

    .line 627
    if-gez v4, :cond_b

    .line 628
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 631
    :cond_b
    aget v25, v14, v4

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 632
    aput p1, v14, v4

    .line 633
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 639
    :cond_c
    const/16 v25, -0x2

    aput v25, v14, v4

    .line 640
    const/16 v25, 0x1

    goto/16 :goto_1
.end method

.method private updatePointerIdentifiers()I
    .locals 27

    .prologue
    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object v10, v0

    .line 645
    .local v10, lastData:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v15, v0

    .line 646
    .local v15, nextData:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v17, v0

    .line 647
    .local v17, nextNumPointers:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v12, v0

    .line 649
    .local v12, lastNumPointers:I
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const/16 v23, 0x1

    move v0, v12

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 650
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x4

    move-object v0, v15

    move/from16 v1, v23

    move-object v2, v10

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    const/16 v23, -0x1

    .line 801
    :goto_0
    return v23

    .line 656
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLast2Next:[I

    move-object v9, v0

    .line 657
    .local v9, last2Next:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v12, :cond_1

    .line 658
    const/16 v23, -0x1

    aput v23, v9, v7

    .line 657
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNext2Last:[I

    move-object v13, v0

    .line 667
    .local v13, next2Last:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNext2LastDistance:[J

    move-object v14, v0

    .line 668
    .local v14, next2LastDistance:[J
    const/4 v6, 0x0

    .line 669
    .local v6, conflicts:Z
    const/4 v7, 0x0

    :goto_2
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 670
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputDevice$MotionState;->assignPointer(IZ)Z

    move-result v23

    or-int v6, v6, v23

    .line 669
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 676
    :cond_2
    if-eqz v6, :cond_8

    .line 679
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_8

    .line 680
    aget v23, v9, v7

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 679
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 693
    :cond_3
    const/16 v18, 0x0

    .line 694
    .local v18, numFound:I
    const-wide/16 v20, 0x0

    .line 695
    .local v20, worstDistance:J
    const/16 v22, -0x1

    .line 696
    .local v22, worstJ:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_5
    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 697
    aget v23, v13, v8

    move/from16 v0, v23

    move v1, v7

    if-eq v0, v1, :cond_5

    .line 696
    :cond_4
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 700
    :cond_5
    add-int/lit8 v18, v18, 0x1

    .line 701
    aget-wide v23, v14, v8

    cmp-long v23, v20, v23

    if-gez v23, :cond_4

    .line 702
    aget-wide v20, v14, v8

    .line 703
    move/from16 v22, v8

    goto :goto_6

    .line 707
    :cond_6
    if-ltz v22, :cond_7

    .line 711
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputDevice$MotionState;->assignPointer(IZ)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 714
    const/16 v23, -0x1

    aput v23, v13, v22

    .line 717
    :cond_7
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    goto :goto_4

    .line 721
    .end local v8           #j:I
    .end local v18           #numFound:I
    .end local v20           #worstDistance:J
    .end local v22           #worstJ:I
    :cond_8
    const/16 v19, -0x1

    .line 723
    .local v19, retIndex:I
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 727
    const/16 v16, 0x0

    .line 728
    .local v16, nextId:I
    const/4 v7, 0x0

    .line 729
    :goto_7
    if-ge v7, v12, :cond_9

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object/from16 v23, v0

    aget v23, v23, v7

    move/from16 v0, v23

    move/from16 v1, v16

    if-le v0, v1, :cond_b

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v7, 0x1

    sub-int v26, v12, v7

    move-object/from16 v0, v23

    move v1, v7

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 736
    mul-int/lit8 v23, v7, 0x4

    add-int/lit8 v24, v7, 0x1

    mul-int/lit8 v24, v24, 0x4

    sub-int v25, v12, v7

    mul-int/lit8 v25, v25, 0x4

    move-object v0, v10

    move/from16 v1, v23

    move-object v2, v10

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 752
    move/from16 v19, v7

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object/from16 v23, v0

    aput v16, v23, v7

    .line 758
    const/4 v5, 0x0

    .line 759
    .local v5, bAssigned:Z
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_8
    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 760
    aget v23, v13, v8

    if-gez v23, :cond_c

    if-nez v5, :cond_c

    .line 763
    aput v7, v13, v8

    .line 764
    const/4 v5, 0x1

    .line 759
    :cond_a
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 744
    .end local v5           #bAssigned:Z
    .end local v8           #j:I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 745
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 767
    .restart local v5       #bAssigned:Z
    .restart local v8       #j:I
    :cond_c
    aget v23, v13, v8

    move/from16 v0, v23

    move v1, v7

    if-lt v0, v1, :cond_a

    .line 768
    aget v23, v13, v8

    add-int/lit8 v23, v23, 0x1

    aput v23, v13, v8

    goto :goto_9

    .line 775
    .end local v5           #bAssigned:Z
    .end local v8           #j:I
    .end local v16           #nextId:I
    :cond_d
    const/4 v7, 0x0

    :goto_a
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 776
    aget v11, v13, v7

    .line 777
    .local v11, lastIndex:I
    if-ltz v11, :cond_e

    .line 781
    mul-int/lit8 v23, v7, 0x4

    mul-int/lit8 v24, v11, 0x4

    const/16 v25, 0x4

    move-object v0, v15

    move/from16 v1, v23

    move-object v2, v10

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 787
    .end local v11           #lastIndex:I
    :cond_f
    move v0, v12

    move/from16 v1, v17

    if-le v0, v1, :cond_10

    .line 791
    const/4 v7, 0x0

    :goto_b
    if-ge v7, v12, :cond_10

    .line 792
    aget v23, v9, v7

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 795
    move/from16 v19, v7

    :cond_10
    move/from16 v23, v19

    .line 801
    goto/16 :goto_0

    .line 791
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_b
.end method


# virtual methods
.method dropBadPoint(Lcom/android/server/InputDevice;)V
    .locals 13
    .parameter "dev"

    .prologue
    const/4 v12, 0x1

    .line 205
    iget-object v10, p1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    if-nez v10, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v10, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    iget v11, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    if-ne v10, v11, :cond_0

    .line 219
    iget-object v10, p1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    iget v10, v10, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    iget-object v11, p1, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    iget v11, v11, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    sub-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x7

    div-int/lit8 v8, v10, 0x10

    .line 223
    .local v8, maxDy:I
    iget v10, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    sub-int v4, v10, v12

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_0

    .line 224
    mul-int/lit8 v5, v4, 0x4

    .line 226
    .local v5, ioff:I
    iget-object v10, p0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    add-int/lit8 v11, v5, 0x1

    aget v9, v10, v11

    .line 228
    .local v9, y:I
    const/4 v2, 0x0

    .line 229
    .local v2, dropped:Z
    iget-object v10, p0, Lcom/android/server/InputDevice$MotionState;->mDroppedBadPoint:[Z

    aget-boolean v10, v10, v4

    if-nez v10, :cond_7

    iget v10, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    if-lez v10, :cond_7

    .line 230
    const/4 v2, 0x1

    .line 231
    const/4 v0, -0x1

    .line 232
    .local v0, closestDy:I
    const/4 v1, -0x1

    .line 235
    .local v1, closestY:I
    iget v10, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    sub-int v6, v10, v12

    .local v6, j:I
    :goto_2
    if-ltz v6, :cond_3

    .line 236
    mul-int/lit8 v7, v6, 0x4

    .line 238
    .local v7, joff:I
    iget-object v10, p0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    add-int/lit8 v11, v7, 0x1

    aget v10, v10, v11

    sub-int v3, v9, v10

    .line 240
    .local v3, dy:I
    if-gez v3, :cond_2

    neg-int v3, v3

    .line 243
    :cond_2
    if-ge v3, v8, :cond_4

    .line 244
    const/4 v2, 0x0

    .line 251
    .end local v3           #dy:I
    .end local v7           #joff:I
    :cond_3
    if-eqz v2, :cond_7

    .line 252
    const/4 v2, 0x1

    .line 253
    const-string v10, "InputDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dropping bad point #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": newY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " closestDy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " maxDy="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v10, p0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    add-int/lit8 v11, v5, 0x1

    aput v1, v10, v11

    goto/16 :goto_0

    .line 246
    .restart local v3       #dy:I
    .restart local v7       #joff:I
    :cond_4
    if-ltz v0, :cond_5

    if-ge v3, v0, :cond_6

    .line 247
    :cond_5
    move v0, v3

    .line 248
    iget-object v10, p0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    add-int/lit8 v11, v7, 0x1

    aget v1, v10, v11

    .line 235
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 260
    .end local v0           #closestDy:I
    .end local v1           #closestY:I
    .end local v3           #dy:I
    .end local v6           #j:I
    .end local v7           #joff:I
    :cond_7
    iget-object v10, p0, Lcom/android/server/InputDevice$MotionState;->mDroppedBadPoint:[Z

    aput-boolean v2, v10, v4

    .line 223
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1
.end method

.method dropJumpyPoint(Lcom/android/server/InputDevice;)V
    .locals 36
    .parameter "dev"

    .prologue
    .line 266
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object/from16 v33, v0

    if-nez v33, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0xd4

    move/from16 v19, v0

    .line 271
    .local v19, jumpyEpsilon:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v25, v0

    .line 272
    .local v25, nextNumPointers:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move/from16 v21, v0

    .line 273
    .local v21, lastNumPointers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object/from16 v24, v0

    .line 274
    .local v24, nextData:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object/from16 v20, v0

    .line 276
    .local v20, lastData:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move/from16 v33, v0

    move/from16 v0, v25

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 290
    const/16 v33, 0x1

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    const/16 v33, 0x2

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    .line 292
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    goto :goto_0

    .line 294
    :cond_2
    const/16 v33, 0x2

    move/from16 v0, v21

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    const/16 v33, 0x1

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 297
    const/16 v33, 0x0

    const/16 v34, 0x0

    mul-int/lit8 v35, v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v33

    move-object/from16 v2, v24

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    goto/16 :goto_0

    .line 311
    :cond_3
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    goto/16 :goto_0

    .line 323
    :cond_4
    const/16 v33, 0x2

    move/from16 v0, v25

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    .line 327
    const/4 v6, -0x1

    .line 328
    .local v6, badPointerIndex:I
    const/4 v7, 0x0

    .line 329
    .local v7, badPointerReplaceXWith:I
    const/4 v8, 0x0

    .line 330
    .local v8, badPointerReplaceYWith:I
    const/high16 v5, -0x8000

    .line 331
    .local v5, badPointerDistance:I
    const/16 v33, 0x1

    sub-int v15, v25, v33

    .local v15, i:I
    :goto_1
    if-ltz v15, :cond_f

    .line 332
    const/4 v13, 0x0

    .line 333
    .local v13, dropx:Z
    const/4 v14, 0x0

    .line 336
    .local v14, dropy:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    .line 337
    mul-int/lit8 v16, v15, 0x4

    .line 338
    .local v16, ioff:I
    add-int/lit8 v33, v16, 0x0

    aget v27, v24, v33

    .line 339
    .local v27, x:I
    add-int/lit8 v33, v16, 0x1

    aget v30, v24, v33

    .line 346
    .local v30, y:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    if-nez v13, :cond_8

    if-nez v14, :cond_8

    .line 347
    move/from16 v0, v17

    move v1, v15

    if-ne v0, v1, :cond_5

    .line 346
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 351
    :cond_5
    mul-int/lit8 v18, v17, 0x4

    .line 352
    .local v18, joff:I
    add-int/lit8 v33, v18, 0x0

    aget v28, v24, v33

    .line 353
    .local v28, xOther:I
    add-int/lit8 v33, v18, 0x1

    aget v31, v24, v33

    .line 355
    .local v31, yOther:I
    sub-int v33, v27, v28

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    const/16 v33, 0x1

    move/from16 v13, v33

    .line 356
    :goto_4
    sub-int v33, v30, v31

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    const/16 v33, 0x1

    move/from16 v14, v33

    :goto_5
    goto :goto_3

    .line 355
    :cond_6
    const/16 v33, 0x0

    move/from16 v13, v33

    goto :goto_4

    .line 356
    :cond_7
    const/16 v33, 0x0

    move/from16 v14, v33

    goto :goto_5

    .line 359
    .end local v18           #joff:I
    .end local v28           #xOther:I
    .end local v31           #yOther:I
    :cond_8
    if-eqz v13, :cond_c

    .line 360
    const/16 v33, 0x0

    aget v29, v20, v33

    .line 361
    .local v29, xreplace:I
    const/16 v33, 0x1

    aget v32, v20, v33

    .line 362
    .local v32, yreplace:I
    sub-int v33, v32, v30

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 363
    .local v12, distance:I
    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 364
    mul-int/lit8 v18, v17, 0x4

    .line 365
    .restart local v18       #joff:I
    add-int/lit8 v33, v18, 0x1

    aget v23, v20, v33

    .line 366
    .local v23, lasty:I
    sub-int v33, v23, v30

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 367
    .local v11, currDist:I
    if-ge v11, v12, :cond_9

    .line 368
    add-int/lit8 v33, v18, 0x0

    aget v29, v20, v33

    .line 369
    move/from16 v32, v23

    .line 370
    move v12, v11

    .line 363
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 374
    .end local v11           #currDist:I
    .end local v18           #joff:I
    .end local v23           #lasty:I
    :cond_a
    sub-int v33, v29, v27

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 375
    .local v9, badXDelta:I
    if-le v9, v5, :cond_b

    .line 376
    move v5, v9

    .line 377
    move v6, v15

    .line 378
    move/from16 v7, v29

    .line 379
    move/from16 v8, v32

    .line 331
    .end local v9           #badXDelta:I
    .end local v12           #distance:I
    .end local v16           #ioff:I
    .end local v17           #j:I
    .end local v27           #x:I
    .end local v29           #xreplace:I
    .end local v30           #y:I
    .end local v32           #yreplace:I
    :cond_b
    :goto_7
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_1

    .line 381
    .restart local v16       #ioff:I
    .restart local v17       #j:I
    .restart local v27       #x:I
    .restart local v30       #y:I
    :cond_c
    if-eqz v14, :cond_b

    .line 382
    const/16 v33, 0x0

    aget v29, v20, v33

    .line 383
    .restart local v29       #xreplace:I
    const/16 v33, 0x1

    aget v32, v20, v33

    .line 384
    .restart local v32       #yreplace:I
    sub-int v33, v29, v27

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 385
    .restart local v12       #distance:I
    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 386
    mul-int/lit8 v18, v17, 0x4

    .line 387
    .restart local v18       #joff:I
    add-int/lit8 v33, v18, 0x0

    aget v22, v20, v33

    .line 388
    .local v22, lastx:I
    sub-int v33, v22, v27

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 389
    .restart local v11       #currDist:I
    if-ge v11, v12, :cond_d

    .line 390
    move/from16 v29, v22

    .line 391
    add-int/lit8 v33, v18, 0x1

    aget v32, v20, v33

    .line 392
    move v12, v11

    .line 385
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 396
    .end local v11           #currDist:I
    .end local v18           #joff:I
    .end local v22           #lastx:I
    :cond_e
    sub-int v33, v32, v30

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 397
    .local v10, badYDelta:I
    if-le v10, v5, :cond_b

    .line 398
    move v5, v10

    .line 399
    move v6, v15

    .line 400
    move/from16 v7, v29

    .line 401
    move/from16 v8, v32

    goto :goto_7

    .line 406
    .end local v10           #badYDelta:I
    .end local v12           #distance:I
    .end local v13           #dropx:Z
    .end local v14           #dropy:Z
    .end local v16           #ioff:I
    .end local v17           #j:I
    .end local v27           #x:I
    .end local v29           #xreplace:I
    .end local v30           #y:I
    .end local v32           #yreplace:I
    :cond_f
    if-ltz v6, :cond_10

    .line 413
    mul-int/lit8 v26, v6, 0x4

    .line 414
    .local v26, offset:I
    add-int/lit8 v33, v26, 0x0

    aput v7, v24, v33

    .line 415
    add-int/lit8 v33, v26, 0x1

    aput v8, v24, v33

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    goto/16 :goto_0

    .line 418
    .end local v26           #offset:I
    :cond_10
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mJumpyPointsDropped:I

    goto/16 :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const-string v4, ""

    .line 157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "xPrecision="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 158
    const-string v0, " yPrecision="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 159
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "xMoveScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->xMoveScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 160
    const-string v0, " yMoveScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->yMoveScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 161
    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "currentMove="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 165
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "changed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    const-string v0, " mDownTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 168
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPointerIds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/InputDevice$MotionState;->dumpIntArray(Ljava/io/PrintWriter;[I)V

    .line 169
    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    iget-boolean v0, p0, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    if-eqz v0, :cond_4

    .line 171
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSkipLastPointers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 172
    const-string v0, " mLastNumPointers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 173
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/InputDevice$MotionState;->dumpIntArray(Ljava/io/PrintWriter;[I)V

    .line 174
    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    :cond_4
    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextNumPointers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/InputDevice$MotionState;->dumpIntArray(Ljava/io/PrintWriter;[I)V

    .line 179
    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDroppedBadPoint="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->mDroppedBadPoint:[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/InputDevice$MotionState;->dumpBooleanArray(Ljava/io/PrintWriter;[Z)V

    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAddingPointerOffset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->mDown:[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/InputDevice$MotionState;->dumpBooleanArray(Ljava/io/PrintWriter;[Z)V

    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method dumpBooleanArray(Ljava/io/PrintWriter;[Z)V
    .locals 2
    .parameter "pw"
    .parameter "array"

    .prologue
    .line 148
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 150
    if-lez v0, :cond_0

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    :cond_0
    aget-boolean v1, p2, v0

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const-string v1, "false"

    goto :goto_1

    .line 153
    :cond_2
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method dumpIntArray(Ljava/io/PrintWriter;[I)V
    .locals 2
    .parameter "pw"
    .parameter "array"

    .prologue
    .line 139
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 141
    if-lez v0, :cond_0

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    :cond_0
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1063
    iput v2, p0, Lcom/android/server/InputDevice$MotionState;->mAddingPointerOffset:I

    iput v2, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 1064
    iget-object v0, p0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1065
    return-void
.end method

.method generateAbsMotion(Lcom/android/server/InputDevice;JJLandroid/view/Display;II)Landroid/view/MotionEvent;
    .locals 42
    .parameter "device"
    .parameter "curTime"
    .parameter "curTimeNano"
    .parameter "display"
    .parameter "orientation"
    .parameter "metaState"

    .prologue
    .line 821
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/InputDevice;->classes:I

    move v5, v0

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v28, v5

    .line 824
    .local v28, isMouse:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 825
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->mSkipLastPointers:Z

    .line 826
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 831
    :cond_0
    if-nez v28, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    if-gtz v5, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v5, v0

    if-gtz v5, :cond_2

    .line 833
    const/4 v5, 0x0

    .line 1055
    :goto_1
    return-object v5

    .line 821
    .end local v28           #isMouse:Z
    :cond_1
    const/4 v5, 0x0

    move/from16 v28, v5

    goto :goto_0

    .line 836
    .restart local v28       #isMouse:Z
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move/from16 v30, v0

    .line 837
    .local v30, lastNumPointers:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move/from16 v32, v0

    .line 838
    .local v32, nextNumPointers:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    const/4 v6, 0x5

    if-le v5, v6, :cond_3

    .line 839
    const-string v5, "InputDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of pointers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeded maximum of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    .line 849
    :cond_3
    if-eqz v28, :cond_4

    const/4 v5, 0x0

    move/from16 v38, v5

    .line 852
    .local v38, upOrDownPointer:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mReportData:[F

    move-object v14, v0

    .line 856
    .local v14, reportData:[F
    if-nez v28, :cond_5

    sget-boolean v5, Lcom/android/server/KeyInputQueue;->BAD_TOUCH_HACK:Z

    if-eqz v5, :cond_5

    .line 858
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/InputDevice$MotionState;->generateAveragedData(III)[I

    move-result-object v34

    .line 871
    .local v34, rawData:[I
    :goto_3
    if-eqz v28, :cond_7

    const/4 v5, 0x1

    move v12, v5

    .line 881
    .local v12, numPointers:I
    :goto_4
    const/16 v27, 0x0

    .local v27, i:I
    :goto_5
    move/from16 v0, v27

    move v1, v12

    if-ge v0, v1, :cond_8

    .line 882
    mul-int/lit8 v33, v27, 0x4

    .line 883
    .local v33, pos:I
    add-int/lit8 v5, v33, 0x0

    add-int/lit8 v6, v33, 0x0

    aget v6, v34, v6

    int-to-float v6, v6

    aput v6, v14, v5

    .line 884
    add-int/lit8 v5, v33, 0x1

    add-int/lit8 v6, v33, 0x1

    aget v6, v34, v6

    int-to-float v6, v6

    aput v6, v14, v5

    .line 885
    add-int/lit8 v5, v33, 0x2

    add-int/lit8 v6, v33, 0x2

    aget v6, v34, v6

    int-to-float v6, v6

    aput v6, v14, v5

    .line 887
    add-int/lit8 v5, v33, 0x3

    add-int/lit8 v6, v33, 0x3

    aget v6, v34, v6

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    aput v6, v14, v5

    .line 881
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 849
    .end local v12           #numPointers:I
    .end local v14           #reportData:[F
    .end local v27           #i:I
    .end local v33           #pos:I
    .end local v34           #rawData:[I
    .end local v38           #upOrDownPointer:I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputDevice$MotionState;->updatePointerIdentifiers()I

    move-result v5

    move/from16 v38, v5

    goto :goto_2

    .line 865
    .restart local v14       #reportData:[F
    .restart local v38       #upOrDownPointer:I
    :cond_5
    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v5, v0

    move-object/from16 v34, v5

    .restart local v34       #rawData:[I
    :goto_6
    goto :goto_3

    .end local v34           #rawData:[I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object v5, v0

    move-object/from16 v34, v5

    goto :goto_6

    .line 871
    .restart local v34       #rawData:[I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v5, v0

    move v12, v5

    goto :goto_4

    .line 891
    .restart local v12       #numPointers:I
    .restart local v27       #i:I
    :cond_8
    const/16 v19, 0x0

    .line 894
    .local v19, edgeFlags:I
    if-nez v28, :cond_13

    .line 896
    move/from16 v0, v32

    move/from16 v1, v30

    if-eq v0, v1, :cond_12

    .line 897
    move/from16 v0, v32

    move/from16 v1, v30

    if-le v0, v1, :cond_10

    .line 898
    if-nez v30, :cond_f

    .line 899
    const/4 v11, 0x0

    .line 900
    .local v11, action:I
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    .line 905
    :goto_7
    const-string v5, "InputDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object v7, v0

    aget v7, v7, v38

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v38, 0x4

    add-int/lit8 v7, v7, 0x3

    aget v7, v34, v7

    shr-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Dn("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_8
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 942
    :goto_9
    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int v25, v5, v6

    .line 943
    .local v25, dispW:I
    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    sub-int v24, v5, v6

    .line 944
    .local v24, dispH:I
    move/from16 v39, v25

    .line 945
    .local v39, w:I
    move/from16 v26, v24

    .line 946
    .local v26, h:I
    const/4 v5, 0x1

    move/from16 v0, p7

    move v1, v5

    if-eq v0, v1, :cond_9

    const/4 v5, 0x3

    move/from16 v0, p7

    move v1, v5

    if-ne v0, v1, :cond_a

    .line 948
    :cond_9
    move/from16 v37, v39

    .line 949
    .local v37, tmp:I
    move/from16 v39, v26

    .line 950
    move/from16 v26, v37

    .line 953
    .end local v37           #tmp:I
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object/from16 v22, v0

    .line 954
    .local v22, absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object/from16 v23, v0

    .line 955
    .local v23, absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object/from16 v20, v0

    .line 956
    .local v20, absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object/from16 v21, v0

    .line 958
    .local v21, absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->tInfo:Lcom/android/server/InputDevice$TransformInfo;

    move-object/from16 v35, v0

    .line 960
    .local v35, tInfo:Lcom/android/server/InputDevice$TransformInfo;
    const/16 v27, 0x0

    :goto_a
    move/from16 v0, v27

    move v1, v12

    if-ge v0, v1, :cond_19

    .line 961
    mul-int/lit8 v29, v27, 0x4

    .line 963
    .local v29, j:I
    add-int/lit8 v5, v29, 0x0

    aget v40, v14, v5

    .line 964
    .local v40, x:F
    add-int/lit8 v5, v29, 0x1

    aget v41, v14, v5

    .line 967
    .local v41, y:F
    if-eqz v22, :cond_b

    .line 969
    add-int/lit8 v5, v29, 0x0

    if-eqz v35, :cond_17

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->x1:F

    move v6, v0

    mul-float v6, v6, v40

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->y1:F

    move v7, v0

    mul-float v7, v7, v41

    add-float/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->z1:F

    move v7, v0

    add-float/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->s:F

    move v7, v0

    div-float/2addr v6, v7

    :goto_b
    aput v6, v14, v5

    .line 974
    :cond_b
    if-eqz v23, :cond_c

    .line 976
    add-int/lit8 v5, v29, 0x1

    if-eqz v35, :cond_18

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->x2:F

    move v6, v0

    mul-float v6, v6, v40

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->y2:F

    move v7, v0

    mul-float v7, v7, v41

    add-float/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->z2:F

    move v7, v0

    add-float/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/InputDevice$TransformInfo;->s:F

    move v7, v0

    div-float/2addr v6, v7

    :goto_c
    aput v6, v14, v5

    .line 981
    :cond_c
    if-eqz v20, :cond_d

    .line 982
    add-int/lit8 v5, v29, 0x2

    add-int/lit8 v6, v29, 0x2

    aget v6, v14, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    move v7, v0

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v14, v5

    .line 986
    :cond_d
    if-eqz v21, :cond_e

    .line 987
    add-int/lit8 v5, v29, 0x3

    add-int/lit8 v6, v29, 0x3

    aget v6, v14, v6

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    move v7, v0

    int-to-float v7, v7

    sub-float/2addr v6, v7

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v14, v5

    .line 992
    :cond_e
    packed-switch p7, :pswitch_data_0

    .line 960
    :goto_d
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 902
    .end local v11           #action:I
    .end local v20           #absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v21           #absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v22           #absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v23           #absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v24           #dispH:I
    .end local v25           #dispW:I
    .end local v26           #h:I
    .end local v29           #j:I
    .end local v35           #tInfo:Lcom/android/server/InputDevice$TransformInfo;
    .end local v39           #w:I
    .end local v40           #x:F
    .end local v41           #y:F
    :cond_f
    shl-int/lit8 v5, v38, 0x8

    or-int/lit8 v11, v5, 0x5

    .restart local v11       #action:I
    goto/16 :goto_7

    .line 908
    .end local v11           #action:I
    :cond_10
    const/4 v5, 0x1

    if-ne v12, v5, :cond_11

    .line 909
    const/4 v11, 0x1

    .line 915
    .restart local v11       #action:I
    :goto_e
    const-string v5, "InputDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object v7, v0

    aget v7, v7, v38

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v38, 0x4

    add-int/lit8 v7, v7, 0x3

    aget v7, v34, v7

    shr-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Up("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 911
    .end local v11           #action:I
    :cond_11
    shl-int/lit8 v5, v38, 0x8

    or-int/lit8 v11, v5, 0x6

    .restart local v11       #action:I
    goto :goto_e

    .line 920
    .end local v11           #action:I
    :cond_12
    const/4 v11, 0x2

    .restart local v11       #action:I
    goto/16 :goto_9

    .line 923
    .end local v11           #action:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v6, v0

    if-eq v5, v6, :cond_16

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 925
    const/4 v11, 0x0

    .line 926
    .restart local v11       #action:I
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    .line 932
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 933
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    goto/16 :goto_9

    .line 927
    .end local v11           #action:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 928
    const/4 v11, 0x1

    .restart local v11       #action:I
    goto :goto_f

    .line 930
    .end local v11           #action:I
    :cond_15
    const/4 v11, 0x2

    .restart local v11       #action:I
    goto :goto_f

    .line 935
    .end local v11           #action:I
    :cond_16
    const/4 v11, 0x2

    .restart local v11       #action:I
    goto/16 :goto_9

    .line 969
    .restart local v20       #absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    .restart local v21       #absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    .restart local v22       #absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    .restart local v23       #absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    .restart local v24       #dispH:I
    .restart local v25       #dispW:I
    .restart local v26       #h:I
    .restart local v29       #j:I
    .restart local v35       #tInfo:Lcom/android/server/InputDevice$TransformInfo;
    .restart local v39       #w:I
    .restart local v40       #x:F
    .restart local v41       #y:F
    :cond_17
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    move v6, v0

    int-to-float v6, v6

    sub-float v6, v40, v6

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v39

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    goto/16 :goto_b

    .line 976
    :cond_18
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    move v6, v0

    int-to-float v6, v6

    sub-float v6, v41, v6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    goto/16 :goto_c

    .line 994
    :pswitch_0
    add-int/lit8 v5, v29, 0x0

    aget v36, v14, v5

    .line 995
    .local v36, temp:F
    add-int/lit8 v5, v29, 0x0

    add-int/lit8 v6, v29, 0x1

    aget v6, v14, v6

    aput v6, v14, v5

    .line 996
    add-int/lit8 v5, v29, 0x1

    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    sub-float v6, v6, v36

    aput v6, v14, v5

    goto/16 :goto_d

    .line 1000
    .end local v36           #temp:F
    :pswitch_1
    add-int/lit8 v5, v29, 0x0

    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    add-int/lit8 v7, v29, 0x0

    aget v7, v14, v7

    sub-float/2addr v6, v7

    aput v6, v14, v5

    .line 1001
    add-int/lit8 v5, v29, 0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    add-int/lit8 v7, v29, 0x1

    aget v7, v14, v7

    sub-float/2addr v6, v7

    aput v6, v14, v5

    goto/16 :goto_d

    .line 1005
    :pswitch_2
    add-int/lit8 v5, v29, 0x0

    aget v36, v14, v5

    .line 1006
    .restart local v36       #temp:F
    add-int/lit8 v5, v29, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move v6, v0

    add-int/lit8 v7, v29, 0x1

    aget v7, v14, v7

    sub-float/2addr v6, v7

    aput v6, v14, v5

    .line 1007
    add-int/lit8 v5, v29, 0x1

    aput v36, v14, v5

    goto/16 :goto_d

    .line 1015
    .end local v29           #j:I
    .end local v36           #temp:F
    .end local v40           #x:F
    .end local v41           #y:F
    :cond_19
    if-nez v11, :cond_1b

    .line 1016
    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1c

    .line 1017
    or-int/lit8 v19, v19, 0x4

    .line 1021
    :cond_1a
    :goto_10
    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1d

    .line 1022
    or-int/lit8 v19, v19, 0x1

    .line 1028
    :cond_1b
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object v5, v0

    if-eqz v5, :cond_1e

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    move-object v3, v14

    move/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->addBatch(J[FI)V

    .line 1038
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1018
    :cond_1c
    const/4 v5, 0x0

    aget v5, v14, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1a

    .line 1019
    or-int/lit8 v19, v19, 0x8

    goto :goto_10

    .line 1023
    :cond_1d
    const/4 v5, 0x1

    aget v5, v14, v5

    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1b

    .line 1024
    or-int/lit8 v19, v19, 0x2

    goto :goto_11

    .line 1041
    :cond_1e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    move v7, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    move v7, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/InputDevice;->id:I

    move/from16 v18, v0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move/from16 v15, p8

    invoke-static/range {v5 .. v19}, Landroid/view/MotionEvent;->obtainNano(JJJII[I[FIFFII)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1045
    .local v31, me:Landroid/view/MotionEvent;
    const/4 v5, 0x2

    if-ne v11, v5, :cond_1f

    .line 1046
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 1050
    :cond_1f
    if-nez v28, :cond_20

    move/from16 v0, v32

    move/from16 v1, v30

    if-ge v0, v1, :cond_20

    .line 1052
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/InputDevice$MotionState;->removeOldPointer(I)V

    :cond_20
    move-object/from16 v5, v31

    .line 1055
    goto/16 :goto_1

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method generateAveragedData(III)[I
    .locals 30
    .parameter "upOrDownPointer"
    .parameter "lastNumPointers"
    .parameter "nextNumPointers"

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v15, v0

    .line 430
    .local v15, numPointers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    move-object/from16 v21, v0

    .line 434
    .local v21, rawData:[I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v15, :cond_9

    .line 435
    mul-int/lit8 v11, v10, 0x4

    .line 439
    .local v11, ioff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object/from16 v27, v0

    aget v18, v27, v10

    .line 440
    .local v18, p:I
    mul-int/lit8 v27, v18, 0x4

    mul-int/lit8 v19, v27, 0x5

    .line 441
    .local v19, poff:I
    move v0, v10

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    .line 442
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataStart:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v10

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataEnd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v10

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move v1, v11

    move-object/from16 v2, v27

    move/from16 v3, v19

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move v1, v11

    move-object/from16 v2, v27

    move v3, v11

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 462
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataEnd:[I

    move-object/from16 v27, v0

    aget v8, v27, v10

    .line 463
    .local v8, end:I
    mul-int/lit8 v27, v8, 0x4

    add-int v9, v19, v27

    .line 464
    .local v9, eoff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x0

    aget v16, v27, v28

    .line 465
    .local v16, oldX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x1

    aget v17, v27, v28

    .line 466
    .local v17, oldY:I
    add-int/lit8 v27, v11, 0x0

    aget v12, v21, v27

    .line 467
    .local v12, newX:I
    add-int/lit8 v27, v11, 0x1

    aget v13, v21, v27

    .line 468
    .local v13, newY:I
    sub-int v6, v12, v16

    .line 469
    .local v6, dx:I
    sub-int v7, v13, v17

    .line 470
    .local v7, dy:I
    mul-int v27, v6, v6

    mul-int v28, v7, v7

    add-int v5, v27, v28

    .line 472
    .local v5, delta:I
    const/16 v27, 0x15f9

    move v0, v5

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataStart:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v10

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataEnd:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v10

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move v1, v11

    move-object/from16 v2, v27

    move/from16 v3, v19

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move v1, v11

    move-object/from16 v2, v27

    move v3, v11

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 483
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 484
    const/16 v27, 0x5

    move v0, v8

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    .line 485
    add-int/lit8 v8, v8, -0x5

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataEnd:[I

    move-object/from16 v27, v0

    aput v8, v27, v10

    .line 488
    mul-int/lit8 v27, v8, 0x4

    add-int v14, v19, v27

    .line 489
    .local v14, noff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v14, 0x0

    aput v12, v27, v28

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v14, 0x1

    aput v13, v27, v28

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v14, 0x2

    add-int/lit8 v29, v11, 0x2

    aget v29, v21, v29

    aput v29, v27, v28

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataStart:[I

    move-object/from16 v27, v0

    aget v23, v27, v10

    .line 494
    .local v23, start:I
    move v0, v8

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 495
    add-int/lit8 v23, v23, 0x1

    .line 496
    const/16 v27, 0x5

    move/from16 v0, v23

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 497
    add-int/lit8 v23, v23, -0x5

    .line 499
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataStart:[I

    move-object/from16 v27, v0

    aput v23, v27, v10

    .line 505
    .end local v5           #delta:I
    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v8           #end:I
    .end local v9           #eoff:I
    .end local v12           #newX:I
    .end local v13           #newY:I
    .end local v14           #noff:I
    .end local v16           #oldX:I
    .end local v17           #oldY:I
    .end local v23           #start:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataStart:[I

    move-object/from16 v27, v0

    aget v23, v27, v10

    .line 506
    .restart local v23       #start:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryDataEnd:[I

    move-object/from16 v27, v0

    aget v8, v27, v10

    .line 507
    .restart local v8       #end:I
    const/16 v25, 0x0

    .local v25, x:I
    const/16 v26, 0x0

    .line 508
    .local v26, y:I
    const/16 v24, 0x0

    .line 509
    .local v24, totalPressure:I
    :cond_5
    :goto_2
    move/from16 v0, v23

    move v1, v8

    if-eq v0, v1, :cond_7

    .line 510
    mul-int/lit8 v27, v23, 0x4

    add-int v22, v19, v27

    .line 511
    .local v22, soff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v22, 0x2

    aget v20, v27, v28

    .line 512
    .local v20, pressure:I
    if-gtz v20, :cond_6

    const/16 v20, 0x1

    .line 513
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v22, 0x0

    aget v27, v27, v28

    mul-int v27, v27, v20

    add-int v25, v25, v27

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v22, 0x1

    aget v27, v27, v28

    mul-int v27, v27, v20

    add-int v26, v26, v27

    .line 515
    add-int v24, v24, v20

    .line 516
    add-int/lit8 v23, v23, 0x1

    .line 517
    const/16 v27, 0x5

    move/from16 v0, v23

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    const/16 v23, 0x0

    goto :goto_2

    .line 519
    .end local v20           #pressure:I
    .end local v22           #soff:I
    :cond_7
    mul-int/lit8 v27, v8, 0x4

    add-int v9, v19, v27

    .line 520
    .restart local v9       #eoff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x2

    aget v20, v27, v28

    .line 521
    .restart local v20       #pressure:I
    if-gtz v20, :cond_8

    const/16 v20, 0x1

    .line 522
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x0

    aget v27, v27, v28

    mul-int v27, v27, v20

    add-int v25, v25, v27

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mHistoryData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x1

    aget v27, v27, v28

    mul-int v27, v27, v20

    add-int v26, v26, v27

    .line 524
    add-int v24, v24, v20

    .line 525
    div-int v25, v25, v24

    .line 526
    div-int v26, v26, v24

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v11, 0x0

    aput v25, v27, v28

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v11, 0x1

    aput v26, v27, v28

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v11, 0x2

    add-int/lit8 v29, v11, 0x2

    aget v29, v21, v29

    aput v29, v27, v28

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    add-int/lit8 v28, v11, 0x3

    add-int/lit8 v29, v11, 0x3

    aget v29, v21, v29

    aput v29, v27, v28

    goto/16 :goto_1

    .line 536
    .end local v8           #end:I
    .end local v9           #eoff:I
    .end local v11           #ioff:I
    .end local v18           #p:I
    .end local v19           #poff:I
    .end local v20           #pressure:I
    .end local v23           #start:I
    .end local v24           #totalPressure:I
    .end local v25           #x:I
    .end local v26           #y:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mAveragedData:[I

    move-object/from16 v27, v0

    return-object v27
.end method

.method generateRelMotion(Lcom/android/server/InputDevice;JJII)Landroid/view/MotionEvent;
    .locals 22
    .parameter "device"
    .parameter "curTime"
    .parameter "curTimeNano"
    .parameter "orientation"
    .parameter "metaState"

    .prologue
    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mReportData:[F

    move-object v14, v0

    .line 1073
    .local v14, scaled:[F
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-float v6, v6

    aput v6, v14, v5

    .line 1074
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    aput v6, v14, v5

    .line 1075
    const/4 v5, 0x2

    const/high16 v6, 0x3f80

    aput v6, v14, v5

    .line 1076
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v14, v5

    .line 1077
    const/16 v19, 0x0

    .line 1080
    .local v19, edgeFlags:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v6, v0

    if-eq v5, v6, :cond_2

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextData:[I

    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    aput v9, v5, v6

    .line 1083
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    move v5, v0

    if-nez v5, :cond_0

    .line 1084
    const/4 v11, 0x0

    .line 1085
    .local v11, action:I
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    .line 1091
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 1092
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 1097
    :goto_1
    const/4 v5, 0x0

    aget v6, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->xMoveScale:F

    move v7, v0

    mul-float/2addr v6, v7

    aput v6, v14, v5

    .line 1098
    const/4 v5, 0x1

    aget v6, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->yMoveScale:F

    move v7, v0

    mul-float/2addr v6, v7

    aput v6, v14, v5

    .line 1099
    packed-switch p6, :pswitch_data_0

    .line 1119
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p2

    move-object v3, v14

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->addBatch(J[FI)V

    .line 1128
    const/4 v5, 0x0

    .line 1137
    :goto_3
    return-object v5

    .line 1086
    .end local v11           #action:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    move v5, v0

    if-nez v5, :cond_1

    .line 1087
    const/4 v11, 0x1

    .restart local v11       #action:I
    goto :goto_0

    .line 1089
    .end local v11           #action:I
    :cond_1
    const/4 v11, 0x2

    .restart local v11       #action:I
    goto :goto_0

    .line 1094
    .end local v11           #action:I
    :cond_2
    const/4 v11, 0x2

    .restart local v11       #action:I
    goto :goto_1

    .line 1101
    :pswitch_0
    const/4 v5, 0x0

    aget v21, v14, v5

    .line 1102
    .local v21, temp:F
    const/4 v5, 0x0

    const/4 v6, 0x1

    aget v6, v14, v6

    aput v6, v14, v5

    .line 1103
    const/4 v5, 0x1

    move/from16 v0, v21

    neg-float v0, v0

    move v6, v0

    aput v6, v14, v5

    goto :goto_2

    .line 1107
    .end local v21           #temp:F
    :pswitch_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v14, v6

    neg-float v6, v6

    aput v6, v14, v5

    .line 1108
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v14, v6

    neg-float v6, v6

    aput v6, v14, v5

    goto :goto_2

    .line 1112
    :pswitch_2
    const/4 v5, 0x0

    aget v21, v14, v5

    .line 1113
    .restart local v21       #temp:F
    const/4 v5, 0x0

    const/4 v6, 0x1

    aget v6, v14, v6

    neg-float v6, v6

    aput v6, v14, v5

    .line 1114
    const/4 v5, 0x1

    aput v21, v14, v5

    goto :goto_2

    .line 1131
    .end local v21           #temp:F
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/InputDevice$MotionState;->mDownTime:J

    move-wide v5, v0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    move v7, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    move v7, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/InputDevice;->id:I

    move/from16 v18, v0

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move/from16 v15, p7

    invoke-static/range {v5 .. v19}, Landroid/view/MotionEvent;->obtainNano(JJJII[I[FIFFII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 1134
    .local v20, me:Landroid/view/MotionEvent;
    const/4 v5, 0x2

    if-ne v11, v5, :cond_4

    .line 1135
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    :cond_4
    move-object/from16 v5, v20

    .line 1137
    goto :goto_3

    .line 1099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method hasMore()Z
    .locals 2

    .prologue
    .line 1059
    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    iget v1, p0, Lcom/android/server/InputDevice$MotionState;->mNextNumPointers:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeOldPointer(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 805
    iget v0, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 806
    .local v0, lastNumPointers:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/server/InputDevice$MotionState;->mPointerIds:[I

    sub-int v4, v0, p1

    sub-int/2addr v4, v6

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v1, p0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/android/server/InputDevice$MotionState;->mLastData:[I

    mul-int/lit8 v4, p1, 0x4

    sub-int v5, v0, p1

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget v1, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/android/server/InputDevice$MotionState;->mLastNumPointers:I

    .line 814
    :cond_0
    return-void
.end method
