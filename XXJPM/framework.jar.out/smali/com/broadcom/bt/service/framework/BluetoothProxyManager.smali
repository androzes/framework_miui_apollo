.class public Lcom/broadcom/bt/service/framework/BluetoothProxyManager;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BluetoothProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothProxyManager"

.field private static final sSync:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 6
    .parameter "name"
    .parameter "ctx"
    .parameter "listener"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "com.broadcom.bt.app.system"

    .line 144
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_0

    move v1, v4

    .line 222
    :goto_0
    return v1

    .line 150
    :cond_0
    invoke-static {p1, p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const-string v1, "BluetoothProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get service proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_1

    const-string v3, "<unknown>"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Service is not enabled..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 153
    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 151
    goto :goto_1

    .line 156
    :cond_2
    const-string v1, "bluetooth_opp_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.OppService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    invoke-direct {v1, p1, v3, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v1, "bluetooth_bpp_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.BppService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    invoke-direct {v1, p1, v5, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0

    .line 170
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v1, "bluetooth_pbs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.PbapService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .line 177
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    const-string v1, "bluetooth_ftp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.FtpService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .line 184
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const-string v1, "bluetooth_dg_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.DataGatewayService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .line 191
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    const-string v1, "bluetooth_fm_receiver_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.FmService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const-string v1, "bluetooth_sap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.SapService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .line 205
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    const-string v1, "bluetooth_test"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.BluetoothTestModeService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .line 213
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    const-string v1, "bluetooth_dun"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.DunService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_b
    move v1, v4

    .line 222
    goto/16 :goto_0
.end method

.method public static getSystemProxy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "name"

    .prologue
    .line 232
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 233
    const/4 p0, 0x0

    .line 323
    .end local p0
    :goto_0
    return-object p0

    .line 236
    .restart local p0
    :cond_0
    const-string v0, "bluetooth_opp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    const-string v2, ""

    monitor-enter v2

    .line 239
    :try_start_0
    const-string p0, "bluetooth_opp_service"

    .end local p0
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-result-object p0

    .line 241
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_1

    .line 242
    const/4 p0, 0x0

    .line 247
    .end local v0           #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 244
    .restart local v0       #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, b:Landroid/os/IBinder;
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v1

    .line 245
    .local v1, service:Lcom/broadcom/bt/service/opp/IOppService;
    new-instance p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .end local v0           #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    goto :goto_1

    .line 249
    .end local v1           #service:Lcom/broadcom/bt/service/opp/IOppService;
    .local p0, name:Ljava/lang/String;
    :cond_2
    const-string v0, "bluetooth_bpp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    const-string v2, ""

    monitor-enter v2

    .line 252
    :try_start_3
    const-string p0, "bluetooth_bpp_service"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-result-object p0

    .line 254
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_3

    .line 255
    const/4 p0, 0x0

    .line 261
    .end local v0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    :goto_3
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 257
    .restart local v0       #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, b:Landroid/os/IBinder;
    :cond_3
    :try_start_5
    invoke-static {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-result-object v1

    .line 259
    .local v1, service:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    new-instance p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;-><init>(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .end local v0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    goto :goto_3

    .line 263
    .end local v1           #service:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    .local p0, name:Ljava/lang/String;
    :cond_4
    const-string v0, "bluetooth_pbs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    const-string v2, ""

    monitor-enter v2

    .line 266
    :try_start_6
    const-string p0, "bluetooth_pbs"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-result-object p0

    .line 268
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_5

    .line 269
    const/4 p0, 0x0

    .line 274
    .end local v0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    :goto_5
    :try_start_7
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_6
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 271
    .restart local v0       #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, b:Landroid/os/IBinder;
    :cond_5
    :try_start_8
    invoke-static {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    move-result-object v1

    .line 272
    .local v1, service:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    new-instance p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;-><init>(Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .end local v0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    goto :goto_5

    .line 292
    .end local v1           #service:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    .local p0, name:Ljava/lang/String;
    :cond_6
    const-string v0, "bluetooth_ftp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    const-string v2, ""

    monitor-enter v2

    .line 295
    :try_start_9
    const-string p0, "bluetooth_ftp"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-result-object p0

    .line 297
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_7

    .line 298
    const/4 p0, 0x0

    .line 303
    .end local v0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    :goto_7
    :try_start_a
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :goto_8
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 300
    .restart local v0       #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, b:Landroid/os/IBinder;
    :cond_7
    :try_start_b
    invoke-static {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    move-result-object v1

    .line 301
    .local v1, service:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    new-instance p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;-><init>(Lcom/broadcom/bt/service/ftp/IBluetoothFTP;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .end local v0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    goto :goto_7

    .line 305
    .end local v1           #service:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    .local p0, name:Ljava/lang/String;
    :cond_8
    const-string v0, "bluetooth_dg_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #name:Ljava/lang/String;
    if-eqz p0, :cond_a

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    const-string v2, ""

    monitor-enter v2

    .line 308
    :try_start_c
    const-string p0, "bluetooth_dg_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 310
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_9

    .line 311
    const-string p0, "BluetoothProxyManager"

    .end local p0           #b:Landroid/os/IBinder;
    const-string v1, "BluetoothDataGateway, binder is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 312
    const/4 p0, 0x0

    .line 319
    .end local v0           #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    .local p0, sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    :goto_9
    :try_start_d
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :goto_a
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .line 314
    .restart local v0       #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    .local p0, b:Landroid/os/IBinder;
    :cond_9
    :try_start_e
    invoke-static {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    move-result-object v1

    .line 316
    .local v1, service:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
    new-instance p0, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/android/bluetooth/BluetoothDataGateway;-><init>(Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 317
    .end local v0           #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    .local p0, sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    :try_start_f
    const-string v0, "BluetoothProxyManager"

    const-string v1, "BluetoothDataGateway, Constructed"

    .end local v1           #service:Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_9

    .line 323
    .end local p0           #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    :cond_a
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 319
    .restart local v0       #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    :catchall_5
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    .restart local p0       #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    move-object v0, v3

    goto :goto_a

    .line 303
    .end local p0           #sBluetoothDataGateway:Lcom/broadcom/android/bluetooth/BluetoothDataGateway;
    .local v0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    :catchall_6
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    move-object v0, v3

    goto :goto_8

    .line 274
    .end local p0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local v0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    :catchall_7
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    move-object v0, v3

    goto :goto_6

    .line 261
    .end local p0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local v0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    :catchall_8
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    move-object v0, v3

    goto/16 :goto_4

    .line 247
    .end local p0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local v0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    :catchall_9
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    move-object v0, v3

    goto/16 :goto_2
.end method
