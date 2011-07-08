.class public interface abstract Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
.super Ljava/lang/Object;
.source "IBluetoothPBAP.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;
    }
.end annotation


# virtual methods
.method public abstract pbapServerAccessRsp(BZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
