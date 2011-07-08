.class public abstract Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFTPCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

.field static final TRANSACTION_onFtpServerAccessRequested:I = 0x5

.field static final TRANSACTION_onFtpServerAuthen:I = 0x4

.field static final TRANSACTION_onFtpServerClosed:I = 0x3

.field static final TRANSACTION_onFtpServerDelCompleted:I = 0x9

.field static final TRANSACTION_onFtpServerEnabled:I = 0x1

.field static final TRANSACTION_onFtpServerFileTransferInProgress:I = 0x6

.field static final TRANSACTION_onFtpServerGetCompleted:I = 0x8

.field static final TRANSACTION_onFtpServerOpened:I = 0x2

.field static final TRANSACTION_onFtpServerPutCompleted:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x1

    const-string v7, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 46
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerEnabled()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 53
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerOpened(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 62
    goto :goto_0

    .line 66
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerClosed()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 69
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 79
    .local v2, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v6

    .line 80
    .local v3, _arg2:Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerAuthen(Ljava/lang/String;BZ)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 82
    goto :goto_0

    .line 79
    .end local v3           #_arg2:Z
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 86
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_5
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 96
    .local v4, _arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 99
    goto :goto_0

    .line 103
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerFileTransferInProgress(II)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 110
    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 119
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 121
    goto/16 :goto_0

    .line 125
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 130
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 132
    goto/16 :goto_0

    .line 136
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 141
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 143
    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
