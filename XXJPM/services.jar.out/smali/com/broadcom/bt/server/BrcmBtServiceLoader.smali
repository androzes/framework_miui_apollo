.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BrcmBtServiceLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method protected static initRequiredSystemServices(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 152
    return-void
.end method

.method protected static initRequiredSystemServicesForFactoryTest(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "BrcmBtServiceLoader"

    .line 155
    const-string v0, "BrcmBtServiceLoader"

    const-string v0, "Registering null FM Receiver Service (factory test)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "BrcmBtServiceLoader"

    const-string v0, "Starting BT Test Service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public static loadRequiredSystemResources(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const-string v6, "BrcmBtServiceLoader"

    .line 86
    const-string v4, "BrcmBtServiceLoader"

    const-string v4, "***Loading bluetooth resources....."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, isEmulator:Z
    const/4 v1, 0x0

    .line 91
    .local v1, isFactoryTest:Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->init(Landroid/content/Context;ZZ)V

    .line 99
    if-nez v1, :cond_2

    .line 100
    invoke-static {p0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->initRequiredSystemServices(Landroid/content/Context;)V

    .line 106
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, mIntentFilter:Landroid/content/IntentFilter;
    new-instance v3, Lcom/broadcom/bt/server/BrcmBtServiceLoader$1;

    invoke-direct {v3}, Lcom/broadcom/bt/server/BrcmBtServiceLoader$1;-><init>()V

    .line 133
    .local v3, receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    const-string v4, "BrcmBtServiceLoader"

    const-string v4, "***Done loading bluetooth resources....."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 93
    .end local v2           #mIntentFilter:Landroid/content/IntentFilter;
    .end local v3           #receiver:Landroid/content/BroadcastReceiver;
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {p0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->initRequiredSystemServicesForFactoryTest(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static loadServices(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {p0, p1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadSystemServices(Landroid/content/Context;I)V

    .line 81
    invoke-static {p0, p1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadRequiredSystemResources(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method public static loadSystemServices(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, "1"

    const-string v7, "BrcmBtServiceLoader"

    .line 164
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "***Loading bluetooth services as system services....."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, obexService:Lcom/broadcom/bt/service/opp/OppService;
    const/4 v3, 0x0

    .line 168
    .local v3, btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    const/4 v2, 0x0

    .line 169
    .local v2, bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    const/4 v1, 0x0

    .line 170
    .local v1, bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    const/4 v0, 0x0

    .line 174
    .local v0, bluetoothDgs:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
    const-string v5, "bluetooth_opp_service"

    invoke-static {v5}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 175
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 176
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Opp Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v4, Lcom/broadcom/bt/service/opp/OppService;

    .end local v4           #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-direct {v4, p0, v9}, Lcom/broadcom/bt/service/opp/OppService;-><init>(Landroid/content/Context;Z)V

    .line 178
    .restart local v4       #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-virtual {v4}, Lcom/broadcom/bt/service/opp/OppService;->init()V

    .line 179
    const-string v5, "bluetooth_opp_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 202
    :cond_0
    :goto_0
    const-string v5, "bluetooth_bpp_service"

    invoke-static {v5}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 203
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 204
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth Printer Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .end local v3           #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    invoke-direct {v3, p0, v9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;-><init>(Landroid/content/Context;Z)V

    .line 207
    .restart local v3       #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    const-string v5, "bluetooth_bpp_service"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 224
    :cond_1
    :goto_1
    const-string v5, "bluetooth_pbs"

    invoke-static {v5}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 225
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 226
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth PBAP Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v2, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;

    .end local v2           #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;-><init>(Landroid/content/Context;)V

    .line 228
    .restart local v2       #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    const-string v5, "bluetooth_pbs"

    invoke-static {v5, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 245
    :cond_2
    :goto_2
    const-string v5, "bluetooth_ftp"

    invoke-static {v5}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 246
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 247
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth FTP Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;

    .end local v1           #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;-><init>(Landroid/content/Context;)V

    .line 249
    .restart local v1       #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    const-string v5, "bluetooth_ftp"

    invoke-static {v5, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 264
    :cond_3
    :goto_3
    const-string v5, "bluetooth_dg_service"

    invoke-static {v5}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 265
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 266
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth DG Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    .end local v0           #bluetoothDgs:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
    invoke-direct {v0, p0, v9}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V

    .line 268
    .restart local v0       #bluetoothDgs:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->init()V

    .line 269
    const-string v5, "bluetooth_dg_service"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    :cond_4
    :goto_4
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "***Done loading bluetooth services as system services....."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 181
    :cond_5
    if-ne p1, v8, :cond_6

    .line 182
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Registering null Opp Service (factory test)"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v5, "bluetooth_opp_service"

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 185
    :cond_6
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Opp Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v4, Lcom/broadcom/bt/service/opp/OppService;

    .end local v4           #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-direct {v4, p0, v9}, Lcom/broadcom/bt/service/opp/OppService;-><init>(Landroid/content/Context;Z)V

    .line 187
    .restart local v4       #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-virtual {v4}, Lcom/broadcom/bt/service/opp/OppService;->init()V

    .line 188
    const-string v5, "bluetooth_opp_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 209
    :cond_7
    if-ne p1, v8, :cond_8

    .line 210
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Registering null Bluetooth Printer Service (factory test)"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v5, "bluetooth_bpp_service"

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1

    .line 215
    :cond_8
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth Printer Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v3, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .end local v3           #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    invoke-direct {v3, p0, v9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;-><init>(Landroid/content/Context;Z)V

    .line 218
    .restart local v3       #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    const-string v5, "bluetooth_bpp_service"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1

    .line 231
    :cond_9
    if-ne p1, v8, :cond_a

    .line 232
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Registering null Bluetooth PBAP Service (factory test)"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v5, "bluetooth_pbs"

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 237
    :cond_a
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth PBAP Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v2, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;

    .end local v2           #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;-><init>(Landroid/content/Context;)V

    .line 239
    .restart local v2       #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    const-string v5, "bluetooth_pbs"

    invoke-static {v5, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_2

    .line 252
    :cond_b
    if-ne p1, v8, :cond_c

    .line 253
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Registering Bluetooth FTP Service (factory test)"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v5, "bluetooth_ftp"

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 256
    :cond_c
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth FTP Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;

    .end local v1           #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;-><init>(Landroid/content/Context;)V

    .line 258
    .restart local v1       #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    const-string v5, "bluetooth_ftp"

    invoke-static {v5, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 271
    :cond_d
    if-ne p1, v8, :cond_e

    .line 272
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Registering Bluetooth DG Service (factory test)"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v5, "bluetooth_dg_service"

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_4

    .line 275
    :cond_e
    const-string v5, "BrcmBtServiceLoader"

    const-string v5, "Starting Bluetooth DG Service."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;

    .end local v0           #bluetoothDgs:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
    invoke-direct {v0, p0, v9}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V

    .line 277
    .restart local v0       #bluetoothDgs:Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;
    invoke-virtual {v0}, Lcom/broadcom/android/bluetooth/server/BluetoothDataGatewayService;->init()V

    .line 278
    const-string v5, "bluetooth_dg_service"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_4
.end method
