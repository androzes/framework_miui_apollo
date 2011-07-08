.class public Landroid/location/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_COARSE:I = 0x2

.field public static final ACCURACY_FINE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Criteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_REQUIREMENT:I = 0x0

.field public static final POWER_HIGH:I = 0x3

.field public static final POWER_LOW:I = 0x1

.field public static final POWER_MEDIUM:I = 0x2


# instance fields
.field private mAccuracy:I

.field private mAltitudeRequired:Z

.field private mBearingRequired:Z

.field private mCostAllowed:Z

.field private mPowerRequirement:I

.field private mSpeedRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Landroid/location/Criteria$1;

    invoke-direct {v0}, Landroid/location/Criteria$1;-><init>()V

    sput-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Landroid/location/Criteria;->mAccuracy:I

    .line 61
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 63
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 64
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 65
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 66
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 1
    .parameter "criteria"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Landroid/location/Criteria;->mAccuracy:I

    .line 61
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 63
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 64
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 65
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 66
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 80
    iget v0, p1, Landroid/location/Criteria;->mAccuracy:I

    iput v0, p0, Landroid/location/Criteria;->mAccuracy:I

    .line 81
    iget v0, p1, Landroid/location/Criteria;->mPowerRequirement:I

    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 83
    iget-boolean v0, p1, Landroid/location/Criteria;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 84
    iget-boolean v0, p1, Landroid/location/Criteria;->mBearingRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 85
    iget-boolean v0, p1, Landroid/location/Criteria;->mSpeedRequired:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 86
    iget-boolean v0, p1, Landroid/location/Criteria;->mCostAllowed:Z

    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 87
    return-void
.end method

.method static synthetic access$002(Landroid/location/Criteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mAccuracy:I

    return p1
.end method

.method static synthetic access$102(Landroid/location/Criteria;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return p1
.end method

.method static synthetic access$202(Landroid/location/Criteria;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return p1
.end method

.method static synthetic access$302(Landroid/location/Criteria;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return p1
.end method

.method static synthetic access$402(Landroid/location/Criteria;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return p1
.end method

.method static synthetic access$502(Landroid/location/Criteria;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/location/Criteria;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    return v0
.end method

.method public isAltitudeRequired()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    return v0
.end method

.method public isBearingRequired()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    return v0
.end method

.method public isCostAllowed()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    return v0
.end method

.method public isSpeedRequired()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 3
    .parameter "accuracy"

    .prologue
    .line 99
    if-gez p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput p1, p0, Landroid/location/Criteria;->mAccuracy:I

    .line 103
    return-void
.end method

.method public setAltitudeRequired(Z)V
    .locals 0
    .parameter "altitudeRequired"

    .prologue
    .line 167
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    .line 168
    return-void
.end method

.method public setBearingRequired(Z)V
    .locals 0
    .parameter "bearingRequired"

    .prologue
    .line 199
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    .line 200
    return-void
.end method

.method public setCostAllowed(Z)V
    .locals 0
    .parameter "costAllowed"

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    .line 153
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 120
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    .line 124
    return-void
.end method

.method public setSpeedRequired(Z)V
    .locals 0
    .parameter "speedRequired"

    .prologue
    .line 183
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    .line 184
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    iget v0, p0, Landroid/location/Criteria;->mAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return-void

    :cond_0
    move v0, v1

    .line 237
    goto :goto_0

    :cond_1
    move v0, v1

    .line 238
    goto :goto_1

    :cond_2
    move v0, v1

    .line 239
    goto :goto_2

    :cond_3
    move v0, v1

    .line 240
    goto :goto_3
.end method
