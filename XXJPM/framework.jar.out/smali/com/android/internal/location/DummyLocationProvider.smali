.class public Lcom/android/internal/location/DummyLocationProvider;
.super Landroid/location/LocationProvider;
.source "DummyLocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DummyLocationProvider"


# instance fields
.field mAccuracy:I

.field mHasMonetaryCost:Z

.field mName:Ljava/lang/String;

.field mPowerRequirement:I

.field mRequiresCell:Z

.field mRequiresNetwork:Z

.field mRequiresSatellite:Z

.field mSupportsAltitude:Z

.field mSupportsBearing:Z

.field mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mAccuracy:I

    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mAccuracy:I

    .line 82
    return-void
.end method

.method public setHasMonetaryCost(Z)V
    .locals 0
    .parameter "hasMonetaryCost"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mHasMonetaryCost:Z

    .line 62
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 0
    .parameter "powerRequirement"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mPowerRequirement:I

    .line 78
    return-void
.end method

.method public setRequiresCell(Z)V
    .locals 0
    .parameter "requiresCell"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresCell:Z

    .line 58
    return-void
.end method

.method public setRequiresNetwork(Z)V
    .locals 0
    .parameter "requiresNetwork"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresNetwork:Z

    .line 50
    return-void
.end method

.method public setRequiresSatellite(Z)V
    .locals 0
    .parameter "requiresSatellite"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mRequiresSatellite:Z

    .line 54
    return-void
.end method

.method public setSupportsAltitude(Z)V
    .locals 0
    .parameter "supportsAltitude"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsAltitude:Z

    .line 66
    return-void
.end method

.method public setSupportsBearing(Z)V
    .locals 0
    .parameter "supportsBearing"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsBearing:Z

    .line 74
    return-void
.end method

.method public setSupportsSpeed(Z)V
    .locals 0
    .parameter "supportsSpeed"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsSpeed:Z

    .line 70
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/location/DummyLocationProvider;->mSupportsSpeed:Z

    return v0
.end method
