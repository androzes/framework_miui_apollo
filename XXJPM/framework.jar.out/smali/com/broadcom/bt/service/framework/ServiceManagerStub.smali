.class public Lcom/broadcom/bt/service/framework/ServiceManagerStub;
.super Lcom/broadcom/bt/service/framework/IServiceManager$Stub;
.source "ServiceManagerStub.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/ServiceManagerStub;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public disableService(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->disableService(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public enableService(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->enableService(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public getServiceState(Ljava/lang/String;)I
    .locals 1
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAllFactoryTestMode(I)V
    .locals 1
    .parameter "factoryTest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/ServiceManagerStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->setAllFactoryTestMode(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public setFactoryTestMode(Ljava/lang/String;I)V
    .locals 1
    .parameter "serviceName"
    .parameter "factoryTest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/ServiceManagerStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->setFactoryTestMode(Landroid/content/Context;Ljava/lang/String;I)V

    .line 39
    return-void
.end method
