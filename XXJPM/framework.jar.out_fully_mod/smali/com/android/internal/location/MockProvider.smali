.class public Lcom/android/internal/location/MockProvider;
.super Ljava/lang/Object;
.source "MockProvider.java"

# interfaces
.implements Landroid/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MockProvider"


# instance fields
.field private final mAccuracy:I

.field private mEnabled:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mHasLocation:Z

.field private final mHasMonetaryCost:Z

.field private mHasStatus:Z

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mName:Ljava/lang/String;

.field private final mPowerRequirement:I

.field private final mRequiresCell:Z

.field private final mRequiresNetwork:Z

.field private final mRequiresSatellite:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private final mSupportsAltitude:Z

.field private final mSupportsBearing:Z

.field private final mSupportsSpeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V
    .locals 1
    .parameter "name"
    .parameter "locationManager"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 62
    iput-object p1, p0, Lcom/android/internal/location/MockProvider;->mName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/internal/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 64
    iput-boolean p3, p0, Lcom/android/internal/location/MockProvider;->mRequiresNetwork:Z

    .line 65
    iput-boolean p4, p0, Lcom/android/internal/location/MockProvider;->mRequiresSatellite:Z

    .line 66
    iput-boolean p5, p0, Lcom/android/internal/location/MockProvider;->mRequiresCell:Z

    .line 67
    iput-boolean p6, p0, Lcom/android/internal/location/MockProvider;->mHasMonetaryCost:Z

    .line 68
    iput-boolean p7, p0, Lcom/android/internal/location/MockProvider;->mSupportsAltitude:Z

    .line 69
    iput-boolean p9, p0, Lcom/android/internal/location/MockProvider;->mSupportsBearing:Z

    .line 70
    iput-boolean p8, p0, Lcom/android/internal/location/MockProvider;->mSupportsSpeed:Z

    .line 71
    iput p10, p0, Lcom/android/internal/location/MockProvider;->mPowerRequirement:I

    .line 72
    iput p11, p0, Lcom/android/internal/location/MockProvider;->mAccuracy:I

    .line 73
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 74
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 192
    return-void
.end method

.method public clearLocation()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasLocation:Z

    .line 154
    return-void
.end method

.method public clearStatus()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    .line 169
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mEnabled:Z

    .line 82
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/location/MockProvider;->mHasLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/location/MockProvider;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mEnabled:Z

    .line 86
    return-void
.end method

.method public enableLocationTracking(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 176
    return-void
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/location/MockProvider;->mAccuracy:I

    return v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/location/MockProvider;->mPowerRequirement:I

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .parameter "extras"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 95
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 96
    iget v0, p0, Lcom/android/internal/location/MockProvider;->mStatus:I

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasMonetaryCost:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mEnabled:Z

    return v0
.end method

.method public removeListener(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 195
    return-void
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mRequiresSatellite:Z

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/MockProvider;->mHasLocation:Z

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v2, p0, Lcom/android/internal/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MockProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMinTime(J)V
    .locals 0
    .parameter "minTime"

    .prologue
    .line 179
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .locals 1
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 157
    iput p1, p0, Lcom/android/internal/location/MockProvider;->mStatus:I

    .line 158
    iput-wide p3, p0, Lcom/android/internal/location/MockProvider;->mStatusUpdateTime:J

    .line 159
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 160
    if-eqz p2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 163
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mHasStatus:Z

    .line 164
    return-void
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/location/MockProvider;->mSupportsSpeed:Z

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 185
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "state"
    .parameter "info"

    .prologue
    .line 182
    return-void
.end method
