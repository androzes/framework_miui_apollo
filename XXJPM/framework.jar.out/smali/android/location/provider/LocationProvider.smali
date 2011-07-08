.class public abstract Landroid/location/provider/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationProvider"


# instance fields
.field private mLocationManager:Landroid/location/ILocationManager;

.field private mProvider:Landroid/location/ILocationProvider$Stub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Landroid/location/provider/LocationProvider$1;

    invoke-direct {v1, p0}, Landroid/location/provider/LocationProvider$1;-><init>(Landroid/location/provider/LocationProvider;)V

    iput-object v1, p0, Landroid/location/provider/LocationProvider;->mProvider:Landroid/location/ILocationProvider$Stub;

    .line 132
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/location/provider/LocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 134
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/location/provider/LocationProvider;->mProvider:Landroid/location/ILocationProvider$Stub;

    return-object v0
.end method

.method getInterface()Landroid/location/ILocationProvider;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/location/provider/LocationProvider;->mProvider:Landroid/location/ILocationProvider$Stub;

    return-object v0
.end method

.method public abstract onAddListener(I)V
.end method

.method public abstract onDisable()V
.end method

.method public abstract onEnable()V
.end method

.method public abstract onEnableLocationTracking(Z)V
.end method

.method public abstract onGetAccuracy()I
.end method

.method public abstract onGetInternalState()Ljava/lang/String;
.end method

.method public abstract onGetPowerRequirement()I
.end method

.method public abstract onGetStatus(Landroid/os/Bundle;)I
.end method

.method public abstract onGetStatusUpdateTime()J
.end method

.method public abstract onHasMonetaryCost()Z
.end method

.method public abstract onRemoveListener(I)V
.end method

.method public abstract onRequiresCell()Z
.end method

.method public abstract onRequiresNetwork()Z
.end method

.method public abstract onRequiresSatellite()Z
.end method

.method public abstract onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract onSetMinTime(J)V
.end method

.method public abstract onSupportsAltitude()Z
.end method

.method public abstract onSupportsBearing()Z
.end method

.method public abstract onSupportsSpeed()Z
.end method

.method public abstract onUpdateLocation(Landroid/location/Location;)V
.end method

.method public abstract onUpdateNetworkState(ILandroid/net/NetworkInfo;)V
.end method

.method public reportLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/location/provider/LocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationProvider"

    const-string v2, "RemoteException in reportLocation: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
