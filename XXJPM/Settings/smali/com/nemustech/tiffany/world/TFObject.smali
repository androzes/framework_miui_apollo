.class public Lcom/nemustech/tiffany/world/TFObject;
.super Ljava/lang/Object;
.source "TFObject.java"


# static fields
.field private static final PSEUDO_TICKCOUNT:F = 14.0f

.field private static final STOP_RESISTENCY_FACTOR:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "TFObject"

.field static final compareAxisZ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nemustech/tiffany/world/TFObject;",
            ">;"
        }
    .end annotation
.end field

.field private static gRotationResistency:F

.field private static gRotationVelocity:F


# instance fields
.field protected mActOnDrag:Z

.field protected mAngle:[F

.field protected mAngleRotateTarget:[F

.field mDepth:F

.field private mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

.field mEffectStatus:I

.field protected mFadeInitialTime:J

.field protected mFadeRemainingTime:J

.field protected mForceFromHead:F

.field protected mForceFromSide:F

.field mHeight:F

.field protected mIsIgnoringResistency:Z

.field private mIsLocked:Z

.field protected mIsMovingTargetExist:Z

.field protected mIsRotatingTargetExist:Z

.field protected mLocation:[F

.field mMatrix:[F

.field protected mMorphInitialTime:J

.field protected mMorphRemainingTime:J

.field protected mMovingAccelerator:[F

.field protected mMovingMiddlePoint:[F

.field protected mMovingVelocity:[F

.field protected mPosMovingTarget:[F

.field protected mRotateDirection:[I

.field mRotateYFirst:Z

.field protected mRotationAccelerator:[F

.field protected mRotationResistency:F

.field protected mRotationVelocity:[F

.field private mSensitivity:F

.field mShouldRotateFirst:Z

.field protected mTranslateResistency:F

.field protected mWaitInitialTime:J

.field protected mWaitRemainingTime:J

.field protected mWeight:F

.field mWidth:F

.field protected mWorld:Lcom/nemustech/tiffany/world/TFWorld;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1132
    new-instance v0, Lcom/nemustech/tiffany/world/TFObject$1;

    invoke-direct {v0}, Lcom/nemustech/tiffany/world/TFObject$1;-><init>()V

    sput-object v0, Lcom/nemustech/tiffany/world/TFObject;->compareAxisZ:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    .line 1148
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    .line 1149
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    .line 1150
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    .line 1151
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingMiddlePoint:[F

    .line 1154
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    .line 1155
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    .line 1156
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    .line 1157
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationAccelerator:[F

    .line 1159
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    .line 21
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsLocked:Z

    .line 22
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    .line 23
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mShouldRotateFirst:Z

    .line 24
    iput-boolean v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateYFirst:Z

    .line 25
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFObject;->setSensitivity(F)V

    .line 26
    invoke-virtual {p0, v3}, Lcom/nemustech/tiffany/world/TFObject;->setWeight(F)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFObject;->setActOnDrag(Z)V

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mMatrix:[F

    .line 29
    return-void
.end method

.method private calcRotationVelocity(II)F
    .locals 2
    .parameter "tickPassed"
    .parameter "axis"

    .prologue
    .line 340
    const/high16 v0, 0x4160

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, p2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected calcForce(FFFFI)V
    .locals 7
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "tickPassed"

    .prologue
    const/high16 v6, 0x40a0

    .line 669
    const/4 v3, 0x5

    .line 670
    .local v3, minTick:I
    const/high16 v2, 0x40a0

    .line 672
    .local v2, k:F
    sub-float v0, p3, p1

    .line 673
    .local v0, forceHorizontal:F
    sub-float v1, p4, p2

    .line 675
    .local v1, forceVertical:F
    const/4 v4, 0x5

    if-ge p5, v4, :cond_0

    const/4 p5, 0x5

    .line 677
    :cond_0
    mul-float v4, v6, v0

    iget v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mSensitivity:F

    mul-float/2addr v4, v5

    int-to-float v5, p5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mForceFromSide:F

    .line 678
    mul-float v4, v6, v1

    iget v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mSensitivity:F

    mul-float/2addr v4, v5

    int-to-float v5, p5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mForceFromHead:F

    .line 682
    return-void
.end method

.method protected checkEffectFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 327
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 329
    iput v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    if-ne v0, v2, :cond_0

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 334
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFObject;->onFinishEffect()V

    goto :goto_0
.end method

.method public freeze(I)V
    .locals 5
    .parameter "velocityMask"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 99
    iput-wide v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitInitialTime:J

    .line 100
    iput-wide v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 105
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aput v3, v1, v0

    .line 108
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    aput v3, v1, v0

    .line 109
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    add-int/lit8 v2, v0, 0x3

    aput v3, v1, v2

    .line 110
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aput v3, v1, v0

    .line 111
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    .line 114
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v3, v1, v0

    .line 117
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aput v3, v1, v0

    .line 118
    iput-boolean v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method

.method public getAngle(I)F
    .locals 1
    .parameter "axis"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v0, v0, p1

    return v0
.end method

.method public getAngle([F)V
    .locals 3
    .parameter "angle"

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    const/4 v1, 0x3

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 914
    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mHeight:F

    return v0
.end method

.method public getLocation(I)F
    .locals 1
    .parameter "axis"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v0, v0, p1

    return v0
.end method

.method public getLocation([F)V
    .locals 3
    .parameter "location"

    .prologue
    const/4 v2, 0x0

    .line 1013
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    const/4 v1, 0x3

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    return-void
.end method

.method public getLockStatus()Z
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsLocked:Z

    return v0
.end method

.method public getMovingVelocity(I)F
    .locals 1
    .parameter "axis"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v0, v0, p1

    return v0
.end method

.method public getNextAngle(II)F
    .locals 3
    .parameter "tickPassed"
    .parameter "axis"

    .prologue
    .line 930
    invoke-direct {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFObject;->calcRotationVelocity(II)F

    move-result v1

    .line 931
    .local v1, rotationVelocity:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v2, p2

    add-float/2addr v2, v1

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v0

    .line 932
    .local v0, angle:F
    return v0
.end method

.method public getRotatingVelocity(I)F
    .locals 1
    .parameter "axis"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v0, v0, p1

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mSensitivity:F

    return v0
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWidth:F

    return v0
.end method

.method isGoingToStop()Z
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1113
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v0, v2, v3

    .line 1116
    .local v0, sumMovingVelocity:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v1, v2, v3

    .line 1120
    .local v1, sumRotationVelocity:F
    const-string v2, "TFObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sumMovingVelocity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  sumRotationVelocity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const v2, 0x3a83126f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    const v2, 0x3c23d70a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    move v2, v5

    .line 1124
    :goto_0
    return v2

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method protected isInEffectAnimation()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mFadeRemainingTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mMorphRemainingTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locate(FFF)V
    .locals 5
    .parameter "locationX"
    .parameter "locationY"
    .parameter "locationZ"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, bRequest:Z
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v1, v1, v2

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v1, v1, v3

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v1, v1, v4

    cmpl-float v1, v1, p3

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aput p1, v1, v2

    .line 61
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aput p2, v1, v3

    .line 62
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aput p3, v1, v4

    .line 64
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 65
    :cond_2
    return-void
.end method

.method public locate(IFZ)V
    .locals 3
    .parameter "axis"
    .parameter "location"
    .parameter "bRelative"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, bRequest:Z
    if-eqz p3, :cond_2

    .line 80
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v2, v1, p1

    add-float/2addr v2, p2

    aput v2, v1, p1

    .line 81
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 88
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 89
    :cond_1
    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v1, v1, p1

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aput p2, v1, p1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsLocked:Z

    .line 1058
    return-void
.end method

.method public look(FF)V
    .locals 6
    .parameter "angleX"
    .parameter "angleY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, bRequest:Z
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v1

    .line 699
    .local v1, newAngleX:F
    invoke-static {p2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v2

    .line 701
    .local v2, newAngleY:F
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v3, v3, v4

    cmpl-float v3, v3, v1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v3, v3, v5

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 703
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aput v1, v3, v4

    .line 704
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aput v2, v3, v5

    .line 706
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 707
    :cond_2
    return-void
.end method

.method public move(FFFF)V
    .locals 8
    .parameter "locationX"
    .parameter "locationY"
    .parameter "locationZ"
    .parameter "speed"

    .prologue
    .line 163
    const/high16 v6, 0x3f00

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/nemustech/tiffany/world/TFObject;->move(FFFFFFF)V

    .line 164
    return-void
.end method

.method public move(FFFFFFF)V
    .locals 12
    .parameter "locationX"
    .parameter "locationY"
    .parameter "locationZ"
    .parameter "startingSpeed"
    .parameter "middleSpeed"
    .parameter "inflectionPoint"
    .parameter "endingSpeed"

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, maxDeviation:F
    const/4 v8, 0x3

    new-array v0, v8, [F

    .line 183
    .local v0, deviation:[F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 184
    .local v6, vs:F
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 185
    .local v5, vm:F
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 190
    .local v4, ve:F
    add-float v8, v5, v4

    mul-float v8, v8, p6

    add-float v9, v6, v5

    sub-float v10, v4, v6

    mul-float v10, v10, p6

    add-float/2addr v9, v10

    div-float v7, v8, v9

    .line 192
    .local v7, x:F
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    const/4 v9, 0x0

    aput p1, v8, v9

    .line 193
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    const/4 v9, 0x1

    aput p2, v8, v9

    .line 194
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    const/4 v9, 0x2

    aput p3, v8, v9

    .line 196
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v8, 0x3

    if-ge v1, v8, :cond_1

    .line 198
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v8, v8, v1

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v9, v9, v1

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v0, v1

    .line 199
    aget v8, v0, v1

    cmpl-float v8, v8, v2

    if-lez v8, :cond_0

    .line 201
    aget v2, v0, v1

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    const/high16 v8, 0x4000

    mul-float/2addr v8, v2

    sub-float v9, v6, v4

    mul-float/2addr v9, v7

    add-float/2addr v9, v5

    add-float/2addr v9, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x4160

    div-float v3, v8, v9

    .line 214
    .local v3, te:F
    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    .line 216
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v9, v0, v1

    mul-float/2addr v9, v6

    div-float/2addr v9, v2

    aput v9, v8, v1

    .line 217
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    sub-float v9, v5, v6

    mul-float v10, v3, v7

    div-float/2addr v9, v10

    aget v10, v0, v1

    div-float/2addr v10, v2

    mul-float/2addr v9, v10

    aput v9, v8, v1

    .line 218
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    add-int/lit8 v9, v1, 0x3

    sub-float v10, v4, v5

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v7

    mul-float/2addr v11, v3

    div-float/2addr v10, v11

    aget v11, v0, v1

    div-float/2addr v11, v2

    mul-float/2addr v10, v11

    aput v10, v8, v9

    .line 219
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingMiddlePoint:[F

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v9, v9, v1

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v10, v10, v1

    sub-float/2addr v9, v10

    mul-float v9, v9, p6

    iget-object v10, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v10, v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    .line 223
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    .line 224
    const/4 v8, 0x1

    iput v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 225
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 226
    return-void
.end method

.method public move(IFFZ)V
    .locals 5
    .parameter "axis"
    .parameter "newLocation"
    .parameter "speed"
    .parameter "bRelative"

    .prologue
    const/4 v3, 0x3

    .line 132
    new-array v1, v3, [F

    .line 134
    .local v1, targetLocation:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 136
    if-ne v0, p1, :cond_1

    .line 138
    if-eqz p4, :cond_0

    .line 139
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v2, v2, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 134
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    aput p2, v1, v0

    goto :goto_1

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v2, v2, v0

    aput v2, v1, v0

    goto :goto_1

    .line 149
    :cond_2
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-virtual {p0, v2, v3, v4, p3}, Lcom/nemustech/tiffany/world/TFObject;->move(FFFF)V

    .line 150
    return-void
.end method

.method protected onFinishEffect()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;->onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;->onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V

    goto :goto_0
.end method

.method protected onFinishMove()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/TFObject;->freeze(I)V

    .line 231
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFObject;->isInEffectAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 233
    :cond_0
    return-void
.end method

.method protected onFinishRotate()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 871
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFObject;->freeze(I)V

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    .line 874
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFObject;->isInEffectAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iput v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 876
    :cond_0
    return-void
.end method

.method protected prvRotate(Ljavax/microedition/khronos/opengles/GL10;IZ)V
    .locals 10
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/high16 v6, 0x43b4

    const/4 v5, 0x0

    .line 345
    iget-wide v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_12

    .line 347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    .line 349
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v5

    if-nez v1, :cond_0

    .line 347
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 354
    invoke-direct {p0, p2, v0}, Lcom/nemustech/tiffany/world/TFObject;->calcRotationVelocity(II)F

    move-result v1

    sput v1, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    .line 356
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    if-eqz v1, :cond_c

    .line 358
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 496
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    if-nez v1, :cond_2

    .line 499
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v1, v1, Lcom/nemustech/tiffany/world/TFWorld;->mTouchDown:Z

    if-eqz v1, :cond_d

    .line 500
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    sput v1, Lcom/nemustech/tiffany/world/TFObject;->gRotationResistency:F

    .line 504
    :goto_3
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_e

    .line 506
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationResistency:F

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 507
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    .line 516
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    .line 361
    :pswitch_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 363
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x4334

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 366
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sub-float/2addr v2, v6

    aput v2, v1, v0

    .line 369
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 372
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 378
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 379
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 382
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 386
    :cond_4
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x4334

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 390
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 391
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    add-float/2addr v2, v6

    aput v2, v1, v0

    .line 394
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 397
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 403
    :cond_5
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 404
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 407
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 413
    :pswitch_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 415
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 416
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_6

    .line 418
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 420
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 421
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    .line 429
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 432
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 425
    :cond_7
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    add-float/2addr v2, v6

    aput v2, v1, v0

    .line 426
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v1, v0

    add-float/2addr v2, v6

    aput v2, v1, v0

    goto :goto_5

    .line 436
    :cond_8
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 439
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    add-float/2addr v2, v6

    aput v2, v1, v0

    .line 443
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 446
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 452
    :pswitch_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 454
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 455
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sub-float/2addr v2, v6

    aput v2, v1, v0

    .line 458
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 461
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 465
    :cond_9
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 468
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_a

    .line 470
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v1, v6

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    .line 472
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aput v5, v2, v0

    aput v5, v1, v0

    .line 473
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    .line 481
    :cond_a
    :goto_6
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 484
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_2

    .line 477
    :cond_b
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sub-float/2addr v2, v6

    aput v2, v1, v0

    .line 478
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v1, v0

    sub-float/2addr v2, v6

    aput v2, v1, v0

    goto :goto_6

    .line 492
    :cond_c
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationVelocity:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    goto/16 :goto_2

    .line 502
    :cond_d
    iget v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationResistency:F

    sput v1, Lcom/nemustech/tiffany/world/TFObject;->gRotationResistency:F

    goto/16 :goto_3

    .line 509
    :cond_e
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v2, v1, v0

    sget v3, Lcom/nemustech/tiffany/world/TFObject;->gRotationResistency:F

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 512
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aput v5, v1, v0

    goto/16 :goto_4

    .line 519
    :cond_f
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    if-eqz v1, :cond_10

    .line 521
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v8

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v9

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v9

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    .line 525
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFObject;->onFinishRotate()V

    .line 535
    .end local v0           #i:I
    :cond_10
    :goto_7
    if-eqz p3, :cond_11

    .line 537
    iget-boolean v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateYFirst:Z

    if-eqz v1, :cond_13

    .line 539
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v9

    invoke-interface {p1, v1, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 540
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v8

    invoke-interface {p1, v1, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 549
    :goto_8
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-interface {p1, v1, v5, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 551
    :cond_11
    return-void

    .line 532
    :cond_12
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    goto :goto_7

    .line 544
    :cond_13
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v8

    invoke-interface {p1, v1, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 545
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v9

    invoke-interface {p1, v1, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto :goto_8

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected prvTranslate(Ljavax/microedition/khronos/opengles/GL10;IZ)V
    .locals 11
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 558
    iget-wide v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_f

    .line 560
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_c

    .line 562
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_1

    .line 560
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 568
    const/high16 v3, 0x4160

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v4, v4, v0

    mul-float v2, v3, v4

    .line 572
    .local v2, translateVelocity:F
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    if-eqz v3, :cond_a

    .line 575
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    add-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_5

    .line 577
    :cond_2
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingMiddlePoint:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingMiddlePoint:[F

    aget v4, v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 581
    :cond_4
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v4, v3, v0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    aget v5, v5, v0

    add-float/2addr v4, v5

    aput v4, v3, v0

    .line 600
    :goto_2
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_5

    .line 602
    const-string v3, "TFObject"

    const-string v4, "Alas!! You hit the road. Please report this to joshua@nemustech.com"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v4, v3, v0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    sub-float/2addr v4, v5

    aput v4, v3, v0

    .line 607
    :cond_5
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 609
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v4, v3, v0

    sub-float/2addr v4, v2

    aput v4, v3, v0

    .line 610
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    aput v4, v3, v0

    .line 612
    :cond_6
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 614
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v4, v3, v0

    add-float/2addr v4, v2

    aput v4, v3, v0

    .line 615
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v0

    aput v4, v3, v0

    .line 623
    :cond_7
    :goto_3
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    if-nez v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v3, v3, Lcom/nemustech/tiffany/world/TFWorld;->mTouchDown:Z

    if-eqz v3, :cond_b

    .line 627
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3f4ccccd

    mul-float v1, v3, v4

    .line 631
    .local v1, translateResistency:F
    :goto_4
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8

    .line 633
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v4, v3, v0

    sub-float/2addr v4, v1

    aput v4, v3, v0

    .line 634
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v7

    if-gez v3, :cond_8

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aput v7, v3, v0

    .line 636
    :cond_8
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    .line 638
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v4, v3, v0

    add-float/2addr v4, v1

    aput v4, v3, v0

    .line 639
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v3, v3, v0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aput v7, v3, v0

    goto/16 :goto_1

    .line 591
    .end local v1           #translateResistency:F
    :cond_9
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v4, v3, v0

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingAccelerator:[F

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v0

    goto/16 :goto_2

    .line 620
    :cond_a
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v4, v3, v0

    add-float/2addr v4, v2

    aput v4, v3, v0

    goto :goto_3

    .line 629
    :cond_b
    iget v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mTranslateResistency:F

    .restart local v1       #translateResistency:F
    goto :goto_4

    .line 644
    .end local v1           #translateResistency:F
    .end local v2           #translateVelocity:F
    :cond_c
    iget-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    if-eqz v3, :cond_d

    .line 646
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v8

    cmpl-float v3, v3, v4

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v9

    cmpl-float v3, v3, v4

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mPosMovingTarget:[F

    aget v4, v4, v10

    cmpl-float v3, v3, v4

    if-nez v3, :cond_d

    .line 650
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFObject;->onFinishMove()V

    .line 659
    .end local v0           #i:I
    :cond_d
    :goto_5
    if-eqz p3, :cond_e

    .line 661
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v5, v5, v10

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 664
    :cond_e
    return-void

    .line 656
    :cond_f
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v3}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    goto :goto_5
.end method

.method public rotate(FFF)V
    .locals 10
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "speed"

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 721
    new-array v9, v2, [F

    .line 722
    .local v9, targetDegree:[F
    new-array v7, v2, [F

    .line 723
    .local v7, distance:[F
    new-array v6, v2, [I

    .line 725
    .local v6, directions:[I
    aput p1, v7, v3

    .line 726
    aput p2, v7, v5

    .line 728
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v2, :cond_1

    .line 730
    aget v0, v7, v8

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v3

    :goto_1
    aput v0, v6, v8

    .line 731
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v0, v0, v8

    aget v1, v7, v8

    add-float/2addr v0, v1

    aput v0, v9, v8

    .line 728
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 730
    goto :goto_1

    .line 734
    :cond_1
    aget v1, v9, v3

    aget v2, v9, v5

    aget v4, v6, v3

    aget v5, v6, v5

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFII)V

    .line 735
    return-void
.end method

.method public rotate(FFFI)V
    .locals 6
    .parameter "angleX"
    .parameter "angleY"
    .parameter "speed"
    .parameter "direction"

    .prologue
    .line 810
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nemustech/tiffany/world/TFObject;->rotate(FFFII)V

    .line 811
    return-void
.end method

.method public rotate(FFFII)V
    .locals 4
    .parameter "angleX"
    .parameter "angleY"
    .parameter "speed"
    .parameter "directionX"
    .parameter "directionY"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 750
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aput p1, v1, v2

    .line 751
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aput p2, v1, v3

    .line 752
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    aput p4, v1, v2

    .line 753
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    aput p5, v1, v3

    .line 756
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 758
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 756
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :pswitch_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v2

    aput v2, v1, v0

    .line 762
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    .line 765
    :pswitch_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v2

    aput v2, v1, v0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    .line 770
    :pswitch_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v2

    aput v2, v1, v0

    .line 772
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    aput v2, v1, v0

    goto :goto_1

    .line 777
    :cond_2
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    .line 778
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    .line 779
    iput v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 780
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 781
    return-void

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public rotateHeadDegree(FFI)V
    .locals 4
    .parameter "angle"
    .parameter "speed"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 960
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aput p1, v0, v2

    .line 961
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    aput p3, v0, v2

    .line 963
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateDirection:[I

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 981
    :goto_0
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    .line 982
    iput-boolean v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsRotatingTargetExist:Z

    .line 983
    iput v3, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectStatus:I

    .line 984
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 985
    return-void

    .line 966
    :pswitch_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v2

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v1

    aput v1, v0, v2

    .line 967
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 970
    :pswitch_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v2

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v1

    aput v1, v0, v2

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 975
    :pswitch_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngleRotateTarget:[F

    aget v1, v1, v2

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v1

    aput v1, v0, v2

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    aput v1, v0, v2

    goto :goto_0

    .line 963
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setActOnDrag(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/nemustech/tiffany/world/TFObject;->mActOnDrag:Z

    .line 37
    return-void
.end method

.method public setEffectFinishListener(Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;)V
    .locals 0
    .parameter "effectFinishListener"

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFObject;->mEffectFinishListener:Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;

    .line 1110
    return-void
.end method

.method public setHeadDegree(F)V
    .locals 4
    .parameter "angle"

    .prologue
    const/4 v3, 0x2

    .line 942
    const/4 v0, 0x0

    .line 944
    .local v0, bRequest:Z
    invoke-static {p1}, Lcom/nemustech/tiffany/world/TFUtils;->filterAngle(F)F

    move-result v1

    .line 945
    .local v1, newAngle:F
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aget v2, v2, v3

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 946
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mAngle:[F

    aput v1, v2, v3

    .line 948
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 949
    :cond_1
    return-void
.end method

.method public setPriorAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 835
    if-ne p1, v0, :cond_0

    .line 836
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mShouldRotateFirst:Z

    .line 839
    :goto_0
    return-void

    .line 838
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mShouldRotateFirst:Z

    goto :goto_0
.end method

.method public setPriorAxis(I)V
    .locals 1
    .parameter "axis"

    .prologue
    const/4 v0, 0x1

    .line 821
    if-ne p1, v0, :cond_0

    .line 822
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateYFirst:Z

    .line 825
    :goto_0
    return-void

    .line 824
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotateYFirst:Z

    goto :goto_0
.end method

.method public setSensitivity(F)V
    .locals 0
    .parameter "sensitivity"

    .prologue
    .line 849
    iput p1, p0, Lcom/nemustech/tiffany/world/TFObject;->mSensitivity:F

    .line 850
    return-void
.end method

.method public setWait(J)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 866
    iput-wide p1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitInitialTime:J

    .line 867
    iput-wide p1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    .line 868
    return-void
.end method

.method public setWeight(F)V
    .locals 2
    .parameter "weight"

    .prologue
    .line 1096
    iput p1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWeight:F

    .line 1097
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWeight:F

    const v1, 0x3851b717

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mTranslateResistency:F

    .line 1098
    iget v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWeight:F

    const v1, 0x3a03126f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationResistency:F

    .line 1099
    return-void
.end method

.method public shoot(FFFZ)V
    .locals 6
    .parameter "forceX"
    .parameter "forceY"
    .parameter "forceZ"
    .parameter "bIgnoreResistency"

    .prologue
    const/4 v5, 0x0

    .line 245
    iget v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWeight:F

    const/high16 v2, 0x4448

    mul-float v0, v1, v2

    .line 248
    .local v0, k:F
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    aget v2, v1, v5

    div-float v3, p1, v0

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 249
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    div-float v4, p2, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 250
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mMovingVelocity:[F

    const/4 v2, 0x2

    aget v3, v1, v2

    div-float v4, p3, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 252
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    .line 253
    iput-boolean p4, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    .line 254
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 255
    return-void
.end method

.method public spin(FFFZ)V
    .locals 6
    .parameter "forceX"
    .parameter "forceY"
    .parameter "forceZ"
    .parameter "bIgnoreResistency"

    .prologue
    const/4 v5, 0x0

    .line 267
    iget v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWeight:F

    const/high16 v2, 0x42c8

    mul-float v0, v1, v2

    .line 270
    .local v0, k:F
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    aget v2, v1, v5

    div-float v3, p1, v0

    add-float/2addr v2, v3

    aput v2, v1, v5

    .line 271
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    div-float v4, p2, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 272
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mRotationVelocity:[F

    const/4 v2, 0x2

    aget v3, v1, v2

    div-float v4, p3, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 274
    iput-boolean v5, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsMovingTargetExist:Z

    .line 275
    iput-boolean p4, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsIgnoringResistency:Z

    .line 276
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 277
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mIsLocked:Z

    .line 1067
    return-void
.end method

.method protected updateObject(Ljavax/microedition/khronos/opengles/GL10;IZ)Z
    .locals 6
    .parameter "gl"
    .parameter "tickPassed"
    .parameter "bDoGLCalc"

    .prologue
    const-wide/16 v4, 0x0

    .line 881
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 884
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    iget-wide v2, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitInitialTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 885
    iput-wide v4, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitInitialTime:J

    .line 889
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFWorld;->requestRender()V

    .line 892
    :cond_0
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mShouldRotateFirst:Z

    if-eqz v0, :cond_2

    .line 894
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->prvRotate(Ljavax/microedition/khronos/opengles/GL10;IZ)V

    .line 895
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->prvTranslate(Ljavax/microedition/khronos/opengles/GL10;IZ)V

    .line 902
    :goto_1
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 887
    :cond_1
    iget-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nemustech/tiffany/world/TFObject;->mWaitRemainingTime:J

    goto :goto_0

    .line 899
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->prvTranslate(Ljavax/microedition/khronos/opengles/GL10;IZ)V

    .line 900
    invoke-virtual {p0, p1, p2, p3}, Lcom/nemustech/tiffany/world/TFObject;->prvRotate(Ljavax/microedition/khronos/opengles/GL10;IZ)V

    goto :goto_1

    .line 902
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public waitEffectFinish(I)V
    .locals 4
    .parameter "maxTime"

    .prologue
    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, startTick:J
    :goto_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFObject;->isInEffectAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    if-lez p1, :cond_1

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    if-le v2, p1, :cond_1

    .line 319
    :cond_0
    return-void

    .line 316
    :cond_1
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v2

    goto :goto_0
.end method
