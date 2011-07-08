.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATING_LOWPASS_ALPHA:F = 0.03846154f

.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x1388

.field private static final DEFAULT_LOWPASS_ALPHA:F = 0.5f

.field private static final DEFAULT_TIME_CONSTANT_MS:I = 0xc8

.field private static final MAX_DEVIATION_FROM_GRAVITY:I = 0x1

.field private static final MAX_TILT:I = 0x41

.field private static final PARTIAL_TILT:I = 0x2d

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_270:I = 0x2

.field private static final ROTATION_90:I = 0x1

.field private static final SAMPLING_PERIOD_MS:I = 0xc8

.field private static final TILTED_LOWPASS_ALPHA:F = 0.25f

.field private static final TILTED_TIME_CONSTANT_MS:I = 0x258

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field private final MAX_TRANSITION_TILT:[I

.field private final ROTATE_TO:[[I

.field private final SURFACE_ROTATIONS:[I

.field private final THRESHOLDS:[[[I

.field private mFilteredVector:[F

.field private mRotation:I

.field final synthetic this$0:Landroid/view/WindowOrientationListener;


# direct methods
.method constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 113
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 132
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_ROTATIONS:[I

    .line 142
    new-array v0, v4, [[[I

    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    .line 149
    new-array v0, v4, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    .line 162
    new-array v0, v4, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    .line 203
    new-array v0, v4, [F

    fill-array-data v0, :array_d

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    return-void

    .line 132
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 142
    :array_1
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xb4t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    .line 149
    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 162
    :array_c
    .array-data 0x4
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
    .end array-data

    .line 203
    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calculateNewRotation(II)V
    .locals 6
    .parameter "orientation"
    .parameter "tiltAngle"

    .prologue
    .line 211
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v3, v4, v5

    .line 212
    .local v3, thresholdRanges:[[I
    const/4 v2, -0x1

    .line 213
    .local v2, row:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 214
    aget-object v4, v3, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    if-lt p1, v4, :cond_2

    aget-object v4, v3, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_2

    .line 215
    move v2, v0

    .line 219
    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 233
    :cond_1
    :goto_1
    return-void

    .line 213
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_3
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v4, v4, v5

    aget v1, v4, v2

    .line 224
    .local v1, rotation:I
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    aget v4, v4, v1

    if-gt p2, v4, :cond_1

    .line 230
    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    .line 231
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->this$0:Landroid/view/WindowOrientationListener;

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_ROTATIONS:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/view/WindowOrientationListener;->onOrientationChanged(I)V

    goto :goto_1
.end method

.method private lowpassFilter(FFF)F
    .locals 2
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    .line 236
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .locals 2
    .parameter "z"
    .parameter "magnitude"

    .prologue
    .line 248
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 240
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method getCurrentRotation()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_ROTATIONS:[I

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 290
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 254
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v9, v11

    .line 255
    .local v6, x:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v9, v12

    .line 256
    .local v7, y:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v9, v13

    .line 257
    .local v8, z:F
    invoke-direct {p0, v6, v7, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v2

    .line 258
    .local v2, magnitude:F
    const v9, 0x411ce80a

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 259
    .local v1, deviation:F
    invoke-direct {p0, v8, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .line 261
    .local v5, tiltAngle:F
    const/high16 v0, 0x3f00

    .line 262
    .local v0, alpha:F
    const/high16 v9, 0x4282

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    .line 287
    :goto_0
    return-void

    .line 264
    :cond_0
    const/high16 v9, 0x3f80

    cmpl-float v9, v1, v9

    if-lez v9, :cond_3

    .line 265
    const v0, 0x3d1d89d9

    .line 270
    :cond_1
    :goto_1
    iget-object v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    iget-object v10, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    aget v10, v10, v11

    invoke-direct {p0, v6, v10, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v6

    .end local v6           #x:F
    aput v6, v9, v11

    .line 271
    .restart local v6       #x:F
    iget-object v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    iget-object v10, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    aget v10, v10, v12

    invoke-direct {p0, v7, v10, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v7

    .end local v7           #y:F
    aput v7, v9, v12

    .line 272
    .restart local v7       #y:F
    iget-object v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    iget-object v10, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFilteredVector:[F

    aget v10, v10, v13

    invoke-direct {p0, v8, v10, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v8

    .end local v8           #z:F
    aput v8, v9, v13

    .line 273
    .restart local v8       #z:F
    invoke-direct {p0, v6, v7, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v2

    .line 274
    invoke-direct {p0, v8, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .line 280
    neg-float v9, v6

    float-to-double v9, v9

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x42652ee1

    mul-float v4, v9, v10

    .line 281
    .local v4, orientationAngle:F
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 283
    .local v3, orientation:I
    if-gez v3, :cond_2

    .line 284
    add-int/lit16 v3, v3, 0x168

    .line 286
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {p0, v3, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->calculateNewRotation(II)V

    goto :goto_0

    .line 266
    .end local v3           #orientation:I
    .end local v4           #orientationAngle:F
    :cond_3
    const/high16 v9, 0x4234

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1

    .line 267
    const/high16 v0, 0x3e80

    goto :goto_1
.end method
