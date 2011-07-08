.class Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;
.super Ljava/lang/Object;
.source "BluetoothProxyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BluetoothProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProxyCreatorHandler"
.end annotation


# static fields
.field public static final BPP_PROXY:I = 0x2

.field public static final DG_PROXY:I = 0x5

.field public static final DUN_PROXY:I = 0x9

.field public static final FM_PROXY:I = 0x6

.field public static final FTP_PROXY:I = 0x4

.field public static final OPP_PROXY:I = 0x1

.field public static final PBAP_PROXY:I = 0x3

.field public static final SAP_PROXY:I = 0x7

.field public static final TEST_MODE_PROXY:I = 0x8


# instance fields
.field mCtx:Landroid/content/Context;

.field mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

.field mProxyClass:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V
    .locals 0
    .parameter "ctx"
    .parameter "proxyClass"
    .parameter "proxyListener"

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p3, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    .line 349
    iput p2, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mProxyClass:I

    .line 350
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    .line 351
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .parameter "name"
    .parameter "service"

    .prologue
    .line 354
    iget v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mProxyClass:I

    packed-switch v9, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_0
    invoke-static {p2}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v5

    .line 357
    .local v5, oppService:Lcom/broadcom/bt/service/opp/IOppService;
    if-eqz v5, :cond_0

    .line 358
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v5, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/opp/IOppService;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    .end local v5           #oppService:Lcom/broadcom/bt/service/opp/IOppService;
    :pswitch_1
    invoke-static {p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-result-object v0

    .line 366
    .local v0, bppService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    if-eqz v0, :cond_0

    .line 367
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v0, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    .end local v0           #bppService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    :pswitch_2
    invoke-static {p2}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    move-result-object v6

    .line 374
    .local v6, pbapService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    if-eqz v6, :cond_0

    .line 375
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v6, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    .end local v6           #pbapService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    :pswitch_3
    invoke-static {p2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    move-result-object v4

    .line 383
    .local v4, ftpService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    if-eqz v4, :cond_0

    .line 384
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v4, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/ftp/IBluetoothFTP;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_0

    .line 391
    .end local v4           #ftpService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    :pswitch_4
    invoke-static {p2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    move-result-object v1

    .line 393
    .local v1, dgService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
    if-eqz v1, :cond_0

    .line 394
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v1, p0}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;-><init>(Landroid/content/Context;Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    .end local v1           #dgService:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
    :pswitch_5
    invoke-static {p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v3

    .line 402
    .local v3, fmService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    if-eqz v3, :cond_0

    .line 403
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v3, p0}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/fm/IFmReceiverService;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    .end local v3           #fmService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :pswitch_6
    invoke-static {p2}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    move-result-object v7

    .line 410
    .local v7, sapService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;
    if-eqz v7, :cond_0

    .line 411
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/sap/BluetoothSAP;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v7, p0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/sap/IBluetoothSAPService;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    .end local v7           #sapService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;
    :pswitch_7
    invoke-static {p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    move-result-object v8

    .line 417
    .local v8, testModeService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
    if-eqz v8, :cond_0

    .line 418
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/test/BluetoothTestMode;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v8, p0}, Lcom/broadcom/bt/service/test/BluetoothTestMode;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/test/IBluetoothTestModeService;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 425
    .end local v8           #testModeService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
    :pswitch_8
    invoke-static {p2}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    move-result-object v2

    .line 427
    .local v2, dunService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;
    if-eqz v2, :cond_0

    .line 428
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v10, Lcom/broadcom/bt/service/dun/BluetoothDUN;

    iget-object v11, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v10, v11, v2, p0}, Lcom/broadcom/bt/service/dun/BluetoothDUN;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/dun/IBluetoothDUN;Landroid/content/ServiceConnection;)V

    invoke-interface {v9, v10}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 437
    return-void
.end method
