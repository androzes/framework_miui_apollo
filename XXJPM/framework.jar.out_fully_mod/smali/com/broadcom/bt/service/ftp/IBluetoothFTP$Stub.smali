.class public abstract Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFTP.java"

# interfaces
.implements Lcom/broadcom/bt/service/ftp/IBluetoothFTP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.ftp.IBluetoothFTP"

.field static final TRANSACTION_closeFtpServer:I = 0x4

.field static final TRANSACTION_ftpServerAccessRsp:I = 0x2

.field static final TRANSACTION_ftpServerAuthenRsp:I = 0x1

.field static final TRANSACTION_getConnectedDevice:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
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
    const-string v1, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v4, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 48
    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 59
    goto :goto_0

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 67
    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    .line 69
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 72
    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_0
    move v1, v7

    .line 67
    goto :goto_1

    .line 76
    .end local v0           #_arg0:B
    :sswitch_3
    const-string v4, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 78
    .local v3, _result:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v3, p3, v5}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v4, v5

    .line 86
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 90
    .end local v3           #_result:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string v4, "com.broadcom.bt.service.ftp.IBluetoothFTP"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->closeFtpServer()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 93
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
