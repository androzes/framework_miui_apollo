.class public abstract Landroid/location/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Landroid/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationProvider"

.field static final TRANSACTION_addListener:I = 0x14

.field static final TRANSACTION_disable:I = 0xb

.field static final TRANSACTION_enable:I = 0xa

.field static final TRANSACTION_enableLocationTracking:I = 0xf

.field static final TRANSACTION_getAccuracy:I = 0x9

.field static final TRANSACTION_getInternalState:I = 0xe

.field static final TRANSACTION_getPowerRequirement:I = 0x8

.field static final TRANSACTION_getStatus:I = 0xc

.field static final TRANSACTION_getStatusUpdateTime:I = 0xd

.field static final TRANSACTION_hasMonetaryCost:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x15

.field static final TRANSACTION_requiresCell:I = 0x3

.field static final TRANSACTION_requiresNetwork:I = 0x1

.field static final TRANSACTION_requiresSatellite:I = 0x2

.field static final TRANSACTION_sendExtraCommand:I = 0x13

.field static final TRANSACTION_setMinTime:I = 0x10

.field static final TRANSACTION_supportsAltitude:I = 0x5

.field static final TRANSACTION_supportsBearing:I = 0x7

.field static final TRANSACTION_supportsSpeed:I = 0x6

.field static final TRANSACTION_updateLocation:I = 0x12

.field static final TRANSACTION_updateNetworkState:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "android.location.ILocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationProvider;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/ILocationProvider;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ILocationProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.location.ILocationProvider"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresNetwork()Z

    move-result v3

    .line 54
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 56
    goto :goto_0

    :cond_0
    move v5, v8

    .line 55
    goto :goto_1

    .line 60
    .end local v3           #_result:Z
    :sswitch_2
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresSatellite()Z

    move-result v3

    .line 62
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 64
    goto :goto_0

    :cond_1
    move v5, v8

    .line 63
    goto :goto_2

    .line 68
    .end local v3           #_result:Z
    :sswitch_3
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->requiresCell()Z

    move-result v3

    .line 70
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 72
    goto :goto_0

    :cond_2
    move v5, v8

    .line 71
    goto :goto_3

    .line 76
    .end local v3           #_result:Z
    :sswitch_4
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->hasMonetaryCost()Z

    move-result v3

    .line 78
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_3

    move v5, v6

    :goto_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 80
    goto :goto_0

    :cond_3
    move v5, v8

    .line 79
    goto :goto_4

    .line 84
    .end local v3           #_result:Z
    :sswitch_5
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsAltitude()Z

    move-result v3

    .line 86
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 88
    goto :goto_0

    :cond_4
    move v5, v8

    .line 87
    goto :goto_5

    .line 92
    .end local v3           #_result:Z
    :sswitch_6
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsSpeed()Z

    move-result v3

    .line 94
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v3, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 96
    goto/16 :goto_0

    :cond_5
    move v5, v8

    .line 95
    goto :goto_6

    .line 100
    .end local v3           #_result:Z
    :sswitch_7
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->supportsBearing()Z

    move-result v3

    .line 102
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_6

    move v5, v6

    :goto_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 104
    goto/16 :goto_0

    :cond_6
    move v5, v8

    .line 103
    goto :goto_7

    .line 108
    .end local v3           #_result:Z
    :sswitch_8
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getPowerRequirement()I

    move-result v3

    .line 110
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 112
    goto/16 :goto_0

    .line 116
    .end local v3           #_result:I
    :sswitch_9
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getAccuracy()I

    move-result v3

    .line 118
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 120
    goto/16 :goto_0

    .line 124
    .end local v3           #_result:I
    :sswitch_a
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->enable()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 127
    goto/16 :goto_0

    .line 131
    :sswitch_b
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->disable()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 134
    goto/16 :goto_0

    .line 138
    :sswitch_c
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, _arg0:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v3

    .line 142
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v0, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    move v5, v6

    .line 151
    goto/16 :goto_0

    .line 149
    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 155
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v3           #_result:I
    :sswitch_d
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v3

    .line 157
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 159
    goto/16 :goto_0

    .line 163
    .end local v3           #_result:J
    :sswitch_e
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/location/ILocationProvider$Stub;->getInternalState()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 167
    goto/16 :goto_0

    .line 171
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v0, v6

    .line 174
    .local v0, _arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->enableLocationTracking(Z)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 176
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v8

    .line 173
    goto :goto_9

    .line 180
    :sswitch_10
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 183
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/location/ILocationProvider$Stub;->setMinTime(J)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 185
    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:J
    :sswitch_11
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 194
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 199
    .local v2, _arg1:Landroid/net/NetworkInfo;
    :goto_a
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationProvider$Stub;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 201
    goto/16 :goto_0

    .line 197
    .end local v2           #_arg1:Landroid/net/NetworkInfo;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/net/NetworkInfo;
    goto :goto_a

    .line 205
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/net/NetworkInfo;
    :sswitch_12
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 208
    sget-object v5, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 213
    .local v0, _arg0:Landroid/location/Location;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->updateLocation(Landroid/location/Location;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 215
    goto/16 :goto_0

    .line 211
    .end local v0           #_arg0:Landroid/location/Location;
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/location/Location;
    goto :goto_b

    .line 219
    .end local v0           #_arg0:Landroid/location/Location;
    :sswitch_13
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 224
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 229
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    .line 230
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v3, :cond_c

    move v5, v6

    :goto_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    if-eqz v2, :cond_d

    .line 233
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v2, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    move v5, v6

    .line 239
    goto/16 :goto_0

    .line 227
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_result:Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_c

    .restart local v3       #_result:Z
    :cond_c
    move v5, v8

    .line 231
    goto :goto_d

    .line 237
    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 243
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v3           #_result:Z
    :sswitch_14
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->addListener(I)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 248
    goto/16 :goto_0

    .line 252
    .end local v0           #_arg0:I
    :sswitch_15
    const-string v5, "android.location.ILocationProvider"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/location/ILocationProvider$Stub;->removeListener(I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 257
    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
