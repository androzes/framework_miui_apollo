.class Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothPrinterTaskCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 150
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    return-object v0
.end method

.method public onPrinterBppDocComplete(JI)V
    .locals 5
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    return-void

    .line 245
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v2
.end method

.method public onPrinterGetObject(JLjava/lang/String;)V
    .locals 5
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 330
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    return-void

    .line 337
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    throw v2
.end method

.method public onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 5
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 260
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 262
    if-eqz p3, :cond_0

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Lcom/broadcom/bt/service/bpp/JobStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    return-void

    .line 267
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw v2
.end method

.method public onPrinterPartialImage(JLjava/lang/String;)V
    .locals 5
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 308
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    return-void

    .line 315
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v2
.end method

.method public onPrinterProgress(JII)V
    .locals 5
    .parameter "jobId"
    .parameter "totalBytes"
    .parameter "processedBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    return-void

    .line 201
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    throw v2
.end method

.method public onPrinterTaskClosed(JI)V
    .locals 5
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 214
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 216
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 223
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw v2
.end method

.method public onPrinterTaskOpen(JI)V
    .locals 5
    .parameter "jobId"
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    return-void

    .line 177
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw v2
.end method

.method public onPrinterThumbnail(J)V
    .locals 5
    .parameter "jobId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    return-void

    .line 293
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    throw v2
.end method
