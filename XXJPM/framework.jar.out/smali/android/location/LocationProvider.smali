.class public abstract Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationProvider"

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains an illegal character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract getAccuracy()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPowerRequirement()I
.end method

.method public abstract hasMonetaryCost()Z
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 4
    .parameter "criteria"

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string v1, "passive"

    iget-object v2, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 96
    :goto_0
    return v1

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v1

    invoke-virtual {p0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v1, v3

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 83
    .local v0, criteriaPower:I
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/location/LocationProvider;->getPowerRequirement()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v1, v3

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/location/LocationProvider;->supportsAltitude()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/location/LocationProvider;->supportsSpeed()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    .line 91
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p1}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/location/LocationProvider;->supportsBearing()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    .line 94
    goto :goto_0

    .line 96
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract requiresCell()Z
.end method

.method public abstract requiresNetwork()Z
.end method

.method public abstract requiresSatellite()Z
.end method

.method public abstract supportsAltitude()Z
.end method

.method public abstract supportsBearing()Z
.end method

.method public abstract supportsSpeed()Z
.end method
