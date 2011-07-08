.class public abstract Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;
.super Landroid/os/Binder;
.source "ITFServiceTo.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/ITFServiceTo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/ITFServiceTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/ITFServiceTo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nemustech.tiffany.world.ITFServiceTo"

.field static final TRANSACTION_isBound:I = 0x2

.field static final TRANSACTION_showBlockWindow:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.nemustech.tiffany.world.ITFServiceTo"

    invoke-virtual {p0, p0, v0}, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nemustech/tiffany/world/ITFServiceTo;
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
    const-string v1, "com.nemustech.tiffany.world.ITFServiceTo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nemustech/tiffany/world/ITFServiceTo;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/nemustech/tiffany/world/ITFServiceTo;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "com.nemustech.tiffany.world.ITFServiceTo"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.nemustech.tiffany.world.ITFServiceTo"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.nemustech.tiffany.world.ITFServiceTo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v3

    .line 50
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;->showBlockWindow(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 52
    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v5

    .line 49
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v2, "com.nemustech.tiffany.world.ITFServiceTo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/ITFServiceTo$Stub;->isBound()Z

    move-result v1

    .line 58
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 60
    goto :goto_0

    :cond_1
    move v2, v5

    .line 59
    goto :goto_2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
