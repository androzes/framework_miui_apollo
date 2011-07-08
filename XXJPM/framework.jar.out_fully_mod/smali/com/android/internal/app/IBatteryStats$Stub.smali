.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x20

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x21

.field static final TRANSACTION_getStatistics:I = 0x1

.field static final TRANSACTION_noteBluetoothOff:I = 0x17

.field static final TRANSACTION_noteBluetoothOn:I = 0x16

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x18

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x19

.field static final TRANSACTION_noteInputEvent:I = 0xb

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x10

.field static final TRANSACTION_notePhoneOff:I = 0xe

.field static final TRANSACTION_notePhoneOn:I = 0xd

.field static final TRANSACTION_notePhoneSignalStrength:I = 0xf

.field static final TRANSACTION_notePhoneState:I = 0x11

.field static final TRANSACTION_noteScanWifiLockAcquired:I = 0x1a

.field static final TRANSACTION_noteScanWifiLockReleased:I = 0x1b

.field static final TRANSACTION_noteScreenBrightness:I = 0x9

.field static final TRANSACTION_noteScreenOff:I = 0xa

.field static final TRANSACTION_noteScreenOn:I = 0x8

.field static final TRANSACTION_noteStartGps:I = 0x6

.field static final TRANSACTION_noteStartSensor:I = 0x4

.field static final TRANSACTION_noteStartWakelock:I = 0x2

.field static final TRANSACTION_noteStopGps:I = 0x7

.field static final TRANSACTION_noteStopSensor:I = 0x5

.field static final TRANSACTION_noteStopWakelock:I = 0x3

.field static final TRANSACTION_noteUserActivity:I = 0xc

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x1d

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x1c

.field static final TRANSACTION_noteWifiOff:I = 0x13

.field static final TRANSACTION_noteWifiOn:I = 0x12

.field static final TRANSACTION_noteWifiRunning:I = 0x14

.field static final TRANSACTION_noteWifiStopped:I = 0x15

.field static final TRANSACTION_recordCurrentLevel:I = 0x1f

.field static final TRANSACTION_setOnBattery:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    const-string v7, "com.android.internal.app.IBatteryStats"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v3

    .line 49
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 51
    goto :goto_0

    .line 55
    .end local v3           #_result:[B
    :sswitch_2
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(ILjava/lang/String;I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 64
    goto :goto_0

    .line 68
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_3
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(ILjava/lang/String;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 77
    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_4
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 88
    goto :goto_0

    .line 92
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_5
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 99
    goto :goto_0

    .line 103
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_6
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 108
    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 117
    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOn()V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 124
    goto/16 :goto_0

    .line 128
    :sswitch_9
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 133
    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOff()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 140
    goto/16 :goto_0

    .line 144
    :sswitch_b
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInputEvent()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_c
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 158
    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_d
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 165
    goto/16 :goto_0

    .line 169
    :sswitch_e
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 172
    goto/16 :goto_0

    .line 176
    :sswitch_f
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 184
    .local v0, _arg0:Landroid/telephony/SignalStrength;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 186
    goto/16 :goto_0

    .line 182
    .end local v0           #_arg0:Landroid/telephony/SignalStrength;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_1

    .line 190
    .end local v0           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_10
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v6

    .line 195
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 197
    goto/16 :goto_0

    .end local v1           #_arg1:Z
    :cond_1
    move v1, v8

    .line 194
    goto :goto_2

    .line 201
    .end local v0           #_arg0:I
    :sswitch_11
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 206
    goto/16 :goto_0

    .line 210
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn(I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 215
    goto/16 :goto_0

    .line 219
    .end local v0           #_arg0:I
    :sswitch_13
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff(I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 224
    goto/16 :goto_0

    .line 228
    .end local v0           #_arg0:I
    :sswitch_14
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 231
    goto/16 :goto_0

    .line 235
    :sswitch_15
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 238
    goto/16 :goto_0

    .line 242
    :sswitch_16
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn()V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 245
    goto/16 :goto_0

    .line 249
    :sswitch_17
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 252
    goto/16 :goto_0

    .line 256
    :sswitch_18
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 261
    goto/16 :goto_0

    .line 265
    .end local v0           #_arg0:I
    :sswitch_19
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 270
    goto/16 :goto_0

    .line 274
    .end local v0           #_arg0:I
    :sswitch_1a
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockAcquired(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 279
    goto/16 :goto_0

    .line 283
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockReleased(I)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 288
    goto/16 :goto_0

    .line 292
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 297
    goto/16 :goto_0

    .line 301
    .end local v0           #_arg0:I
    :sswitch_1d
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 306
    goto/16 :goto_0

    .line 310
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v6

    .line 314
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setOnBattery(ZI)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 317
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    :cond_2
    move v0, v8

    .line 312
    goto :goto_3

    .line 321
    :sswitch_1f
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->recordCurrentLevel(I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 326
    goto/16 :goto_0

    .line 330
    .end local v0           #_arg0:I
    :sswitch_20
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v3

    .line 332
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 334
    goto/16 :goto_0

    .line 338
    .end local v3           #_result:J
    :sswitch_21
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v3

    .line 340
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 342
    goto/16 :goto_0

    .line 38
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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
