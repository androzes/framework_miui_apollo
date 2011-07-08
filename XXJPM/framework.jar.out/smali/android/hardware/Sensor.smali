.class public Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_TEMPERATURE:I = 0x7


# instance fields
.field private mHandle:I

.field private mLegacyType:I

.field private mMaxRange:F

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method getHandle()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method getLegacyType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/hardware/Sensor;->mLegacyType:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setLegacyType(I)V
    .locals 0
    .parameter "legacyType"

    .prologue
    .line 154
    iput p1, p0, Landroid/hardware/Sensor;->mLegacyType:I

    .line 155
    return-void
.end method

.method setRange(FF)V
    .locals 0
    .parameter "max"
    .parameter "res"

    .prologue
    .line 149
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 150
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 151
    return-void
.end method
