.class public Lcom/broadcom/bt/service/test/BluetoothTestMode;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothTestMode.java"


# static fields
.field public static final AFH_CLASS_OFF:B = -0x1t

.field public static final AFH_FIRST_IDX:B = 0x0t

.field public static final AFH_LAST_IDX:B = 0x1t

.field public static final BTLD_CMD_SEND:I = 0x1010000

.field public static final BTLD_CMD_STATUS_FAILURE:B = 0x1t

.field public static final BTLD_CMD_STATUS_IDX:B = 0x0t

.field public static final BTLD_CMD_STATUS_SUCCESS:B = 0x0t

.field private static final DBG:Z = true

.field public static final HCI_AFH_SET_CHN_CLASS:I = 0xc3f

.field public static final HCI_AFH_SET_CHN_CLASS_LEN:I = 0x2

.field public static final HCI_SSP_DEBUG_MODE:I = 0x1804

.field public static final HCI_SSP_DEBUG_MODE_LEN:I = 0x1

.field public static final INSTANCE_START_IDX:B = 0x0t

.field public static final SSP_DEBUG_MODE_IDX:B = 0x0t

.field public static final SSP_DEBUG_MODE_OFF:B = 0x4t

.field public static final SSP_DEBUG_MODE_ON:B = 0x5t

.field private static final TAG:Ljava/lang/String; = "BluetoothTestMode"

.field public static final TST_DISABLE_TESTMODE:I = 0x0

.field public static final TST_ENABLE_TESTMODE:I = 0x1

.field public static final TST_GET_TESTMODE:I = -0x1

.field public static final TST_SET_DUT:I = 0x11

.field public static final TST_SET_RX_TEST:I = 0x41

.field public static final TST_SET_TRACE_LEVEL:I = -0x10000

.field public static final TST_SET_TX_CARRIER_FREQ:I = 0x21

.field public static final TST_SET_TX_TEST:I = 0x31


# instance fields
.field private final mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

.field private final mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/test/IBluetoothTestModeService;Landroid/content/ServiceConnection;)V
    .locals 1
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 78
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    .line 233
    new-instance v0, Lcom/broadcom/bt/service/test/BluetoothTestMode$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/test/BluetoothTestMode$1;-><init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .line 79
    iput-object p2, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    return-object v0
.end method

.method private registerEventhandler(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)V
    .locals 3
    .parameter "instance"
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "BluetoothTestMode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerEventhandler( instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "BluetoothTestMode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTestMode( instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public SendBtldApiCmd(II[B)I
    .locals 4
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 215
    const-string v1, "BluetoothTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBtldApiCmd(cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->SendBtldApiCmd(II[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, "SendBtldApiCmd()"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .locals 3
    .parameter "txRxTestParam"

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 204
    const-string v1, "BluetoothTestMode"

    const-string v1, "Set_TX_Test"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 208
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)I
    .locals 5
    .parameter "instance"
    .parameter "callback"

    .prologue
    const-string v4, "BluetoothTestMode"

    .line 113
    const-string v2, "BluetoothTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTestMode( instance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "BluetoothTestMode"

    const-string v2, "createTestMode() first register!!!"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    .local v1, ret_val:I
    :goto_0
    if-ltz v1, :cond_0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->registerEventhandler(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)V

    .line 128
    :cond_0
    return v1

    .line 118
    .end local v1           #ret_val:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothTestMode"

    const-string v2, "Call createTestMode Failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, -0x1

    .line 121
    .restart local v1       #ret_val:I
    goto :goto_0

    .line 123
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ret_val:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #ret_val:I
    goto :goto_0
.end method

.method public enterDUTMode()I
    .locals 3

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 183
    const-string v1, "BluetoothTestMode"

    const-string v1, "enterDUTMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->enterDUTMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 188
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public enterTestMode()I
    .locals 3

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 132
    const-string v1, "BluetoothTestMode"

    const-string v1, "enterTestMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->enterTestMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public exitCurrentTestMode()I
    .locals 4

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 174
    :try_start_0
    const-string v1, "BluetoothTestMode"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->exitCurrentTestMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestMode"

    const-string v1, "Call exitCurrentTestMode() Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public exitDUTMode()I
    .locals 3

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 194
    const-string v1, "BluetoothTestMode"

    const-string v1, "exitDUTMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->exitDUTMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public exitTestMode()I
    .locals 3

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 142
    const-string v1, "BluetoothTestMode"

    const-string v1, "exitTestMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->exitTestMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTestMode()I
    .locals 3

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 153
    const-string v1, "BluetoothTestMode"

    const-string v1, "getTestMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->getTestMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setTraceLevel(BB)I
    .locals 4
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 163
    const-string v1, "BluetoothTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTraceLevel( layer_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->setTraceLevel(BB)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v1, -0x1

    goto :goto_0
.end method
